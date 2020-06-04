package com.Stackery.web.localApp;

import com.alibaba.fastjson.JSON;
import net.dongliu.requests.Requests;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class getSectionAndTimeWithCookie extends HttpServlet {
    public getSectionAndTimeWithCookie(){

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String,Object> headers = new HashMap<>();
        headers.put("Origin","http://202.115.47.141");
        headers.put("Host","202.115.47.141");
        headers.put("Referer","http://202.115.47.141/student/courseSelect/thisSemesterCurriculum/index");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
        String url = "http://202.115.47.141/ajax/getSectionAndTime";
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String Cookie = null;
        Cookie = request.getParameter("Cookie");
        headers.put("Cookie",Cookie);
        PrintWriter out = response.getWriter();
        Map params = new HashMap();
        String plan = request.getParameter("planNumber");
        String f = request.getParameter("ff");
        params.put("planNumber","");
        params.put("ff",f);
        String result = Requests.post(url).headers(headers).body(params).send().readToText();
        String resJSON = JSON.toJSONString(result);
        out.print(resJSON);
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    public static void main(String[] args) {
        Map<String,Object> headers = new HashMap<>();
        headers.put("Origin","http://202.115.47.141");
        headers.put("Host","202.115.47.141");
        headers.put("Referer","http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.77");
        headers.put("Cookie","JSESSIONID=cdaluAMKdphrChugEAVix;SPRING_SECURITY_REMEMBER_ME_COOKIE=OG45c0JZWXVFZTNRZFlFUjBGVFpsdz09OnJVUktTSytNMEwyR0YwclVYYVpPTmc9PQ; selectionBar=12580302");
        Map params = new HashMap<>();
        params.put("evaluatedPeople","黄诚");
        params.put("evaluatedPeopleNumber","20182008");
        params.put("questionnaireCode","0000000097");
        params.put("questionnaireName","学生评教（课堂教学）");
        params.put("evaluationContentNumber","314064030");
        params.put("evaluationContentContent","");
        String a = Requests.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage").headers(headers).body(params).send().readToText();
        Document document = Jsoup.parse(a);
        String tokenValue = document.getElementById("tokenValue").attr("value");
        Elements elements = document.getElementsByAttribute("value");
        String questionnaireCode = elements.get(4).attr("value");
        String evaluationContentNumber = elements.get(5).attr("value");
        String evaluatedPeopleNumber = elements.get(6).attr("value");
        System.out.println(tokenValue);
        System.out.println(questionnaireCode);
        System.out.println(evaluationContentNumber);
        System.out.println(evaluatedPeopleNumber);
//        <input type="hidden" name="tokenValue" id="tokenValue" value="2002bfe6f85a7316925f07c43b16b7bd">
//<input type="hidden" name="questionnaireCode" value="0000000097">
//<input type="hidden" name="evaluationContentNumber" value="314064030">
//<input type="hidden" name="evaluatedPeopleNumber" value="20182008">
    }
}
