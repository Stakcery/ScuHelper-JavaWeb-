<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Group1</title>
    <meta name="keywords" content="Stackery" />
    <meta name="description" content="Stackery" />
    <link rel="apple-touch-icon" href="https://avatars2.githubusercontent.com/u/56486273?s=400&u=4b243003eb233f8b73b6d5c5548fa3ac00606439&v=4">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
</head>
<body style="padding:12% 5% 5% 5%;background-image:url(../../static/images/logo.jpeg);">
<div style="text-align:center;border-width:1px;border-style:solid;border-color:rgb(2, 204, 245);background-color:#79918e6b;border-radius:20px;">
    <%!
        String name;
    %>
    <%
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies) {
            if (cookie.getName().equals("name")){
                name = URLDecoder.decode(cookie.getValue(),"utf-8");
                break;
            }

        }
    %>
    <input type="hidden" id="yname" value=<%=(name==null?"error":"用户:"+name+"欢迎使用本系统")%>>
    <p>
        <img style="border-radius:50%;max-width:100px;max-height:100px;" src="./pages/404/img/20171216094159_QaLXP.jpg"></p>
    <h1 style="color:#fff;"><strong><%=(name==null?"Full Stack":"欢迎您："+name)%></strong>
    </h1>
    <p style="font-size:3vh;color:#fff;">基于爬虫技术的SCU多功能小助手</p>
    <p style="line-height:3;">
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/newsShow/news/ScientificnewsShow.jsp" target="_blank">学校新闻</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/selectCourse/crawl.jsp">选课系统</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/gradesShow/grades.jsp" target="_blank">成绩查询</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/getCourse/getCourseTable.jsp" target="_blank">我的课表</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/evaluateCourse/evaluateCourse.jsp">一键评教</a>
    </p><p><script src="https://pv.sohu.com/cityjson?ie=utf-8"></script>
    <span style="color:#bd8787;">你的IP:<script>
                    document.write(returnCitySN["cip"])
                   </script></span>
</p>
    <p style="color:#fff;">你的地址:<script>
        document.write(returnCitySN["cname"])
    </script>© <a style="text-decoration:none;color:#fff;" href="https://github.com/Stakcery/SCU_Helper">OD</a>.版权所有</p>
    <script type="text/javascript" color="255,255,255" opacity='0.7' zIndex="-2" count="200" src="../../static/js/canvas-nest.min.js"></script>
</div>
<script>
    urp.alert(document.getElementById("yname").value);
</script>
<script>
    function createCookie(name,value,days) {
        if (days) {
            var date = new Date();
            date.setTime(date.getTime()+(days*24*60*60*1000));
            var expires = "; expires="+date.toGMTString();
        }
        else var expires = "";
        document.cookie = name+"="+value+expires+"; path=/";
    }

    function readCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
    }

    function eraseCookie(name) {
        createCookie(name,"",-1);
    }
</script>
<script>
    if (document.getElementById("yname").value==="error"){
        eraseCookie("MYJSESSIONID");
        eraseCookie("username");
        eraseCookie("password");
        eraseCookie("SPRING_SECURITY_REMEMBER_ME_COOKIE");
        window.location.replace("login.jsp")
    }
</script>
<script>
    //取得项名称为offset的cookie值
    function GetCookieVal (offset)
    {
        var endstr = document.cookie.indexOf (";", offset);
        if (endstr == -1)
            endstr = document.cookie.length;
        return unescape(document.cookie.substring(offset, endstr));
    }

    //取得名称为name的cookie值
    function GetCookie (name) {
        var arg = name + "=";
        var alen = arg.length;
        var clen = document.cookie.length;
        var i = 0;
        while (i < clen)
        {
            var j = i + alen;
            if (document.cookie.substring(i, j) == arg)
                return GetCookieVal (j);
            i = document.cookie.indexOf(" ", i) + 1;
            if (i == 0) break;
        }
        return null;
    }

    //删除名称为name的Cookie
    function DeleteCookie (name)
    {
        var exp = new Date();
        exp.setTime (exp.getTime() - 1);
        var cval = GetCookie (name);
        document.cookie = name + "=" + cval + "; expires=" + exp.toGMTString();
    }

    //清除COOKIE
    function ClearCookies()
    {
        var temp=document.cookie.split(";");
        var ts;
        for (var i=0;;i++)
        {
            if(!temp[i])break;
            ts=temp[i].split("=")[0];
            DeleteCookie(ts);
        }
    }
</script>
<script>
    if (document.getElementById("yname").value==="error"){
        ClearCookies();
        window.location.replace("login.jsp")
    }
</script>
</body>
</html>