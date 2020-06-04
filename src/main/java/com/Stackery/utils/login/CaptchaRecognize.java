package com.Stackery.utils.login;

import com.Stackery.MyConstant;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

public class CaptchaRecognize {
    private Session dis_session;
    private String url;
    private String Referer;
    private Session session;

    public CaptchaRecognize(Session session,String url){
        this.dis_session = Requests.session();
        this.url = url;
        this.session = session;
    }

    public CaptchaRecognize(Session session,String url,String Referer){
        this.dis_session = Requests.session();
        this.url = url;
        this.Referer = Referer;
        this.session = session;
    }

    /**
     * 获取打码平台的认证码
     * @return 认证码
     */
    public String keyGet(){
        String get_url = MyConstant.DISCRIMINATION_LOGIN_URL;
        String result = "";
        Map<String, Object> headers = new HashMap<>();
        Map params = new HashMap<>();
        params.put("username", "futai");
        params.put("password", "zhegeshabi");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        Charset cs = StandardCharsets.UTF_8;
        for (int i = 0; i < 3; i++) {
            try{
                result= this.dis_session.post(get_url)
                        .headers(headers)
                        .requestCharset(cs)
                        .params(params)
                        .send()
                        .readToText();
                break;

            }catch (Exception e){
                System.out.printf("第%d请求错误,最多请求3次",i+1);
            }
        }

        return result;
    }

    /**
     * 验证码图片爬取
     * @return 二进制形式的图片信息
     */
    public byte[] pictureGet(){
        byte[] result = new byte[0];
        Map<String, Object> headers = new HashMap<>();
        headers.put("Host","202.115.47.141");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        if(this.Referer!=null){
            headers.put("Referer",this.Referer);
        }
        for (int i = 0; i < 3; i++) {
            try{
                result = this.session.get(this.url).headers(headers).send().readToBytes();
                break;

            }catch (Exception e){
                System.out.printf("第%d请求错误,最多请求3次",i+1);
            }
        }
        return result;
    }


    /**
     * 验证码的识别
     * @param captcha
     * @param key
     * @return 验证码识别结果
     */
    public String captchaDiscriminate(byte[] captcha, String key){
        final Base64.Encoder encoder = Base64.getEncoder();
        final String encodedText = encoder.encodeToString(captcha);
        Map<String, Object> headers = new HashMap<>();
        Map params = new HashMap<>();
        params.put("image",encodedText);
        params.put("userkey",key);
        params.put("type","1001");
        headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
        String url = MyConstant.DISCRIMINATION_RECOGNIZE_URL;
        String result = this.dis_session.post(url).body(params).headers(headers).send().readToText();
        return result;
    }

    /**
     * 获取验证码结果
     * @return 验证码结果
     */
    public String getPictureResult(){
        String result = captchaDiscriminate(pictureGet(),keyGet());
        if(result.length() != 0&result!=null){
            System.out.println("验证码识别成功："+result);

        }
        return result;
    }

    //test
    public static void main(String[] args) {
        Session session = Requests.session();
        CaptchaRecognize a = new CaptchaRecognize(session,"http://202.115.47.141/img/captcha.jpg","http://202.115.47.141/login");
        a.getPictureResult();
    }
}
