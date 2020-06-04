<%@ page import="net.dongliu.requests.Requests" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
<%@ page import="com.alibaba.fastjson.JSONArray" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="Author" content="Noah">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="favicon" href="favicon.ico">
    <title>一键评教系统</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
    <style>@font-face{font-family:iconfont;src:url(//at.alicdn.com/t/font_1706200_3sgw4esvyq9.eot?t=1584846914425);src:url(//at.alicdn.com/t/font_1706200_3sgw4esvyq9.eot?t=1584846914425#iefix) format('embedded-opentype'),url('data:application/x-font-woff2;charset=utf-8;base64,d09GMgABAAAAAAPcAAsAAAAACEAAAAOQAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHEIGVgCDMgqDVIMaATYCJAMUCwwABCAFhG0HUhswBxEVnPHIfiZkcgn7O+8oo66bEbK2OpSJxjfBA+X1vslMtll8iBW0KuzdSry1J/JGpwASAA0EaO7O95urXT4WOkKV5Nojj7b4hwrpy2SO/v97p78xLfvYuvYslzWHLex8DDAOpEDHnGQljg3TC+cUPEjbIQAHqRRD1GvQzI2BgvQTgBjYr083jJQNVcMRGEZbyVSVKhajY2hztCvAIv178YYywgANXUJ2atW7fk9qmZi1ZMCSjnILC8fbDUAHJFAMUCCGl/oGIm2uGBKHP1RRC3BgoKGZmLxVUbOWZcWqHRkc9A8PBBKFBsIGKXUBUAvlFZhwBAGmhiDBLIqgwKyVRwPuKwAOWAjCWUxL9mpIWOWKcikVmuwiF0+49sx9/bnn5gvfDdO/at6eQHTP5dHLd8Z6V67btSPG061Q523w0S5OzYETx4QbT9zXbnmuP/bdvOsL9lwR2D031utePndvMM7nXRncNy/G4xvlEveE69fc4Tdu+AbcnOdxa4E98/bFyZV75+5WxGRRnfY0cEulpaqbVCzNtxTEU1P1m2J4tFGwJ7VcytpevcrWOXd44oCjAyZu3DXRvQxryi09PV2/BcVQIlRxZPWvAFhMXkb1qQ3bHPFvOVXxWI1TjTLPFjtT5smFsAtxVqK82CcvekwcsbMOHDh4wOBxYw4eZI+NVR+A6Vmx4bGz1ZI0XFw1r0mlXm20lW5RpWd+s0u/ijYZwarmHJsZVi+tXKjMlU2rm186Hlk6tFxaPfwAWLPk3380K2u4Qm6xtmaprTL4b/dj0Nu/F+qwat8MpwLgzvpfdbSsPbbVBj9Ijy//kxa1tAb7qAqUxK4rT8490qpVpxGATiESBDT4aTX/LxTJg3H0MbPIZMAgJgaNIqSAxCCbpGjFQMdJObBhUBMcFKXhbCdRDEcilB0oZAYAQTiHQCOU4yAJ5ypJ0e6DTizvwEa4kODAK6KWdJIrLP1uHgWtYqDuj3zPi2FOvTHlb7BpaiWp1NwvSPRJKrMiW3zFAhljRPy2laohIzzTC9gN08S0Cgf0mjnV9ZLnpuxDWc/z5oZHQasYqPsj3/NiZGO9yX3/DTZNrdQQ+qJfkOjbpzIrWpBedUsrwrXcEr9tpWrICM/0AjyYaI5pLe8U0GvmemTWS47qmba6bH7D/IybAAdkZV1oQgoldGHjYViCYPl3WKxb86g+On/sE/+kc/CLtS1vNg==') format('woff2'),url(//at.alicdn.com/t/font_1706200_3sgw4esvyq9.woff?t=1584846914425) format('woff'),url(//at.alicdn.com/t/font_1706200_3sgw4esvyq9.ttf?t=1584846914425) format('truetype'),url(//at.alicdn.com/t/font_1706200_3sgw4esvyq9.svg?t=1584846914425#iconfont) format('svg')}.iconfont{font-family:iconfont!important;font-size:16px;font-style:normal;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.icon-querenzhengque:before{content:"\e600"}.icon-tishi:before{content:"\e640"}.icon-cuowu:before{content:"\e602"}.icon-jinggao:before{content:"\e62b"}*{box-sizing:border-box;margin:0;padding:0;font-weight:300}body,body ::-webkit-input-placeholder{font-family:Source Sans Pro,sans-serif;color:#fff;font-weight:300}body :-moz-placeholder,body ::-moz-placeholder{font-family:Source Sans Pro,sans-serif;color:#fff;opacity:1;font-weight:300}body :-ms-input-placeholder{font-family:Source Sans Pro,sans-serif;color:#fff;font-weight:300}a{text-decoration:none}.wrapper{background: #01a982; background: linear-gradient(to bottom right,#01a982 0,#60ae80 100%); overflow: hidden;}.bg-bubbles,.wrapper{position:absolute;left:0;width:100%;height:100%}.bg-bubbles{top:0;z-index:1}.bg-bubbles li{position:absolute;list-style:none;display:block;width:40px;height:40px;background-color:hsla(0,0%,100%,.15);bottom:-160px;animation:square 25s infinite;transition-timing-function:linear}.bg-bubbles li:nth-child(1){left:10%}.bg-bubbles li:nth-child(2){left:20%;width:80px;height:80px;animation-delay:2s;animation-duration:17s}.bg-bubbles li:nth-child(3){left:25%;animation-delay:4s}.bg-bubbles li:nth-child(4){left:40%;width:60px;height:60px;animation-duration:22s;background-color:hsla(0,0%,100%,.25)}.bg-bubbles li:nth-child(5){left:70%}.bg-bubbles li:nth-child(6){left:80%;width:120px;height:120px;animation-delay:3s;background-color:hsla(0,0%,100%,.2)}.bg-bubbles li:nth-child(7){left:32%;width:160px;height:160px;animation-delay:7s}.bg-bubbles li:nth-child(8){left:55%;width:20px;height:20px;animation-delay:15s;animation-duration:40s}.bg-bubbles li:nth-child(9){left:25%;width:10px;height:10px;animation-delay:2s;animation-duration:40s;background-color:hsla(0,0%,100%,.3)}.bg-bubbles li:nth-child(10){left:90%;width:160px;height:160px;animation-delay:11s}@keyframes square{0%{transform:translatey(0)}to{transform:translatey(-700px) rotate(600deg)}}@media (max-width:500px){.container h1{font-size:60px}form button,form input{width:500px}}.main{padding:50px 0;z-index:999;position:relative}.main h1{font-size:40px;text-align:center;color:#fff;margin-bottom:30px;text-transform:uppercase}.content{margin:0 auto;width:28%;background:#fff;border-radius:5px}p.footer{font-size:16px;text-align:center;color:#fff;font-weight:500;margin-top:30px}p.footer a{color:#55acee}p.footer a:hover{color:#000;transition:.5s all;-webkit-transition:.5s all;-moz-transition:.5s all;-o-transition:.5s all;-ms-transition:.5s all}.content-top h2{font-size:22px;color:#fff;text-align:center;background:#02a982;padding:12px 0;border-radius:5px}.content-top p{text-align:center;font-size:16px;color:#000;margin-top:15px}.content-top ul li{display:block;font-size:15px;color:#000;line-height:1.8em;padding:1em 0 1em 1em;border-bottom:1px solid #e2e0de}.content-top ul li a{color:#000;font-weight:400}.content-top ul li a i{color:#02a982;font-style:normal;display:block;margin:2px 0}.content-top ul li span{display:block;color:#999}.content-top{padding:1.5em}.content-top p a{color:#55acee;margin-left:5px}@media (max-width:1366px){.content{width:31%}}@media (max-width:1280px){.content{width:32%}}@media (max-width:1080px){.content{width:38%}.main h1{font-size:36px}.content-top h2{font-size:20px;padding:10px 0}.content-top p,.content-top ul li,p.footer{font-size:14px}}@media (max-width:800px){.main h1{font-size:34px}.content{width:46%}}@media (max-width:768px){.main{padding:90px 0}.main h1{margin-bottom:55px}p.footer{margin-top:75px}}@media (max-width:736px){.main{padding:70px 0}.main h1{margin-bottom:45px}.content{width:53%}p.footer{margin-top:50px}}@media (max-width:667px){.main h1{font-size:32px;margin-bottom:35px}.main{padding:60px 0}.content{width:57%}.content-top h2{font-size:18px}}@media (max-width:600px){.main h1{font-size:30px}.content-top{padding:1em}.content{width:62%}}@media (max-width:568px){.content{width:68%}}@media (max-width:480px){.content{width:78%}.main h1{font-size:28px}p.footer{margin-top:42px}}@media (max-width:414px){.content-top h2{font-size:16px}.content{width:85%}.main{padding:50px 0}p.footer{line-height:1.8em;margin:42px auto 0;width:85%}}@media (max-width:384px){.main h1{font-size:27px}.content,p.footer{width:90%}p.footer{margin:32px auto 0}}@media (max-width:375px){.main h1{font-size:26px;margin-bottom:25px}.main{padding:45px 0}.content,p.footer{width:92%}.content-top h2{padding:8px 0}}@media (max-width:320px){.main h1{font-size:24px;margin-bottom:30px}.content-top ul li{padding:1em 0 1em 1em;background-size:13%!important}.content-top{padding:1.2em}.content-top p,.content-top ul li,p.footer{font-size:13px}.content,p.footer{width:90%}}@media(max-width:500px){.bg-bubbles, .wrapper{height:auto;}}</style>
</head>
<body >
<div id="all">
    <div class="wrapper">
        <div class="main">
            <h1>全自动评教系统</h1>
            <div class="content">
                <div class="content-top">
                    <h2>自动评教</h2>
                    <ul>
                        <li>
                            <%!
                                String Cookie = null;
                                String number =null;
                                String status = null;
                            %>
                            <%
                                Cookie[] cookies = request.getCookies();
                                try{
                                    for (Cookie cookie:cookies) {
                                        if (cookie.getName().equals("MYJSESSIONID")){
                                            Cookie = "JSESSIONID=" + cookie.getValue();
                                        }else if(cookie.getName().equals("SPRING_SECURITY_REMEMBER_ME_COOKIE")){
                                            Cookie += ";"+"SPRING_SECURITY_REMEMBER_ME_COOKIE="+cookie.getValue()+ ";" ;
                                        }
                                    }
                                    Map<String,Object> headers = new HashMap<>();
                                    headers.put("Origin","http://202.115.47.141");
                                    headers.put("Host","202.115.47.141");
                                    headers.put("Referer","http://202.115.47.141/student/teachingEvaluation/evaluation/index");
                                    headers.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3760.400 QQBrowser/10.5.4083.400");
                                    headers.put("Cookie",Cookie);
                                    String result = Requests.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/search").headers(headers).send().readToText();
                                    JSONObject jsonObject = JSON.parseObject(result);

                                    out.print("当前待评教课程数量为："+jsonObject.getString("notFinishedNum")+"</br>");
                                    JSONArray jsonArray  = JSON.parseObject(result).getJSONArray("data");
                                    jsonObject = (JSONObject) jsonArray.get(0);
                                    Iterator arr = jsonArray.listIterator();
                                    while (arr.hasNext()){
                                        jsonObject = (JSONObject) arr.next();
                                        if (jsonObject.get("isEvaluated").equals("否")){
                                            String evaluatedPeople = jsonObject.getString("evaluatedPeople");
                                            JSONObject temp = jsonObject.getJSONObject("id");
                                            String evaluatedPeopleNumber = temp.getString("evaluatedPeople");
                                            String questionnaireCode = temp.getString("questionnaireCoding");
                                            String evaluationContentNumber = temp.getString("evaluationContentNumber");
                                            String questionnaireName = jsonObject.getJSONObject("questionnaire").getString("questionnaireName");
//                System.out.println(evaluatedPeople+"?"+evaluatedPeopleNumber+"?"+questionnaireCode+"?"+questionnaireName
//                +"?"+evaluationContentNumber);
                                            Map<String,Object> tempHeaders = new HashMap<>();
                                            tempHeaders.put("Origin","http://202.115.47.141");
                                            tempHeaders.put("Host","202.115.47.141");
                                            tempHeaders.put("Referer","http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage");
                                            tempHeaders.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36 Edg/81.0.416.77");
                                            tempHeaders.put("Cookie",Cookie);
                                            Map params = new HashMap<>();
                                            params.put("evaluatedPeople",evaluatedPeople);
                                            params.put("evaluatedPeopleNumber",evaluatedPeopleNumber);
                                            params.put("questionnaireCode",questionnaireCode);
                                            params.put("questionnaireName","学生评教（课堂教学）");
                                            params.put("evaluationContentNumber",evaluationContentNumber);
                                            params.put("evaluationContentContent","");
                                            String a = Requests.post("http://202.115.47.141/student/teachingEvaluation/teachingEvaluation/evaluationPage").headers(tempHeaders).body(params).send().readToText();
                                            Document document = Jsoup.parse(a);
                                            String tokenValue = document.getElementById("tokenValue").attr("value");
                                            Elements elements = document.getElementsByAttribute("value");
                                            questionnaireCode = elements.get(4).attr("value");
                                            evaluationContentNumber = elements.get(5).attr("value");
                                            evaluatedPeopleNumber = elements.get(6).attr("value");
//                out.print("<button type=\"button\" class=\"button green round\" onclick = \"一键评教\">DOWNLOAD</button>");
//                out.print("<input type='button' id='verify' value='一键评教' onclick=\"operate('"+evaluationContentNumber+"')\">");
                                            out.print("教师名："+evaluatedPeople+"</br>"+"类别："+questionnaireName+"</br>"+"课程名称："+jsonObject.getString("evaluationContent")+"</br>");
                                            String json = tokenValue+";"+questionnaireCode+";"+evaluationContentNumber+";"+evaluatedPeopleNumber +";"+questionnaireName;
                                            out.print("<input type=\"hidden\" id=\""+evaluationContentNumber+"\" value=\""+json+"\">");
                                            out.print("<input type=\"hidden\" id= \"jwc\" value=\""+evaluationContentNumber+"\">");
                                            status = "1";
                                            number = evaluationContentNumber;
                                            break;
                                        }
                                    }


                                }catch (Exception e){
                                    status = "2";
                                }
                                out.print("<input type=\"hidden\" id= \"verifyIt\" value=\""+status+"\">");

                            %>

                            </li>
                        <li>
                            全自动运行，运行期间请不要关闭浏览器</br>教务处机制保持最低频率一分钟一个
                        </li>
                        <li>
                            关注我们的本地程序项目进程，并Star
                            <a href="https://gitee.com/Full_Stackecery/ScuAssistant" target="_blank"><i>https://gitee.com/Full_Stackecery/ScuAssistant</i></a>
                        </li>
                        <li>
                            关注我们的JavaWeb项目进程，并Star(暂未上传)
                            <a href="https://github.com/Stakcery" target="_blank"><i>https://github.com/Stakcery</i></a>
                        </li>
                        <li>
                            <span>别关本页面，反正你可以去玩了</span>
                    </ul>
                        <h2><i onclick="history.go(-1);">点我返回主页哦</i></h2>


                </div>
            </div>
            <p class="footer">Group-1荣誉出品</p>
        </div>
        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</div>
<div style='display:none'><script type="text/javascript" src="https://s4.cnzz.com/z_stat.php?id=1278893351&web_id=1278893351"></script></div>
<script>
    function operate(params){
        var temp = document.getElementById(params).value;
        setTimeout(function(){ if(temp!=null){
            $.ajax({
                url:"${pageContext.request.contextPath}/evaluateCourse",
                type:"post",
                data:{
                    myValue:temp,
                },
                success:function(result){
                    urp.alert(result)
                    // JSON.stringify( json );         此方法可以把一个json对象转换成为json字符串
                    // JSON.parse( jsonString );       此方法可以把一个json字符串转换成为json对象
                }

            });
        }else {
            urp.alert("很抱歉，当前格式错误");
        }}, 10000);
        urp.alert("我也不想这样，教务处填写必须等10秒啊，而且两次填写时间必须大于一分钟，这个困扰了我一个小时，我讨厌教务处加了token认证，不过咋说啥都是全自动的，摸摸头");
        setTimeout(function(){ history.go(0) }, 60000);

    }

</script>
<script>
    if(document.getElementById("jwc").value.length!=0){
        operate(document.getElementById("jwc").value);
    }
</script>
</body>
</html>
