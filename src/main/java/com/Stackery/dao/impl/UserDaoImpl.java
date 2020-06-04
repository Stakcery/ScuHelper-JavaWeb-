package com.Stackery.dao.impl;

import com.Stackery.pojo.User;
import com.Stackery.dao.UserDao;

public class UserDaoImpl extends BaseDao implements UserDao {

    public UserDaoImpl(){

    }

    @Override
    public User queryUserByUsername(String username) {
        String sql = "select `id`,`name`,`username`,`password`,`jwcusername`,`jwcpassword`,`email`,`cookie` from webinfo where `username` = ?";
        return queryForOne(User.class,sql,username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select `id`,`name`,`username`,`password`,`jwcusername`,`jwcpassword`,`email`,`cookie` from webinfo where `username`= ? and `password`= ?";
        return queryForOne(User.class,sql,username,password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into `webinfo`(`name`,`username`,`password`,`jwcusername`,`jwcpassword`,`email`,`cookie`) values(?,?,?,?,?,?,?)";
        return update(sql,
                user.getName(),
                user.getUsername(),
                user.getPassword(),
                user.getJwcUsername(),
                user.getJwcPassword(),
                user.getEmail(),
                user.getCookie());
    }

    @Override
    public int updateUserByUsername(String cookie, String username) {
        String sql = "UPDATE `webinfo` SET cookie = ? where username = ?";
        return update(sql,cookie,username);
    }

    @Override
    public int updateNameByUsername(String name, String username) {
        String sql = "UPDATE `webinfo` SET name = ? where username = ?";
        return update(sql,name,username);
    }


}
