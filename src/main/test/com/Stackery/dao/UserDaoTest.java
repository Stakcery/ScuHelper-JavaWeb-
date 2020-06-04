package com.Stackery.dao;

import com.Stackery.dao.impl.UserDaoImpl;
import com.Stackery.service.UserService;
import com.Stackery.service.impl.UserServiceImpl;
import org.junit.Test;

import java.io.UnsupportedEncodingException;

import static org.junit.Assert.*;

public class UserDaoTest {
    UserDao userDao = new UserDaoImpl();

    @Test
    public void updateNameByUsername() throws UnsupportedEncodingException {
        String str = "aaa";
        userDao.updateNameByUsername(str,"ywh123");
    }

    @Test
    public void queryUserByUsername() {
        System.out.println( userDao.queryUserByUsername("ywh123").getName());
    }
}