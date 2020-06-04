package com.Stackery;

/**
 * @author Stakcery
 * 用来存放一些常量的类
 */
public class MyConstant {
    /**
     * 默认超时时间
     */
    public static final int DEFAULT_OUTTIME = 5000;

    /**
     * 教务系统相关API
     */
    //教务处登录
    public static final String EDUCATION_URL = "http://202.115.47.141";
    //教务处校验正确性
    public static final String EDUCATION_CHECK_URL = "http://202.115.47.141/j_spring_security_check";
    //教务处获取成绩
    public static final String EDUCATION_GRADES_URL = "http://202.115.47.141/student/integratedQuery/scoreQuery/allPassingScores/callback";
    //教务处获取当前学期信息
    public static final String THIS_TERM_URL = "http://202.115.47.141/student/integratedQuery/scoreQuery/thisTermScores/data";
    //教务处获取历年大创信息
    public static final String INNOVATION_URL = "https://sua.zhaoji.wang/api/v1/program/scu_uietp";
    //教务处CAS认证
    public static final String CAS_URL = "http://202.115.47.141/casLogin";

    /**
     * 打码平台相关API
     */
    //打码平台登录
    public static final String DISCRIMINATION_LOGIN_URL = "http://www.damagou.top/apiv1/login.html";
    //打码平台识别验证码
    public static final String DISCRIMINATION_RECOGNIZE_URL = "http://www.damagou.top/apiv1/recognize.html";
    /**
     * 四川大学课程中心相关API
     */
    public static final String CLASSES_CENTER_URL = "http://my.scu.edu.cn/userPasswordValidate.portal";
    /**
     * 微服务相关API
     */
    public static final String EVERYDAY_SUBMIT_URL = "https://wfw.scu.edu.cn/ncov/wap/default/save";
    public static final String MICROSERVICE_CHECK_URL = "https://wfw.scu.edu.cn/a_scu/api/sso/check";
    /**
     * 各种附加功能的URL
     */
    /**
     */
    public static final String SERVER_KEY = "SCU91986T045109fb52c851f41a9d5626cdd7456a5e82ff7a74527";
    public static final String USERNAME = "2019141530103";
    public static final String PASSWORD = "245574";
    /**
     * 超星学习通API
     */
    public static final String USERNAME_CX = "18328304665";
    public static final String PASSWORD_CX = "????";
    public static final String SUPER_STUDY_LOGIN_URL = "https://passport2-api.chaoxing.com/v11/loginregister";
    public static final String GET_UPLOAD_PICTURE_TOKEN_URL = "https://pan-yz.chaoxing.com/api/token/uservalid";
    public static final String UPLOAD_PICTURE_URL = "https://pan-yz.chaoxing.com/upload";

    /**
     *  SMTP默认配置区域
     */
    public static final String AUTH_CODE = "mixhkqoqgsziiaib";
    public static final String SEND_USER = "1078433422@qq.com";

    /**
     * 百度API AK
     */
    public static final String AK_VALUE = "Gy99R4ShwE1jhdUsbGkXjFP8wzMMboCF";




}
