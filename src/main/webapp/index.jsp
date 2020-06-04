<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <title>Group1</title>
    <meta name="keywords" content="Stackery " />
    <meta name="description" content="Stackery " />
    <link rel="apple-touch-icon" href="https://avatars2.githubusercontent.com/u/56486273?s=400&u=4b243003eb233f8b73b6d5c5548fa3ac00606439&v=4">
    <script src="https://cdn.bootcss.com/sweetalert/2.1.0/sweetalert.min.js"></script>
</head>
<body style="padding:12% 5% 5% 5%;background-image:url(./static/images/logo.jpeg);">
<div style="text-align:center;border-width:1px;border-style:solid;border-color:rgb(2, 204, 245);background-color:#79918e6b;border-radius:20px;">
    <p>
        <img style="border-radius:50%;max-width:100px;max-height:100px;" src="./pages/404/img/20171216094159_QaLXP.jpg"></p>
    <h1 style="color:#fff;"><strong>Full Stack</strong>
    </h1>
    <p style="font-size:3vh;color:#fff;">基于爬虫技术的SCU多功能小助手</p>
    <p style="line-height:3;">
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="./pages/helpIndex/help.htm">项目介绍</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="http://121.89.162.165:8640/ScuAssistant_4_3.0.apk">手机APP下载</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="./pages/404/404.html">PC端软件下载</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/pages/login/login.jsp">登录</a>
        <a style="border-radius:10px;padding:7px 30px;color:#fff;border-style:solid;text-decoration:none;" href="${pageContext.request.contextPath}/register/log.jsp">新登录</a>
    </p><p><script src="https://pv.sohu.com/cityjson?ie=utf-8"></script>
    <span style="color:#bd8787;">你的IP:<script>
                    document.write(returnCitySN["cip"])
                   </script></span>
</p>
    <p style="color:#fff;">你的地址:<script>
        document.write(returnCitySN["cname"])
    </script>© <a style="text-decoration:none;color:#fff;" href="https://github.com/Stakcery/SCU_Helper">OD</a>.版权所有</p>
    <script type="text/javascript" color="255,255,255" opacity='0.7' zIndex="-2" count="200" src="./static/js/canvas-nest.min.js"></script>
</div>
</body>
<script>

    swal('本站状态:稳定运行中','Web2.0项目\n\n本项目仅兼容电脑端，手机用户界面效果欠佳\n\n为了您和我的安全！\n\n请低调使用，谢谢配合！','success'); function AddFavorite(title, url) {

        try {

            window.external.addFavorite(url, title);

        }

        catch (e) {

            try {

                window.sidebar.addPanel(title, url,);

            }

            catch (e) {

                alert("抱歉，您所使用的浏览器无法完成此操作。");

            }

        }

    }

</script>
</html>