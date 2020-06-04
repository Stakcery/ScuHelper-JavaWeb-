package com.Stackery.web;

import com.Stackery.pojo.User;
import com.Stackery.service.UserService;
import com.Stackery.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class loginServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username+password);
        PrintWriter out = response.getWriter();
        if (userService.login(new User(null,"a",username,password,"a","a","a","a"))!=null){
            out.print("登录成功");
            System.out.println("1");
        }else{
            out.print("登录失败，请检查");
            System.out.println("2");
        }
        out.close();
    }
}
