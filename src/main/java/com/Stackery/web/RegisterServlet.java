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

public class RegisterServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String jwcusername = request.getParameter("jwcusername");
        String jwcpassword = request.getParameter("jwcpassword");
        String email = request.getParameter("email");
        String inviteCode = request.getParameter("inviteCode");
        System.out.println(inviteCode);
        String status = "";

        PrintWriter out = response.getWriter();
        //检验邀请码
        if("hggzka".equals(inviteCode)){
            // 检查用户名可用
            if (userService.existsUsername(username)){
//                System.out.println("用户名已存在，请联系");
                status = "用户名已存在";
            }else {
                userService.registerUser(new User(null,"a",username,password,jwcusername,jwcpassword,email,"null"));
//                System.out.println("注册成功");
                status = "注册成功";
            }
        }else {
            status = "邀请码错误，请联系我";
            System.out.println("邀请码错误，请联系我");
        }
        out.print(status);
        out.close();

    }
}
