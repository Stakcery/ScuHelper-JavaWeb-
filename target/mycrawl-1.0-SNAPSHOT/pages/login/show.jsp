<%@ page import="net.dongliu.requests.Session" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Stackery.utils.login.SessionManager" %>
<html>
<head>
    <title>正在登录</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
</head>
<body>
<script>
    urp.alert("正在登录请稍候")
</script>
<%!
    String status = null;
%>
<%
            Map<String,Object> headers = new HashMap<>();
            headers.put("Host","202.115.47.141");
            headers.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3754.400 QQBrowser/10.5.4034.400");
            headers.put("Referer","http://202.115.47.141/login");
            request.setCharacterEncoding("utf-8");
            String username = request.getParameter("userName");
            String password = request.getParameter("passWord");
            SessionManager x = new SessionManager(username,password,1);
//            for (int i = 0; i < 2; i++) {
//                if(x.canLogin()){
//                    status = "1";
//                    break;
//                }else {
//                    status = "2";
//                }
//            }
            if(x.canLogin()){
                status = "1";
            }else {
                status = "2";
            }

            if (status.equals("1")){
                String str = URLEncoder.encode(x.getName(),"UTF-8");
                Cookie cookie = new Cookie("name",str);
                cookie.setPath("/");
                Cookie cookie1 = new Cookie("MYJSESSIONID", (String) x.getJWC_Cookie().get("JSESSIONID"));
                Cookie cookie2 = new Cookie("username",username);
                Cookie cookie3 = new Cookie("password",password);
                Cookie cookie4 = new Cookie("SPRING_SECURITY_REMEMBER_ME_COOKIE", (String) x.getJWC_Cookie().get("SPRING_SECURITY_REMEMBER_ME_COOKIE"));
                cookie1.setPath("/");
                cookie1.setMaxAge(20000);
                cookie2.setPath("/");
                cookie3.setPath("/");
                cookie4.setPath("/");
                response.addCookie(cookie);
                response.addCookie(cookie1);
                response.addCookie(cookie2);
                response.addCookie(cookie3);
                response.addCookie(cookie4);
//                request.getRequestDispatcher("success.jsp").forward(request,response);
//            out.print(x.getJWC_Session());
                response.sendRedirect("success.jsp");
            }
        %>
<input type="hidden" id="verify" value="<%=status%>">
<script>
        if (document.getElementById("verify").value === "2"){
            alert("账户或密码错误，请重新输入")
            window.location.replace("${pageContext.request.contextPath}/pages/login/login.jsp")
        }
</script>
</body>
</html>
