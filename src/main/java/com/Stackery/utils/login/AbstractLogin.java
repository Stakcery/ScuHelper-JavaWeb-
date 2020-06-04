package com.Stackery.utils.login;

import com.Stackery.utils.login.iface.ILogin;
import net.dongliu.requests.Session;

import java.io.Serializable;

/**
 * 实现ILogin接口的抽象登录类
 */
public abstract class AbstractLogin implements ILogin, Serializable{
    private static final long serialVersionUID = 6627523250826035422L;
    private String username;
    private String password;
    private Session session;
    public AbstractLogin(Session session){
        setSession(session);
    }

    // TODO 考虑是否删除
    public AbstractLogin() {

    }

    /**
     * 判断是否登录成功的方法
     * @return
     */
    @Override
    public abstract boolean isLogin();

    //本类一系列setter和getter方法
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
