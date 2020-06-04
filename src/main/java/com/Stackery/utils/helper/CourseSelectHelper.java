package com.Stackery.utils.helper;

import com.Stackery.MyConstant;
import com.Stackery.utils.MyTools;
import com.Stackery.utils.SendEmail;
import com.Stackery.utils.SendWeChat;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.Stackery.utils.login.TeachingManagerLogin;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.util.HashMap;
import java.util.Map;

/**
 * 实现抢课功能的类
 * 为了保持抢课参数传入方便，遵循教务处命名规则
 */
public class CourseSelectHelper {
    private Session session;
    private String kcms;
    private int target_kexuhao;
    private int target_kechenghao;
    private String kcIds;
    private String tokenValue;
    private String fajhh;
    private String target_class;
    private String term = "2019-2020-2-1"; //zxjxjhh=2019-2020-2-1
    private String Cookie;
    private Map<String, Object> headers = new HashMap<>();
    private Map<String, Object> courseInfo = new HashMap<>();
    private SendEmail sendEmail;
    private SendWeChat sendWeChat;


    public CourseSelectHelper(Session session){
        setSession(session);
    }
    public CourseSelectHelper(String Cookie){
        Map<String, Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login");
        headers.put("Cookie",Cookie);
        Session session = Requests.session();
        RawResponse rawResponse = session.get("http://202.115.47.141/student/integratedQuery/scoreQuery/thisTermScores/data")
                .headers(headers)
                .send();
        this.Cookie = Cookie;
        setSession(session);

    }

    /**
     *获取token信息
     */
    public void get_token(){

        String url_token = "http://zhjw.scu.edu.cn/student/courseSelect/courseSelect/index";//  拿token的地方
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers.put("Cookie",this.Cookie);
        }
//        while(true){
//            try{
//                String result = this.session.get(url_token).headers(headers).send().readToText();
//                Document doc = Jsoup.parse(result);//解析HTML字符串返回一个Document实现
//                Element link = doc.select("#tokenValue").first();//查找第一个a元素
//                String linkText = link.attr("value");
//                System.out.println(linkText);
//                courseInfo.put("tokenValue",linkText);
//                break;
//            }catch (Exception e){
//                System.out.println("选课接口还未打开请耐心等待");
//                try {
//                    Thread.sleep(10); //1000 毫秒，也就是1秒.
//                } catch(InterruptedException ex) {
//                    Thread.currentThread().interrupt();
//                }
//            }
//        }
        String result = this.session.get(url_token).headers(headers).send().readToText();
        Document doc = Jsoup.parse(result);//解析HTML字符串返回一个Document实现
        Element link = doc.select("#tokenValue").first();//查找第一个a元素
        String linkText = link.attr("value");
        System.out.println(linkText);
        courseInfo.put("tokenValue",linkText);

    }
    /**
     * 获取抢课所需必要参数
     */
    // TODO 采用文件读写方式获取课程信息
    public void get_course_info(String kcm,String kxh){
        courseInfo.put("dealType",5);
//        Scanner in = new Scanner(System.in);
//        System.out.println("请输入目标课程完整名称：");
        String kcmc = kcm;
        target_class = kcmc;
//        System.out.println("请输入目标课程完整课程号+课序号（用_连接）：");
        String kch = kxh;
        String target_kechenghao_kexuhao = kch;
        // 得到课程号参数与课序号
        String[] temp = kch.split("_");
        target_kechenghao = Integer.parseInt(temp[0]);
        courseInfo.put("target_kechenghao",Integer.parseInt(temp[1]));
        target_kexuhao = Integer.parseInt(temp[1]);
        courseInfo.put("target_kexuhao",Integer.parseInt(temp[1]));
        kcIds = target_kechenghao_kexuhao + '_' + term;
        String kcms_ = target_class + '_' + target_kexuhao;
        courseInfo.put("kcIds",kcIds);
        kcms = "";
        for(int i=0;i < kcms_.length();i++){
            // 字符串转换为ASCII码
            kcms += ((int) kcms_.charAt(i)+",");
        }
        courseInfo.put("kcms",kcms);
        courseInfo.put("fajhh",5519);
        courseInfo.put("sj","0_0");
        courseInfo.put("searchtj",kcmc);
        courseInfo.put("kclbdm","");
        courseInfo.put("inputCode","");
        System.out.println(courseInfo.get("dealType"));
        System.out.println(courseInfo.get("kcIds"));
        System.out.println(courseInfo.get("kcms"));
        System.out.println(courseInfo.get("searchtj"));

    }

    /**
     * 获取当前学期信息
     */
    public void getTermInfo(){
        String url = "http://202.115.47.141/main/academicInfo";
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers.put("Referer","http://202.115.47.141/login");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers.put("Cookie",this.Cookie);
        }
        String result = this.session.get(url).headers(headers).send().readToText();
        Document doc = Jsoup.parse(result);//解析HTML字符串返回一个Document实现
        Element link = doc.select("#page-content-template").first();//查找第一个a元素
        String linkText = link.text();
        JSONArray array =JSONArray.parseArray(linkText);
        JSONObject obj = array.getJSONObject(0);
        term = obj.getString("zxjxjhh");
        System.out.println(term);
    }

    /**
     * 获取学院对应的编号
     */
    public void getCollegeInformation(){
        courseInfo.put("fajhh",5519);
    }

    /**
     * 选择课程的方法
     */
    public void course_select(){
        String url_SelectCourse = "http://202.115.47.141/student/courseSelect/freeCourse/courseList";  // 自由选课界面
        String url_select = "http://202.115.47.141/student/courseSelect/selectCourse/checkInputCodeAndSubmit";  // 向这个页面post，即选课
        headers.put("Referer","http://202.115.47.141/student/courseSelect/freeCourse/index");
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers.put("Cookie",this.Cookie);
        }
        Map params = new HashMap<>();
        params.put("searchtj",target_class);
        params.put("xq","0");
        params.put("jc","0");
        params.put("kclbdm","");
        Map params_for_select = new HashMap<>();
        params_for_select.put("dealType",courseInfo.get("dealType"));
        params_for_select.put("kcIds",courseInfo.get("kcIds"));
        params_for_select.put("kcms",courseInfo.get("kcms"));
        params_for_select.put("fajhh",courseInfo.get("fajhh"));
        params_for_select.put("sj",courseInfo.get("sj"));
        params_for_select.put("searchtj",courseInfo.get("kcIds"));
        params_for_select.put("kclbdm","");
        params_for_select.put("inputCode","");
        params_for_select.put("tokenValue",courseInfo.get("tokenValue"));
        Map<String, Object> headers2 = new HashMap<>();
        headers2.put("Host","202.115.47.141");
        headers2.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        headers2.put("Referer","http://202.115.47.141/login?errorCode=badCaptcha");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers2.put("Cookie",this.Cookie);
        }
        String result = session.post(url_SelectCourse).body(params).headers(headers).send().readToText();
        JSONArray arr = JSONObject.parseObject(result).getJSONArray("rwRxkZlList");
        Map<String, Object> headers3 = new HashMap<>();
        headers3.put("Host","202.115.47.141");
        headers3.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers3.put("Cookie",this.Cookie);
        }
        int kerongliang = 0;
        for (int i =0;i<arr.size();i++) {
            JSONObject obj = arr.getJSONObject(i);
            int kechenghao = obj.getIntValue("kch");
            int kexuhao = obj.getIntValue("kxh");
            if (kechenghao == target_kechenghao & kexuhao == target_kexuhao) {
                kerongliang = obj.getIntValue("bkskrl");
                break;
            }
            String url = "http://202.115.47.141/student/courseSelect/selectCourse/viewXkCount/"
                    +fajhh+"/"+target_kechenghao+"/"+target_kexuhao;
            while (true){
                try{
                    int number = Integer.parseInt(session.get(url).headers(headers3)
                            .send().readToText());
                    if(number < kerongliang){
                        for (int j = 0; j < 5; j++) {
                            String res = session.post(url_select).headers(headers2).body(params_for_select).send().readToText();
                            System.out.println(res);
                            System.out.println("选课成功,等待脚本运行完毕请登录检查");
                            try {
                                Thread.sleep(100);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            break;
                        }
                    }
                }catch (Exception e){
                    System.out.println("暂时出错了，但问题不大,因为你网刚刚不好了一下");
                    try {
                        Thread.sleep(300);
                    } catch (InterruptedException ex) {
                        ex.printStackTrace();
                    }
                }
            }

        }

    }


    /**
     * 查询是否选课成功的方法
     * @param number
     */
    public void result_search(String number){
        String url_query = "http://202.115.47.141/student/courseSelect/selectResult/query";
        headers.put("Referer","http://202.115.47.141/student/courseSelect/selectCourses/waitingfor");
        headers.put("Host","202.115.47.141");
        if (this.Cookie!=null&&this.Cookie.length()!=0){
            headers.put("Cookie",this.Cookie);
        }
        Map params = new HashMap<>();
        params.put("kcNum","1");
        params.put("redisKey",number+"5");
        System.out.println("正在查询选课结果");
        String result = session.post(url_query).body(params).headers(headers).send().readToText();
        String info = "";
        if(result.contains("选课成功")){
            System.out.println(result);
            info = "课程："+ target_class + "选课成功";
        }else {
            info = "课程："+ target_class + "选课成功";
        }
        MyTools.sendMessageToWeChat(info);

    }
    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public static void main(String[] args) {
        TeachingManagerLogin teachingManagerLogin = new TeachingManagerLogin(MyConstant.USERNAME,MyConstant.PASSWORD);
        teachingManagerLogin.isLogin();
        CourseSelectHelper a = new CourseSelectHelper(teachingManagerLogin.getSession());
        a.getTermInfo();
        a.getCollegeInformation();
//        a.get_course_info();
        while (true){
            try {
                a.get_token();
                break;
            }catch (Exception e){
                System.out.println("选课接口未打开请耐心等待");
            }
        }
        a.course_select();
        a.result_search(MyConstant.USERNAME);
    }

}
