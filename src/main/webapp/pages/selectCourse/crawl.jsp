<%@ page import="net.dongliu.requests.Session" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="javax.swing.text.Document" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="http://202.115.47.141/img/icon/favicon.ico" type="image/x-icon">
    <link href="jwclog/login.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
</head>
<body>
    <%!
        String uname = null;
        String upass = null;
    %>
    <%
            Cookie[] cookies = request.getCookies();
            try{
                for (Cookie cookie:cookies) {
            if (cookie.getName().equals("username")){
                uname = URLDecoder.decode(cookie.getValue(),"utf-8");
            }else if (cookie.getName().equals("password")){
                upass = URLDecoder.decode(cookie.getValue(),"utf-8");
            }

        }
        }catch (Exception e){

        }
    %>
<script>
    function ax() {
        var param1 = $("input[name=j_username]").val();
        var param2 = $("input[name=j_password]").val();
        if ((param1!= null&&param1.length>0)&&(param2!= null&&param2.length>0)&&param2.indexOf("_")!=-1){
            $.ajax({
                url:"${pageContext.request.contextPath}/selectCourse",
                type:"post",
                data:{
                    kcm:$("input[name=j_username]").val(),
                    kxh:$("input[name=j_password]").val(),
                },
                dataType:"json",
                success:function(result){
                    var str =JSON.stringify(result);
                    urp.alert(str);
                    // JSON.stringify( json );         此方法可以把一个json对象转换成为json字符串
                    // JSON.parse( jsonString );       此方法可以把一个json字符串转换成为json对象
                }

            });
        }else {
            urp.alert("很抱歉，当前输入课序号格式不正确，请仔细检查正确格式：xxx_xx");
        }
    }
</script>

<div class="wrapper fadeInDown">
    <script>
        urp.alert("看到这个选课系统是不是熟悉的味道?");
    </script>
    <div id="formContent">
        <h2 class="active"> Group1专用抢课系统</h2>
        <div class="fadeIn first">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" width="210.25px" height="159.942px" viewBox="0 0 105.125 79.971" enable-background="new 0 0 105.125 79.971" xml:space="preserve">
                <g id="Icons">
                    <g>
                        <circle fill="#E9EAEB" cx="52" cy="48.971" r="20"></circle>
                        <path fill="none" stroke="#D8D8D8" stroke-width="2" stroke-miterlimit="10" d="M29.657,65.902    c-3.517-4.677-5.602-10.492-5.602-16.795c0-15.448,12.523-27.972,27.973-27.972C67.477,21.135,80,33.659,80,49.107    c0,6.304-2.085,12.121-5.604,16.798"></path>
                        <g>
                            <path fill="#FFFFFF" stroke="#2A5082" stroke-width="2" stroke-miterlimit="10" d="M52,54.971c2.292,0,6.438-3.063,7-4     s0.775-1.863,1-3c0.053-0.27,0.828-1.771,1-2c0.942-1.253,1-5,1-5l-1-1c0,0-0.244-3.141-0.383-4.681     c-0.575-4.498-3.674-7.319-8.617-7.319s-8.042,2.822-8.617,7.319C43.244,36.831,43,39.971,43,39.971l-1,1c0,0,0.058,3.747,1,5     c0.172,0.229,0.947,1.73,1,2c0.224,1.137,0.438,2.063,1,3S49.708,54.971,52,54.971z"></path>


                            <path fill="#2DC1E5" stroke="#2A5082" stroke-width="2" stroke-miterlimit="10" d="M52,74.971c7.004,0,13.39-2.432,18-7v-4     c-0.561-2.002-2.162-3.026-4-4l-7-3c0,0-3.604,3-7,3s-6-3-6-3l-8,3c-1.838,0.974-3.439,1.998-4,4v4     C38.61,72.54,44.996,74.971,52,74.971z"></path>

                            <g>
                                <line fill="none" stroke="#2A5082" stroke-width="2" stroke-miterlimit="10" x1="46" y1="56.971" x2="46" y2="51.971"></line>
                            </g>
                            <g>
                                <line fill="none" stroke="#2A5082" stroke-width="2" stroke-miterlimit="10" x1="58" y1="57.565" x2="58" y2="51.971"></line>
                            </g>
                        </g>
                    </g>
                    <ellipse fill="#EE5456" cx="12.771" cy="43.409" rx="2.104" ry="2.063"></ellipse>
                    <polygon fill="#EE5456" points="86.028,32.771 85.644,33.905 86.359,34.864 85.163,34.849 84.471,35.826 84.116,34.683    82.973,34.328 83.95,33.636 83.935,32.439 84.894,33.155  "></polygon>
                    <polygon fill="#2EC3E6" points="29.75,14.596 29.083,14.37 28.519,14.791 28.527,14.087 27.952,13.68 28.625,13.471 28.834,12.799    29.241,13.374 29.945,13.365 29.523,13.929  "></polygon>
                    <circle fill="none" stroke="#2EC3E6" stroke-miterlimit="10" cx="15.25" cy="18.471" r="1.125"></circle>
                    <circle fill="#2EC3E6" cx="89.75" cy="47.221" r="1.25"></circle>
                    <circle fill="#2EC3E6" cx="71.688" cy="18.784" r="1.688"></circle>
                    <rect x="37" y="7.971" fill="#CECECE" width="1" height="1"></rect>
                    <rect x="85" y="57.971" transform="matrix(0.9503 -0.3114 0.3114 0.9503 -14.2181 29.8919)" fill="#CECECE" width="3" height="3"></rect>
                    <rect x="14.334" y="57.805" fill="#CECECE" width="2" height="2"></rect>

                    <rect x="16" y="31.971" transform="matrix(0.6706 -0.7419 0.7419 0.6706 -18.8596 23.4739)" fill="none" stroke="#CECECE" stroke-miterlimit="10" width="2" height="2"></rect>
                    <rect x="49" y="8.971" transform="matrix(0.5866 -0.8099 0.8099 0.5866 12.397 45.2283)" fill="#2EC3E6" width="3" height="3"></rect>
                    <circle fill="#FDDB00" cx="88.834" cy="21.638" r="1.5"></circle>
                    <circle fill="#FDDB00" cx="26.583" cy="23.555" r="0.75"></circle>
                    <circle fill="#FDDB00" cx="63.625" cy="8.763" r="1.042"></circle>
                    <polygon fill="#FDDB00" points="21.118,11.668 21.705,12.087 22.385,11.841 22.167,12.53 22.61,13.099 21.889,13.104    21.485,13.703 21.256,13.018 20.562,12.819 21.143,12.389  "></polygon>
                    <polygon fill="#D8D8D8" points="82.083,10.138 81.728,11.087 80.728,11.254 80.083,10.472 80.438,9.522 81.438,9.355  "></polygon>
                    <polygon fill="#D8D8D8" points="40.083,17.305 38.819,17.826 37.736,16.992 37.917,15.638 39.181,15.117 40.264,15.95  "></polygon>
                    <polygon fill="#D8D8D8" points="61.417,16.221 60.548,16.394 59.964,15.727 60.249,14.888 61.118,14.716 61.702,15.382  "></polygon>
                    <polygon fill="#D8D8D8" points="94,36.555 92.964,37.015 92.047,36.348 92.166,35.221 93.202,34.76 94.119,35.427  "></polygon>
                </g>
                <g id="Layer_3">
                </g>
			</svg>
        </div>
        <div style="font-size: 1.5em;">
			抢课端
        </div>
            <input type="text" id="input_kcm" name="j_username" class="fadeIn second" maxlength="50" placeholder="请输入课程名称">
            <input type="text" id="input_kxh" class="fadeIn third" name="j_password" maxlength="50" placeholder="请输入课序号">
            <input type="submit" id="loginButton" class="fadeIn fourth" value="抢 它" onclick="ax()">
            <input type="hidden" id="hidden">
            </br>
            </br>
            <input type="submit" id="returnButton" class="fadeIn fourth" value="返 回" onclick="javascript:history.go(-1);">
            </br>
            </br>
        <div id="formFooter">


            <font style="color: #56baed;">第一小组</font><br>
            <font style="color: #56baed;">建议浏览器：谷歌、火狐或IE10以上版本</font>

        </div>

    </div>
    <script type="text/javascript" color="255,255,255" opacity='0.7' zIndex="-2" count="200" src="../../js/canvas-nest.min.js"></script>
</div>