package com.Stackery.utils.helper;




import com.Stackery.utils.GetLocation;
import com.Stackery.utils.SendEmail;
import com.Stackery.utils.SendWeChat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.Stackery.MyConstant;
import com.Stackery.utils.login.SuperStarLearningLogin;
import net.dongliu.requests.RawResponse;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.util.HashMap;
import java.util.Map;

public class SuperStarHelper extends AbstractCheckIn {
    private Session session;
    private String cookie;
    private String UID;
    private String longitude;
    private String latitude;
    private SendEmail sendEmail;
    private SendWeChat sendWeChat;
    private String address = "四川省成都市双流区四川大学江安校区";
    private int requestSpeed = 10;
    private GetLocation getLocation;

    /**
     * 带Session的构造方法
     * @param session
     */
    public SuperStarHelper(Session session){
        super();
        setSession(session);
    }

    /**
     * 带cookie的构造方法
     * @param cookie
     */
    public SuperStarHelper(String cookie){
        super();
        setCookie(cookie);
        setSession(Requests.session());
    }

    /**
     * 获取上传图片用的token方法
     * @return
     */
    public String getPictureToken(){
        Map<String,Object> headers = new HashMap<>();
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36");
        String url = MyConstant.GET_UPLOAD_PICTURE_TOKEN_URL;
        RawResponse rawResponse = this.session.get(url).headers(headers).send();
        String result = rawResponse.readToText();
        JSONObject jsonObject = JSON.parseObject(result);
        return jsonObject.getString("_token");
    }

    /**
     * 图片签到的方法
     */
    public void uploadPicture(){
        String url = MyConstant.UPLOAD_PICTURE_URL;
        Map params = new HashMap();
        String postData = "";

    }

    public void getLocationInfo(){
        getLocation = new GetLocation("四川省成都市双流区四川大学江安校区");
        getLocation.getCoordinate();
        setLatitude(getLocation.getLatitude());
        setLongitude(getLocation.getLongitude());
    }
    /**
     * 查找签到任务的方法
     */
    public void findSingTask(){

    }

    /**
     * 获取用于签到的重要参数activePrimaryId的方法
     * @return
     */
    public String getActivePrimaryId(){
        return  "";
    }

    /**
     * 执行签到的方法
     */
    @Override
    public void operateCheckIn() {

    }

    //一系列getter和setter方法
    @Override
    public Session getSession() {
        return session;
    }

    @Override
    public void setSession(Session session) {
        this.session = session;
    }

    @Override
    public String getCookie() {
        return cookie;
    }

    @Override
    public void setCookie(String cookie) {
        this.cookie = cookie;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    // test
    public static void main(String[] args) {
        Session session = Requests.session();
        SuperStarLearningLogin a = new SuperStarLearningLogin(MyConstant.USERNAME_CX,MyConstant.PASSWORD_CX,session);
        a.isLogin();
        System.out.println(a.getUid());
        SuperStarHelper b = new SuperStarHelper(session);
        b.getPictureToken();
        b.getLocationInfo();
    }

}
