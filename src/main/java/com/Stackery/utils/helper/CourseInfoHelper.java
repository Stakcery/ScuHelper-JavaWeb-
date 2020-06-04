package com.Stackery.utils.helper;

import com.Stackery.MyConstant;
import com.Stackery.utils.login.SessionManager;
import com.Stackery.utils.login.TeachingManagerLogin;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.util.HashMap;
import java.util.Map;

public class CourseInfoHelper {
    private Session session = Requests.session();
    public static Map<String, Object> headers = new HashMap<>();
    public CourseInfoHelper(Session session){
        setSession(session);
    }
    public CourseInfoHelper(String username,String password){
        TeachingManagerLogin teachingManagerLogin = new TeachingManagerLogin(username,password,session);
        teachingManagerLogin.isLogin();
        setSession(teachingManagerLogin.getSession());
    }

    public void getWebPageElement(){
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/index.jsp");
        headers.put("Host","202.115.47.141");
        RawResponse rawResponse = session.get("http://202.115.47.141/student/courseSelect/calendarSemesterCurriculum/index")
                .headers(headers)
                .send();
//        JSONArray jsonArray = JSON.parseObject(rawResponse.readToText()).getJSONArray("xkxx");
//        System.out.println(jsonArray.getJSONObject(0).size());
        System.out.println(rawResponse.readToText());
    }
    public void setSession(Session session) {
        this.session = session;
    }

    public Session getSession() {
        return session;
    }

    public static void main(String[] args) {
        Session session = null;
        SessionManager sessionManager = new SessionManager(MyConstant.USERNAME,MyConstant.PASSWORD,1);
        sessionManager.canLogin();
        session = sessionManager.getJWC_Session();
        CourseInfoHelper courseInfoHelper = new CourseInfoHelper(session);
        courseInfoHelper.getWebPageElement();
    }
}
