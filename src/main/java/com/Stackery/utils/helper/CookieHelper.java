package com.Stackery.utils.helper;

import com.Stackery.utils.login.SessionManager;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.util.HashMap;
import java.util.Map;

public class CookieHelper {
    private String Cookie = null;
    private String username = null;
    private String password = null;

    public CookieHelper(String username,String password,String Cookie){
        setUsername(username);
        setPassword(password);
        setCookie(Cookie);
    }

    public boolean isValid(){
        boolean status = false;
        Map<String, Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login?errorCode=badCaptcha");
        headers.put("Cookie",Cookie);
        Session session = Requests.session();
        String rawResponse = session.get("http://202.115.47.141/main/queryWarningInfo")
                .headers(headers)
                .send().readToText();
        try {
            JSONObject jsonObject = JSON.parseObject(rawResponse);
            status = true;
        } catch (Exception e) {
            status = false;
        }
        return status;
    }

    public boolean updateCookie(){
        SessionManager sessionManager = new SessionManager(username,password,1);
        for (int i=0;i<3;i++){
            if (sessionManager.canLogin()){
                String cookie1 = (String) sessionManager.getJWC_Cookie().get("JSESSIONID");
                String cookie2 = (String) sessionManager.getJWC_Cookie().get("SPRING_SECURITY_REMEMBER_ME_COOKIE");
                setCookie("JSESSIONID="+cookie1+";SPRING_SECURITY_REMEMBER_ME_COOKIE="+cookie2+";");
                System.out.println(sessionManager.getName());
                return true;
            }
        }
        return false;

    }

    public String getCookie() {
        return Cookie;
    }

    public void setCookie(String cookie) {
        Cookie = cookie;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //test
    public static void main(String[] args) {
        String cookie = "JSESSIONID=abcuZNmneVxxP_gU9K-ix;SPRING_SECURITY_REMEMBER_ME_COOKIE=VjJoeGxoSTZWb1BqWkVtODhYMDNKZz09OjhXaUVYVmJFLzl0WjhRNmZZam1PY2c9PQ;";
        new CookieHelper("2019141530103","245574",cookie).updateCookie();
    }
}
