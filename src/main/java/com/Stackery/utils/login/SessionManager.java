package com.Stackery.utils.login;


import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;
import com.Stackery.MyConstant;
import java.util.Map;



/**
 * 本类用来操作所有与四川大学相关API的Session信息
 */
public class SessionManager {
    private String username;
    private String password;
    private Session JWC_Session;
    private Map JWC_Cookie;
    private Map MS_Cookie;
    private int mode;
    private Session SPS_session;
    private String name;

    /**
     * 通过mode参数来实现不同账号的登录
     * @param username
     * @param password
     * @param mode
     */
    public SessionManager(String username, String password, int mode){
        setUsername(username);
        setPassword(password);
        this.mode = mode;
    }

    /**
     * 根据模式选择判断是否能成功登录
     * @return bool类型
     */
    public boolean canLogin(){
        boolean status = false;
        if(mode == 1){
            status = getTeachingManagerSession();
        }else if(mode == 2){
            status =getMicroServiceSession();;
        }else if(mode ==3){
            status = getSuperStarLearningSession();
        }
        return status;
    }
    /**
     * 实现教务处登录管理函数
     * @return bool类型
     */
    public boolean getTeachingManagerSession(){
        boolean status = false;
        TeachingManagerLogin obj =  new TeachingManagerLogin(username,password);
        if(obj.isLogin()){
            JWC_Session = obj.getSession();
            setJWC_Cookie(obj.getCookie());
            setName(obj.getName());
            status =  true;
        }
        return status;
    }

    /**
     * 实现微服务登录管理函数
     * @return bool类型
     */
    public boolean getMicroServiceSession(){
        boolean status = false;
        MicroServiceLogin obj = new MicroServiceLogin(username,password);
        if(obj.isLogin()){
            MS_Cookie = obj.getCookie();
            System.out.println(getMS_Cookie());
            status = true;
        }

        return status;


    }

    public boolean getSuperStarLearningSession(){
        boolean status = false;
        SPS_session = Requests.session();
        SuperStarLearningLogin obj = new SuperStarLearningLogin(username,password,SPS_session);
        if(obj.isLogin()){
            MS_Cookie = obj.getCookie();
            System.out.println(getMS_Cookie());
            status = true;
        }

        return status;


    }

    // 一系列的getter和setter方法
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

    public Session getJWC_Session() {
        return JWC_Session;
    }

    public void setJWC_Session(Session JWC_Session) {
        this.JWC_Session = JWC_Session;
    }

    public Map getMS_Cookie() {
        return MS_Cookie;
    }

    public void setMS_Cookie(Map MS_Cookie) {
        this.MS_Cookie = MS_Cookie;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map getJWC_Cookie() {
        return JWC_Cookie;
    }

    public void setJWC_Cookie(Map JWC_Cookie) {
        this.JWC_Cookie = JWC_Cookie;
    }

    //test
    public static void main(String[] args) {
        SessionManager sessionManager = new SessionManager(MyConstant.USERNAME,MyConstant.PASSWORD,1);
        sessionManager.canLogin();
        System.out.println(sessionManager.getJWC_Cookie());
    }
}
