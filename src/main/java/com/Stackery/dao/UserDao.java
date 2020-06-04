package com.Stackery.dao;

import com.Stackery.pojo.User;

public interface UserDao {

    /**
     *根据用户名查询用户信息
     * @param username 用户名
     * @return 如果返回null，说明没有这个用户
     */
    public User queryUserByUsername(String username);

    /**
     *根据用户名和密码查询用户信息
     * @param username 用户名
     * @return 如果返回null，说明没有这个用户
     */
    public User queryUserByUsernameAndPassword(String username, String password);

    /**
     * 保存用户信息
     * @param user
     * @return
     */
    public int saveUser(User user);

    public int updateUserByUsername(String cookie, String username);

    public int updateNameByUsername(String name, String username);
}
