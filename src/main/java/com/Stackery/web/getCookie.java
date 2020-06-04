package com.Stackery.web;

import com.Stackery.dao.UserDao;
import com.Stackery.dao.impl.UserDaoImpl;
import com.Stackery.pojo.User;
import com.Stackery.utils.helper.CookieHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class getCookie extends HttpServlet {
    private UserDao userDao = new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        User user = userDao.queryUserByUsername(username);
        String jwcUsername = user.getJwcUsername();
        String jwcPassword = user.getJwcPassword();
        String cookie = user.getCookie();
        CookieHelper cookieHelper = new CookieHelper(jwcUsername,jwcPassword,cookie);
        PrintWriter out = response.getWriter();
        if (cookieHelper.isValid()){
            out.write("Cookie未失效");
        }else {
            if (cookieHelper.updateCookie()){
                userDao.updateUserByUsername(cookieHelper.getCookie(),username);
                out.write("Cookie已更新");
            }
        }




    }
}
