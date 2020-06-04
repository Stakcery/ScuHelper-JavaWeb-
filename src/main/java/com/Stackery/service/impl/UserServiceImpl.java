package com.Stackery.service.impl;

import com.Stackery.dao.UserDao;
import com.Stackery.dao.impl.UserDaoImpl;
import com.Stackery.pojo.User;
import com.Stackery.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();
    @Override
    public void registerUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername()
        ,user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        if (userDao.queryUserByUsername(username)==null){
            return false;
        }
        return true;
    }
}
