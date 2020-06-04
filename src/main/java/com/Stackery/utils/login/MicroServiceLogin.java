package com.Stackery.utils.login;

import com.Stackery.MyConstant;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class MicroServiceLogin extends AbstractLogin implements Serializable {
    private static final long serialVersionUID = 8766516820521263731L;
    private String username;
    private String password;
    private Map cookie = new HashMap();
    private transient Session session;
    private Map<String,Object> headers = new HashMap<>();
    private Map params = new HashMap();

    /**
     * 不带session的构造方法
     * @param username
     * @param password
     */
    public MicroServiceLogin(String username, String password){
        this.username = username;
        this.password = password;
        setSession(Requests.session());
    }
    /**
     * 带session的构造方法
     * @param username
     * @param password
     * @param session
     */
    public MicroServiceLogin(String username, String password, Session session){
        this.username = username;
        this.password = password;
        this.session = session;
        if(session == null){
            this.session = Requests.session();
        }else {
            this.session = session;
        }

    }

    /**
     * 判断是否登录成功的方法
     * @return
     */
    @Override
    public boolean isLogin() {
        boolean status = false;
        params.put("username",this.username);
        params.put("password",this.password);
        params.put("redirect","https://wfw.scu.edu.cn/ncov/wap/default/index");
        headers.put("Referer","https://wfw.scu.edu.cn/site/polymerization/polymerizationLogin?redirect=https%3A%2F%2Fwfw.scu.edu.cn%2Fncov%2Fwap%2Fdefault%2Findex&from=wap");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Host","wfw.scu.edu.cn");
        headers.put("Origin","https://wfw.scu.edu.cn");
        RawResponse rawResponse = session.get(MyConstant.MICROSERVICE_CHECK_URL)
                .headers(headers)
                .body(params)
                .send();
        String cookieValue;
        try {
            cookieValue = rawResponse.getCookie("eai-sess").value();
        }catch (Exception e){
            return false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("eai-sess=");
        stringBuffer.append(rawResponse.getCookie("eai-sess").value());
        stringBuffer.append(";");
        cookie.put("eai-sess",cookieValue);
        JSONObject jsonObject = JSON.parseObject(rawResponse.readToText());
        String result = jsonObject.getString("m");
        if(result.contains("操作成功")){
            status = true;
        }
        return status;
    }


    /**
     * 将本类对象序列化的方法
     */
    @Override
    public void ObjectSerializationFileInput() {
        String filepath = System.getProperty("user.dir") + "/src/main/java/Assistant/serializationInfo/MicroServiceLogin.info";
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



    //test
    public static void main(String[] args) throws Exception {
        Session session = Requests.session();
        MicroServiceLogin a = new MicroServiceLogin(MyConstant.USERNAME, MyConstant.PASSWORD,session);
        System.out.println(a.isLogin());
        a.ObjectSerializationFileInput();
        System.out.println(a.getCookie());
    }

}
