<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Yangwenhao
  Date: 2020/5/10
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆界面</title>
    <link rel="stylesheet" href="../../static/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
</head>
<body background="../../static/images/logo.jpeg">
<%!
    String status;
%>
<%
    Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies) {
            if (cookie.getName().equals("MYJSESSIONID")){
                if (cookie.getValue()==null||cookie.getValue().length()<3){
                    status = null;
                }else {
                    status = URLDecoder.decode(cookie.getValue(),"utf-8");
                }

                break;
            }

        }
%>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class ="form-horizontal" action="show.jsp" method="post" id="admin">
                <input type="hidden" name="actionName" value="login">
                <span class="heading"><font color="#4F4F4F">用户登录</font> </span>
                <div class="form-group">
                    <input type="username" name="userName" class="form-control" id="inputEmail" placeholder="你的学号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" name="passWord" class="form-control" id="pwd" placeholder="你的密码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                    <br>
                </div>
                <div class="form-group">

                    <input type="submit" class="btn btn-default" id="asubmit" name="登录"/>
                </div>
            </form>

        </div>

    </div>
    <input type="hidden" id="myStatus" value=<%=(status==null?"true":"false")%>>
    <script type="text/javascript" color="255,255,255" opacity='0.7' zIndex="-2" count="200" src="../../static/js/canvas-nest.min.js"></script>
    <script>
        if (document.cookie.indexOf("MYJSESSIONID")!=-1){
             window.location.replace("success.jsp")
        }
    </script>
    <script>
        urp.alert("本页面实现教务系统七天免登录接口，身份信息未失效则不用重新登录")
    </script>
</div>
</html>
