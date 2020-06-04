package com.Stackery.utils.helper;

import com.Stackery.utils.helper.iface.ICheckIn;
import net.dongliu.requests.Requests;
import net.dongliu.requests.Session;

import java.io.Serializable;

public abstract class AbstractCheckIn implements ICheckIn, Serializable {

    private static final long serialVersionUID = -153350073817550884L;
    private String cookie;
    private String username;
    private String password;
    private Session session;

    public AbstractCheckIn(){

    }

    public AbstractCheckIn(Session session){
        setSession(session);
    }

    public AbstractCheckIn(String  cookie){
        setCookie(cookie);
        setSession(Requests.session());
    }

    @Override
    public abstract void operateCheckIn();

    //一系列setter和getter方法
    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
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

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }
}
