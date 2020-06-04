package com.Stackery.utils;

public class SendWeChat {
    private String SERVER_KEY;
    private String title;
    private String info;

    /**
     * 采用默认标题的构造方法
     * @param key
     * @param info
     */
    public SendWeChat(String key,String info){
        setSERVER_KEY(key);
        setInfo(info);
        setTitle("");
    }

    /**
     * 构造方法
     * @param key
     * @param title
     * @param info
     */
    public SendWeChat(String key,String title,String info){
        setSERVER_KEY(key);
        setTitle(title);
        setInfo(info);
    }

    /**
     * 发送信息的方法
     */
    public void operateSendInfo(){

    }
    public String getSERVER_KEY() {
        return SERVER_KEY;
    }

    public void setSERVER_KEY(String SERVER_KEY) {
        this.SERVER_KEY = SERVER_KEY;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
