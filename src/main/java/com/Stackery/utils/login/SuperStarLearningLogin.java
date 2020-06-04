package com.Stackery.utils.login;

import com.Stackery.MyConstant;
import net.dongliu.requests.Cookie;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 超星学习通登录类
 */
public class SuperStarLearningLogin extends AbstractLogin implements Serializable {
    private static final long serialVersionUID = 4227220143673032669L;
    private String username;
    private String password;
    private String uid;
    private Map cookie = new HashMap();
    private transient Session session;
    private Map<String,Object> headers = new HashMap<>();
    private Map params = new HashMap();

    /**
     * 构造方法
     * @param username
     * @param password
     */
    public SuperStarLearningLogin(String username, String password){
        setUsername(username);
        setPassword(password);
        setSession(Requests.session());
    }

    /**
     * 带session状态的构造方法
     * @param username
     * @param password
     * @param session
     */
    public SuperStarLearningLogin(String username, String password, Session session){
        setUsername(username);
        setPassword(password);
        setSession(session);
    }

    @Override
    public boolean isLogin() {
        boolean status = false;
        params.put("uname",username);
        params.put("code",password);
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36");
        String result = session.post(MyConstant.SUPER_STUDY_LOGIN_URL).headers(headers).params(params).send().readToText();
        if(result.contains("true")){
            List<Cookie> currentCookies = session.currentCookies();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < currentCookies.size(); i++) {
                String name = currentCookies.get(i).name();
                stringBuffer.append(currentCookies.get(i).name()+"="+currentCookies.get(i).value()+";");
                cookie.put(currentCookies.get(i).name(),currentCookies.get(i).value());
                if (name.contains("UID")){
                    uid = session.currentCookies().get(i).value();
                    break;
                }
            }
            status = true;
        }else{
            status = false;
        }
        return status;
    }



    @Override
    public void ObjectSerializationFileInput() {
        String filepath = System.getProperty("user.dir") + "/src/main/java/Assistant/serializationInfo/SuperStarLearningLogin.info";
        File file= new File(filepath);
        if(!file.exists()){
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try (
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream);
        ){
            objectOutputStream.writeObject(this);
            fileOutputStream.close();
            objectOutputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e){
            e.printStackTrace();
        }
    }


    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public void setPassword(String password) {
        this.password = password;
    }

    public Map getCookie() {
        return cookie;
    }

    public void setCookie(Map cookie) {
        this.cookie = cookie;
    }

    @Override
    public Session getSession() {
        return session;
    }

    @Override
    public void setSession(Session session) {
        this.session = session;
    }

    public String getUid() {
        return uid;
    }

    //test
    public static void main(String[] args) {
        SuperStarLearningLogin a = new SuperStarLearningLogin(MyConstant.USERNAME_CX,MyConstant.PASSWORD_CX);
        a.isLogin();
        System.out.println(a.getUid());
        a.ObjectSerializationFileInput();
    }
}
