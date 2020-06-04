package com.Stackery.web;

import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class evaluateCourse extends HttpServlet {
    private String Cookie = null;
    public evaluateCourse(){

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String cookie = request.getParameter("cookie");
//        System.out.println(cookie);
//        Map<String,Object> headers = new HashMap<>();
//        headers.put("Origin","http://202.115.47.141");
//        headers.put("Host","202.115.47.141");
//        headers.put("Referer","http://202.115.47.141/student/teachingEvaluation/evaluation/index");
//        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
//        headers.put("Cookie",cookie);
//        String result = Requests.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/search").headers(headers).send().readToText();
//        PrintWriter out = response.getWriter();
//        out.print(result);
//        out.close();
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies) {
            if (cookie.getName().equals("MYJSESSIONID")){
                Cookie = "JSESSIONID=" + cookie.getValue()+";";
                break;
            }

        }
        String param = request.getParameter("myValue");
        System.out.println(param);
        String[] temp = param.split(";");
        Map<String,Object> headers = new HashMap<>();
        headers.put("Origin","http://202.115.47.141");
        headers.put("Host","202.115.47.141");
        headers.put("Referer","http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
        headers.put("Cookie",Cookie);
        Session session = Requests.session();
        Map params = new HashMap<>();
        System.out.println(temp[0]);
        params.put("tokenValue",temp[0]);
        params.put("questionnaireCode",temp[1]);
        params.put("evaluationContentNumber",temp[2]);
        params.put("evaluatedPeopleNumber",temp[3]);
        params.put("count","0");
        if(temp[4].contains("课堂教学")){
            params.put("0000000159","10_1");
            params.put("0000000160","10_1");
            params.put("0000000161","10_1");
            params.put("0000000162","10_1");
            params.put("0000000163","10_1");
            params.put("0000000164","10_1");
            params.put("0000000165","10_1");
        }else {
            params.put("0000000166","10_1");
            params.put("0000000167","10_1");
            params.put("0000000168","10_1");
            params.put("0000000169","10_1");
            params.put("0000000170","10_1");
            params.put("0000000171","10_1");
            params.put("0000000172","10_1");
        }
        params.put("zgpj","这位老师很棒");
        String a = session.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluation").headers(headers).body(params).send().readToText();
        PrintWriter out = response.getWriter();
        out.print(a);
        out.close();
    }

//    public static void main(String[] args) {
//        Map<String,Object> headers = new HashMap<>();
//        headers.put("Origin","http://202.115.47.141");
//        headers.put("Host","202.115.47.141");
//        headers.put("Referer","http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage");
//        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
//        headers.put("Cookie","JSESSIONID=cdbzjfz6AOa1a5ktCCWix;");
//        Map params = new HashMap<>();
//        params.put("tokenValue","df6e66bdb5b4e91c0dff955c4003a423");
//        params.put("questionnaireCode","0000000097");
//        params.put("evaluationContentNumber","900001010");
//        params.put("evaluatedPeopleNumber","81036634");
//        params.put("count","0");
//        params.put("0000000159","10_1");
//        params.put("0000000160","10_1");
//        params.put("0000000161","10_1");
//        params.put("0000000162","10_1");
//        params.put("0000000163","10_1");
//        params.put("0000000164","10_1");
//        params.put("0000000165","10_1");
//        params.put("zgpj","很喜欢老师");
//        String a = Requests.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluation").headers(headers).body(params).send().readToText();
//        System.out.println(a);
//
//
//    }
}
