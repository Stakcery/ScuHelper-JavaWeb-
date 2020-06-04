package com.Stackery.utils.helper;

import com.Stackery.MyConstant;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.Stackery.utils.login.SessionManager;
import com.Stackery.utils.login.TeachingManagerLogin;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.util.*;

/**
 * 成绩类
 */
public class GradesHelper {
    private Session session;
    private String username;
    private String password;
    private String GPA = null;
    private String cookie = null;
    private String courseNum = null;

    public GradesHelper(Session session){
        setSession(session);
    }

    public GradesHelper(String cookie){
        Map<String, Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login");
        headers.put("Cookie",cookie);
        Session session = Requests.session();
        RawResponse rawResponse = session.get("http://202.115.47.141/student/integratedQuery/scoreQuery/thisTermScores/data")
                .headers(headers)
                .send();
        this.cookie = cookie;
        setSession(session);
    }

    public GradesHelper(String username,String password){
        setUsername(username);
        setPassword(password);
        setSession(Requests.session());
        TeachingManagerLogin login = new TeachingManagerLogin(username,password,session);
        login.isLogin();
        setSession(login.getSession());
    }

    public GradesHelper(String username,String password,Session session){
        setUsername(username);
        setPassword(password);
        setSession(session);
        TeachingManagerLogin login = new TeachingManagerLogin(username,password,session);
        login.isLogin();
        setSession(login.getSession());
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
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

    public void setGPA(String GPA) {
        this.GPA = GPA;
    }

    public String getGPA() {
        return GPA;
    }

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.session = Requests.session();
        this.cookie = cookie;
    }

    public String getCourseNum() {
        return courseNum;
    }

    public void setCourseNum(String courseNum) {
        this.courseNum = courseNum;
    }

    public void scoresSearch(){
        Map<String ,Object> headers = new HashMap<>();
        String url = MyConstant.EDUCATION_GRADES_URL;
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login?errorCode=badCaptcha");
        if (cookie!=null){
            headers.put("Cookie",cookie);
        }
        String json = session.get(url)
                .headers(headers)
                .send()
                .readToText();
        JSONObject jsonData = JSONObject.parseObject(json);
        JSONArray scoreInfo = jsonData.getJSONObject("list").getJSONArray("records");
        String result = session.get("http://202.115.47.141/main/academicInfo")
                .headers(headers)
                .send()
                .readToText();
        Document doc = Jsoup.parse(result);//解析HTML字符串返回一个Document实现
        Element link = doc.select("#page-content-template").first();//查找第一个a元素
        String linkText = link.text();
        JSONArray array =JSONArray.parseArray(linkText);
        JSONObject obj = array.getJSONObject(0);
        String GPA = obj.getString("gpa");
        System.out.println(obj.getString("zxjxjhh"));
        System.out.printf("你的GPA为：%s\n下面打印详细成绩信息",GPA);
        for(int i = 0;i < scoreInfo.size();i++){
            System.out.printf("时间：%s 分数：%s 类别：%s 等级：%-2s 学分：%s 科目名称：%s\n"
                    ,scoreInfo.getJSONArray(i).getString(0)
                    ,scoreInfo.getJSONArray(i).getString(8)
                    ,scoreInfo.getJSONArray(i).getString(15)
                    ,scoreInfo.getJSONArray(i).getString(17)
                    ,scoreInfo.getJSONArray(i).getString(13)
                    ,scoreInfo.getJSONArray(i).getString(11));
            if(i==scoreInfo.size()-1){
                System.out.println("------------------------------------我是分界线--------------------------------------------");
            }
        }

    }

    public List<ArrayList> scoresInfo(){
        Map<String ,Object> headers = new HashMap<>();
        String url = MyConstant.EDUCATION_GRADES_URL;
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login?errorCode=badCaptcha");
        if (this.cookie!=null&&this.cookie.length()!=0){
            headers.put("Cookie",this.cookie);
        }
        String json = session.get(url)
                .headers(headers)
                .send()
                .readToText();
        JSONObject jsonData = JSONObject.parseObject(json);
        JSONArray scoreInfo = jsonData.getJSONArray("lnList");
        JSONObject jsonObject = scoreInfo.getJSONObject(0);
        scoreInfo = jsonObject.getJSONArray("cjList");
        List<ArrayList> arrayListList = new ArrayList<>();
        for (int i = 0; i < scoreInfo.size(); i++) {
            jsonObject = (JSONObject) scoreInfo.get(i);
            String time = jsonObject.getJSONObject("id").getString("executiveEducationPlanNumber");
            String courseName = jsonObject.getString("courseName");
            String credit = jsonObject.getString("credit");
            String courseAttributeName = jsonObject.getString("courseAttributeName");
            String courseScore = jsonObject.getString("courseScore").substring(0,2);
            String gradeName = jsonObject.getString("gradeName");
            String gradePointScore = jsonObject.getString("gradePointScore");
            List<String> list = new ArrayList<>();
            list.add(time);
            list.add(courseName);
            list.add(credit);
            list.add(courseAttributeName);
            list.add(courseScore);
            list.add(gradeName);
            list.add(gradePointScore);
            arrayListList.add((ArrayList) list);

        }
        String result = session.get("http://202.115.47.141/main/academicInfo")
                .headers(headers)
                .send()
                .readToText();
        Document doc = Jsoup.parse(result);//解析HTML字符串返回一个Document实现
        Element link = doc.select("#page-content-template").first();//查找第一个a元素
        String linkText = link.text();
        JSONArray array =JSONArray.parseArray(linkText);
        JSONObject obj = array.getJSONObject(0);
        setGPA(obj.getString("gpa"));
        setCourseNum(obj.getString("courseNum"));
        return arrayListList;
    }


    //示例
    public static void main(String[] args) {
        Session session = null;
        SessionManager sessionManager = new SessionManager(MyConstant.USERNAME,MyConstant.PASSWORD,1);
        sessionManager.canLogin();
//        传入session即可
        session = sessionManager.getJWC_Session();
        GradesHelper a = new GradesHelper(session);
        //以下为获取GPA示例
        List<ArrayList> arrayLists = a.scoresInfo();
        Iterator<ArrayList> iterator = arrayLists.iterator();
        while (iterator.hasNext()){
            System.out.println(iterator.next());
        }
//        System.out.println(arrayLists.size());
//        System.out.println(a.getCourseNum());
//        System.out.println(a.getGPA());

    }

}
