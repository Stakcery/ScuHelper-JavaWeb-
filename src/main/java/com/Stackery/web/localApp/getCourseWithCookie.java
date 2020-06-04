package com.Stackery.web.localApp;

import com.alibaba.fastjson.JSON;
import net.dongliu.requests.Requests;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class getCourseWithCookie extends HttpServlet {

    public getCourseWithCookie(){

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
        String url = "http://202.115.47.141/student/courseSelect/thisSemesterCurriculum/ajaxStudentSchedule/curr/callback";
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String Cookie = null;
        Cookie = request.getParameter("Cookie");
        headers.put("Cookie",Cookie);
        PrintWriter out = response.getWriter();
        String result = Requests.get(url).headers(headers).send().readToText();
        String resJSON = JSON.toJSONString(result);
        out.print(resJSON);
        out.close();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    public static void main(String[] args) {
        Map<String,Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
        String url = "http://202.115.47.141/student/courseSelect/thisSemesterCurriculum/ajaxStudentSchedule/curr/callback";
        String result = Requests.get(url).headers(headers).send().readToText();
        System.out.println(result);
    }
}
