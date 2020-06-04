package com.Stackery.pojo;

/**
 * JavaBean类
 */
public class User {
    private Integer id;
    private String name;
    private String username;
    private String password;
    private String jwcUsername;
    private String jwcPassword;
    private String email;
    private String cookie;

    public User() {

    }

    public User(Integer id, String name, String username, String password, String jwcUsername, String jwcPassword, String email, String cookie) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.password = password;
        this.jwcUsername = jwcUsername;
        this.jwcPassword = jwcPassword;
        this.email = email;
        this.cookie = cookie;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getCookie() {
        return cookie;
    }

    public void setCookie(String cookie) {
        this.cookie = cookie;
    }

    public String getJwcUsername() {
        return jwcUsername;
    }

    public void setJwcUsername(String jwcUsername) {
        this.jwcUsername = jwcUsername;
    }

    public String getJwcPassword() {
        return jwcPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setJwcPassword(String jwcPassword) {
        this.jwcPassword = jwcPassword;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
