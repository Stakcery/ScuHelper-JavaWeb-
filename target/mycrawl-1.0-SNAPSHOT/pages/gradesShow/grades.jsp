<%@ page import="java.util.List" %>
<%@ page import="java.util.ListIterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Stackery.utils.helper.GradesHelper" %><%--
  Created by IntelliJ IDEA.
  User: Yangwenhao
  Date: 2020/5/18
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩展示</title>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="http://202.115.47.141/css/commons/commoncss.css" type="text/css">
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpjs.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script>
    <link rel="stylesheet" href="http://202.115.47.141/css/xk/xk.css">
    <link rel="stylesheet" href="http://202.115.47.141/assets/font-awesome/4.1.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://202.115.47.141/css/commons/commoncss.css" type="text/css">
    <link rel="stylesheet" href="http://202.115.47.141/assets/layer/skin/layer.css" id="layui_layer_skinlayercss" style="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
</head>
<body style="background:#F8F8FF; background: linear-gradient(to bottom right,#ffffff 0,#ffffff 100%);">

<%!
    String status = null;
    ListIterator<ArrayList> iterator = null;
    String GPA = null;
    int courseNum = 0;
    int grades = 0;
%>
<%

        Cookie[] cookies = request.getCookies();
        String Cookie = null;
        for (Cookie cookie:cookies) {
            if (cookie.getName().equals("MYJSESSIONID")){
                Cookie = "JSESSIONID=" + cookie.getValue();
            }else if(cookie.getName().equals("SPRING_SECURITY_REMEMBER_ME_COOKIE")){
                Cookie += ";" + "SPRING_SECURITY_REMEMBER_ME_COOKIE="+cookie.getValue()+ ";" ;
            }

        }

        try {
            GradesHelper a = new GradesHelper(Cookie);
            System.out.println(a.getGPA());
            List<ArrayList> arrayLists = a.scoresInfo();
            GPA = a.getGPA();
            courseNum = Integer.parseInt(a.getCourseNum());
            iterator = arrayLists.listIterator();
            status = "1";
        }catch (Exception e){
            status = "2";
        }
    try {
        while (iterator.hasNext()){
            ArrayList arrayList = iterator.next();
            grades += Integer.parseInt((String) arrayList.get(4));
        }
    }catch (Exception e){

    }
    %>
<body class="no-skin">
<div class="row">
    <div data-v-e026a36e="" class="sua-widget-container-gpa-calculator col-sm-12 widget-container-col self-margin">
        <div data-v-e026a36e="" class="widget-box">
            <div data-v-e026a36e="" class="widget-header">
                <h5 data-v-e026a36e="" class="widget-title gpa-title">我的成绩 <span data-v-e026a36e="" class="badge badge-primary" style="padding-top: 3px; position: relative; top: -3px;">SCU-Assistant</span></h5>
                <div data-v-e026a36e="" class="widget-toolbar">
                    <div data-v-e026a36e="" class="widget-menu">
                        <!--  <a data-v-e026a36e="" id="gpa-toolbar-detail" data-action="settings" data-toggle="dropdown"><span class="label label-lg label-yellow arrowed-in" onclick="javascript:history.go(-1)">点我返回上一级</span></a>-->
                    </div>
                </div>
            </div>
            <div data-v-e026a36e="" class="widget-body">
                <div data-v-e026a36e="" class="widget-main">
                    <div data-v-e026a36e="" class="sua-container-gpa-calculator">
                        <!---->
                        <!---->
                        <div class="gpa-st-container row">
                            <div data-v-104a39bb="" class="gpa-st col-xs-12 self-margin" style="width: 50%;">
                                <h4 data-v-8c9c858c="" data-v-104a39bb="" class="header smaller lighter grey"> 2019-2020学年 秋季学期 <span data-v-8c9c858c="" title="在2019-2020学年 秋季学期，您一共修读了 11 门课程" class="gpa-info-badge badge badge-yellow"><%=courseNum%> 门</span> </h4>
                                <div data-v-aab61e28="" data-v-104a39bb="">
                                    <p data-v-aab61e28=""></p>
                                    <div data-v-aab61e28="" style="display: inline-block;">
                                        <span data-v-aab61e28=""  class="gpa-st-tag label label-success">总平均分：<%=grades/courseNum%></span>
                                        <span data-v-aab61e28=""  class="gpa-st-tag label label-purple">总绩点：<%=GPA%></span>
                                    </div>
                                    <p data-v-aab61e28=""></p>
                                    <p data-v-aab61e28="">
                                        <!---->
                                        <!----></p>
                                </div>
                                <!---->
                                <table data-v-178a793a="" data-v-104a39bb="" class="gpa-st-table table table-striped table-bordered table-hover">
                                    <thead data-v-178a793a="">
                                    <tr data-v-178a793a="">
                                        <th data-v-178a793a="" class="center">学习时间</th>
                                        <th data-v-178a793a="">课程名</th>
                                        <th data-v-178a793a="" class="center">学分</th>
                                        <th data-v-178a793a="" class="center">属性</th>
                                        <th data-v-178a793a="" class="center">分数</th>
                                        <th data-v-178a793a="" class="center">等级</th>
                                        <th data-v-178a793a="" class="center">绩点</th>
                                    </tr>
                                    </thead>
                                    <tbody data-v-178a793a="" id="scoretbody">
                                    <%
                                        while (iterator.hasPrevious()){
                                            ArrayList arrayList = iterator.previous();
                                            out.print("<tr data-v-178a793a=\"\" class=\"gpa-st-item\">");
                                            out.print("<td data-v-178a793a=\"\" class=\"\">"+arrayList.get(0)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"\">"+arrayList.get(1)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"center\">"+arrayList.get(2)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"center\">"+arrayList.get(3)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"center\">"+arrayList.get(4)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"center\">"+arrayList.get(5)+"</td>");
                                            out.print("<td data-v-178a793a=\"\" class=\"center\">"+arrayList.get(6)+"</td></tr>");
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="verify" value="<%=status%>">
</body>
<script>
    if(document.getElementById("verify").value==="2"){
        alert("当前为评教时间，查询成绩接口关闭，请先前往评教");
        history.go(-1);
    }
</script>
</body>
</html>
