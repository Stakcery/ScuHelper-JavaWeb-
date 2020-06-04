package com.Stackery.web;


import com.Stackery.utils.helper.CourseSelectHelper;
import com.alibaba.fastjson.JSON;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

public class selectCourse extends HttpServlet {
    private String Cookie = null;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String username = null;
        String password = null;
        for (Cookie cookie:cookies) {
            if (cookie.getName().equals("username")){
                username = URLDecoder.decode(cookie.getValue(),"utf-8");
            }else if (cookie.getName().equals("password")){
                password = URLDecoder.decode(cookie.getValue(),"utf-8");
            }else if (cookie.getName().equals("MYJSESSIONID")){
                Cookie = "JSESSIONID=" + cookie.getValue();
            }else if(cookie.getName().equals("SPRING_SECURITY_REMEMBER_ME_COOKIE")){
                Cookie += ";"+"SPRING_SECURITY_REMEMBER_ME_COOKIE"+cookie.getValue()+ ";" ;
            }

        }
        int status = 0;
        boolean res = false;
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String kcm =request.getParameter("kcm");
        String kxh = request.getParameter("kxh");
        PrintWriter out = response.getWriter();
        if ((kcm!=null&&kcm.length()!=0)&&(kxh!=null&&kxh.length()!=0)){
//            SessionManager x = new SessionManager(username,password,1);
//            x.canLogin();
            CourseSelectHelper a = new CourseSelectHelper(this.Cookie);
            System.out.println(this.Cookie);
            a.getTermInfo();
            a.getCollegeInformation();
            a.get_course_info(kcm,kxh);
            try {
                a.get_token();
                status = 1;
            }catch (Exception e){
                res = false;
            }
            if(status==1){
                res = true;
                a.course_select();
                a.result_search(username);
            }
            Map<String,Object> subMap = new HashMap<>();
            subMap.put("selectName",kcm);
            subMap.put("selectNumber",kxh);
            subMap.put("thisStatus",status);
            if (status!=1){
                subMap.put("原因","学校选课系统还未开放请耐心等待");
            }
            String resJSON = JSON.toJSONString(subMap);
            out.print(resJSON);
            out.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
