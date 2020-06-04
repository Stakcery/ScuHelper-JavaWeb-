package com.Stackery.service;

import com.Stackery.pojo.User;

public interface UserService {
    /**
     * 注册用户
     * @param user
     */
    public void registerUser(User user);

    /**
     * 登录
     * @param user
     * @return
     */
    public User login(User user);

    /**
     * 检查用户名是否可用
     * @return true代表可用
     */
    public boolean existsUsername(String username);
}
