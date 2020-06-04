package com.Stackery.utils.login;

import com.Stackery.MyConstant;
import com.Stackery.utils.Crypto;
import net.dongliu.requests.Cookie;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;


import java.io.*;
import java.util.*;


public class TeachingManagerLogin  extends AbstractLogin implements Serializable {
    private static final long serialVersionUID = 2722450384911750454L;
    private String username;
    private String password;
    private Session session;
    private String captcha_value;
    private String name;
    private Map cookie = new HashMap();
    protected static Map<String, Object> headers = new HashMap<>();
    private Map classesCenterParams = new HashMap<>();


    public TeachingManagerLogin(String username, String password){
        setSession(Requests.session());
        setUsername(username);
        setPassword(new Crypto(password).stringMD5());
    }

    public TeachingManagerLogin(String username, String password, Session session){
        if(session == null){
            this.session = Requests.session();
        }
        setSession(session);
        setUsername(username);
        setPassword(new Crypto(password).stringMD5());
    }

    /**
     * 获取cookie便于持久化登录
     * @return cookie
     */
    // TODO 完善本函数
    public Map getCookie() {
        return this.cookie;
    }

    /**
     * 执行登录过程
     * @return bool类型参数
     */
    @Override
    public boolean isLogin() {
        Random rand = new Random();
        String get_url = "http://202.115.47.141/img/captcha.jpg" + '?' + rand.nextInt(100);
        cookieGet();
        CaptchaRecognize captcha = new CaptchaRecognize(this.session,get_url,"http://202.115.47.141/login?errorCode=badCaptcha");
        this.captcha_value = captcha.getPictureResult();
        if(canLogin()){
            System.out.println("登陆成功");
            System.out.println("------------------------------------我是分界线--------------------------------------------");
            return true;
        }else{
            System.out.println("登陆失败，请检查用户名和密码是否正确");
            System.out.println("------------------------------------我是分界线--------------------------------------------");
            return false;
        }

    }

    public boolean canLogin(){
        Map params = new HashMap<>();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Host", "zhjw.scu.edu.cn");
        headers.put("Origin","http://zhjw.scu.edu.cn");
        params.put("j_username", username);
        params.put("j_password", password);
        params.put("j_captcha", captcha_value);
        params.put("_spring_security_remember_me","on");
        System.out.println("正在登录教务处，请稍候");
        String result2  = session.post(MyConstant.EDUCATION_CHECK_URL)
                .body(params)
                .headers(headers)
                .send()
                .readToText()
                ;
        cookie.put("JSESSIONID",session.currentCookies().get(0).value());
        if(result2.contains("URP")){
            cookie.put("JSESSIONID",session.currentCookies().get(0).value());
            cookie.put("SPRING_SECURITY_REMEMBER_ME_COOKIE",session.currentCookies().get(1).value());
//            System.out.println(cookie);
            Document document =  Jsoup.parse(result2);
            Elements link =  document.getElementsByClass("user-info");
            String result3 = link.text();
            setName(result3.substring(5));
            return true;
        }else {
            return false;
        }

    }
    @Override
    public void ObjectSerializationFileInput() {
        String filepath = System.getProperty("user.dir") + "/src/main/java/Assistant/serializationInfo/TeachingManagerLogin.info";
        File file = new File(filepath);
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

    /**
     * 利用cas认证绕过验证码登录
     * @return bool类型参数
     */
    public boolean loginByCas(){
        classesCenterParams.put("Login.Token1", username);
        classesCenterParams.put("Login.Token2", "245574");
        headers.put("Referer","http://my.scu.edu.cn/");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.75 Safari/537.36");
        headers.put("Connection","keep-alive");
        headers.put("Host","my.scu.edu.cn");
        RawResponse rawResponse = session.get("http://my.scu.edu.cn/userPasswordValidate.portal")
                .body(classesCenterParams)
                .send();
        if(rawResponse.readToText().contains("Successed")){
            System.out.println(rawResponse.readToText());
        }
        return true;
    }

    // getter与setter方法
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

    @Override
    public Session getSession() {
        return session;
    }

    @Override
    public void setSession(Session session) {
        this.session = session;
    }

    public List<Cookie> cookieGet(){
        String url = "http://202.115.47.141";
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login?errorCode=badCaptcha");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        Map params = new HashMap<>();
        RawResponse result = this.session.get(url)
                .headers(headers)
                .send();
        return result.cookies();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static void main(String[] args) {
        TeachingManagerLogin login = new TeachingManagerLogin(MyConstant.USERNAME, MyConstant.PASSWORD,Requests.session());
        login.isLogin();
//        login.loginByCas();
        System.out.println(login.getCookie());
    }
}
