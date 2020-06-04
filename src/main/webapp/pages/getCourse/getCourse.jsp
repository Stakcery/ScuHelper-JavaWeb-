<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">

    <title>本学期课程表</title>
    <link rel="shortcut icon" href="http://202.115.47.141/img/icon/favicon.ico" type="image/x-icon">
    <meta name="description" content="overview &amp; stats">

    <!-- bootstrap & fontawesome -->
    <!--     <link rel="stylesheet" type="text/css" href="/static/template.css"/> -->

    <link rel="stylesheet" href="http://202.115.47.141/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://202.115.47.141/css/newjw2014/style-main.css">
    <link rel="stylesheet" href="static/font-awesome.min.css">

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="http://202.115.47.141/assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="http://202.115.47.141/assets/css/chosen.css">



    <!-- page specific plugin styles -->

    <!-- jquery ui grid -->

    <!-- jquery ui grid -->

    <!-- text fonts -->

<%--    <link rel="stylesheet" href="http://202.115.47.141/assets/css/fonts-woff2.css">--%>

    <!-- ace styles -->
    <link rel="stylesheet" href="http://202.115.47.141/assets/css/ace.min.css" id="main-ace-style">

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="http://202.115.47.141/assets/css/ace-part2.min.css"/>
    <![endif]-->



    <!--[if lte IE 9]>
    <link rel="stylesheet" href="http://202.115.47.141/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="http://202.115.47.141/assets/js/ace-extra.min.js"></script><style type="text/css">.loading[data-v-3acce38f]{position:absolute;width:100%;left:0;top:0;height:60vh;display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;-ms-flex-align:center;align-items:center;-ms-flex-direction:column;flex-direction:column}.loading .lds-dual-ring[data-v-3acce38f]{display:inline-block;width:200px;height:200px}.loading .lds-dual-ring[data-v-3acce38f]:after{content:" ";display:block;width:100%;height:100%;margin:1px;border-radius:50%;border-color:#336199;border-color:#336199 rgba(0,0,0,0);border-style:solid;border-width:5px;-webkit-animation:lds-dual-ring-data-v-3acce38f 1.2s linear infinite;animation:lds-dual-ring-data-v-3acce38f 1.2s linear infinite}.loading .lds-title[data-v-3acce38f]{font-size:30px;color:#336199;padding-top:40px;font-weight:lighter}@-webkit-keyframes lds-dual-ring-data-v-3acce38f{0%{transform:rotate(0deg)}to{transform:rotate(1turn)}}@keyframes lds-dual-ring-data-v-3acce38f{0%{transform:rotate(0deg)}to{transform:rotate(1turn)}}</style><style type="text/css">.gpa-tt[data-v-3c165586]{margin-bottom:20px}.gpa-tt .header[data-v-3c165586]{margin-top:0}</style><style type="text/css">span.greater-than-avg[data-v-9d88fcb6]{color:#67c23a!important}span.less-than-avg[data-v-9d88fcb6]{color:#f56c6c!important}</style><style type="text/css">table.gpa-st-table tr.gpa-st-item[data-v-178a793a]{cursor:pointer}table.gpa-st-table tr.gpa-st-item>td[data-v-178a793a]{transition:.1s}table.gpa-st-table tr.gpa-st-item>td.bold[data-v-178a793a]{font-weight:700}table.gpa-st-table tr.gpa-st-item.selected>td.greater-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item:active>td.greater-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item>td.greater-than-avg[data-v-178a793a]{color:#67c23a!important}table.gpa-st-table tr.gpa-st-item.selected>td.less-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item:active>td.less-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item>td.less-than-avg[data-v-178a793a]{color:#f56c6c!important}table.gpa-st-table tr.gpa-st-item.selected>td.greater-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item:active>td.greater-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item>td.greater-than-avg[data-v-178a793a]{background-color:#e1f3d8!important}table.gpa-st-table tr.gpa-st-item.selected>td.less-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item:active>td.less-than-avg[data-v-178a793a],table.gpa-st-table tr.gpa-st-item>td.less-than-avg[data-v-178a793a]{background-color:#fde2e2!important}table.gpa-st-table tr.gpa-st-item.selected>td[data-v-178a793a]{color:#409eff;background-color:#ecf5ff}table.gpa-st-table tr.gpa-st-item.selected:hover>td[data-v-178a793a]{background:#409eff;border-color:#409eff;color:#fff}table.gpa-st-table tr.gpa-st-item:active>td[data-v-178a793a]{background-color:#3a8ee6!important;color:#fff;outline:none}</style><style type="text/css">.gpa-st-container .gpa-st[data-v-104a39bb]{width:100%}</style><style type="text/css">.gpa-st-container{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap}.gpa-st-cancel-btn,.gpa-st-select-all-btn,.gpa-tt-cancel-btn,.gpa-tt-select-all-btn{position:relative;top:2.5px;float:right}.gpa-st-tag,.gpa-tt-tag{cursor:pointer}.gpa-info-badge{cursor:pointer;position:relative;top:-7.5px}</style><style type="text/css">#gpa-toolbar-detail[data-v-e026a36e],#gpa-toolbar-reset[data-v-e026a36e]{cursor:pointer}</style><style type="text/css">.four-type-grade-labels[data-v-446840aa]{display:inline-block}</style><style type="text/css">.header[data-v-79eedc64]{margin-top:0}input[data-v-79eedc64]{width:4em;height:2em;line-height:2em}</style><style type="text/css">ol>li[data-v-d3cba39a]{list-style-type:decimal}p.indent[data-v-d3cba39a]{text-indent:2em}.avatar[data-v-d3cba39a]{border-radius:50%;width:100px;box-shadow:0 1px 3px rgba(26,26,26,.1)}</style><style type="text/css">p.indent[data-v-d41e1692]{text-indent:2em}</style><style type="text/css">.header[data-v-73680034]{margin-top:0}.result-wrapper[data-v-73680034]{margin-top:10px}.profile-info-row[data-v-73680034]{display:-ms-flexbox;display:flex}.profile-info-row .profile-info-name[data-v-73680034]{width:auto;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding-right:20px;padding-left:20px}.profile-info-row .profile-info-value[data-v-73680034]{-ms-flex:1;flex:1;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.profile-info-row .profile-info-value input#major[data-v-73680034]{width:40%!important;min-width:200px}</style><style type="text/css">.header[data-v-4ab9db4c]{margin-top:0}.result-wrapper[data-v-4ab9db4c]{margin-top:10px}.result-wrapper table td[data-v-4ab9db4c]{vertical-align:middle}.profile-info-row[data-v-4ab9db4c]{display:-ms-flexbox;display:flex}.profile-info-row .profile-info-name[data-v-4ab9db4c]{width:auto;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding-right:20px;padding-left:20px}.profile-info-row .profile-info-value[data-v-4ab9db4c]{-ms-flex:1;flex:1;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.profile-info-row .profile-info-value input#major[data-v-4ab9db4c]{width:40%!important;min-width:200px}</style>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="http://202.115.47.141/assets/js/html5shiv.min.js"></script>
    <script src="http://202.115.47.141/assets/js/respond.min.js"></script>
    <![endif]-->
    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="http://202.115.47.141/js/jQuery/jquery-3.4.1.min.js"></script>
    <script src="http://202.115.47.141/js/jQuery/jquery-migrate-3.1.0.min.js"></script>
    <!-- <![endif]-->

    <!--[if IE]>
    <script src="http://202.115.47.141/js/jQuery/jquery-3.4.1.min.js"></script>
    <script src="http://202.115.47.141/js/jQuery/jquery-migrate-1.4.1.min.js"></script>
    <![endif]-->

    <script type="text/javascript">
        if ('ontouchstart' in document.documentElement) document.write("<script src='http://202.115.47.141/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>


    <!-- page specific plugin scripts -->
    <script type="text/javascript">
        $.ajaxPrefilter( function( s ) {
            if ( s.crossDomain ) {
                s.contents.javascript = false;
            }
        } );
    </script>

    <!--[if lte IE 8]>
    <script src="http://202.115.47.141/assets/js/excanvas.min.js"></script>
    <![endif]-->


    <script type="text/javascript" src="http://202.115.47.141/js/My97DatePicker/WdatePicker.js"></script><link href="/js/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="http://202.115.47.141/assets/js/chosen.jquery.min.js"></script>

    <!-- ace scripts -->
    <script src="http://202.115.47.141/assets/js/ace-elements.min.js"></script>
    <script src="http://202.115.47.141/assets/js/ace.min.js"></script>



    <script type="text/javascript" src="http://202.115.47.141/js/jQuery/jquery.cookie.js"></script>

    <!-- jqgrid -->

    <!-- jqgrid -->

    <!-- commoncss -->
    <link rel="stylesheet" href="http://202.115.47.141/css/commons/commoncss.css" type="text/css">
    <!-- commoncss -->

    <!-- alert -->
    <script type="text/javascript" src="http://202.115.47.141/assets/js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="http://202.115.47.141/js/customjs/pagination.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/urpalert.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/assets/layer/layer.js"></script><link rel="stylesheet" href="http://202.115.47.141/assets/layer/skin/layer.css" id="layui_layer_skinlayercss" style="">

    <script src="http://202.115.47.141/assets/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- alert -->

    <!-- light bootstrap 两个图表-->

    <!-- light bootstrap 两个图表-->

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="http://202.115.47.141/css/commons/kcbcolor.css" type="text/css">
    <script type="text/javascript" src="http://202.115.47.141/js/json/json2.js"></script>
    <script type="text/javascript" src="static/coursetable.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/kcbcolor.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/html2canvas/html2canvas.min.js"></script>
    <script type="text/javascript" src="http://202.115.47.141/js/customjs/browser.js"></script>






    <style type="text/css">
        .div_style_dy {
            margin: -20px 0px 0px 0px;
        }

        .div_style {
            margin: 0px;
        }

        body {
            margin: 0px;
            padding: 0px;
        }

        .courseTable_style {
            border: 3px solid #000000
        }

        .tags {
            display: inline-block;
            position: absolute;
            bottom: 0;
            right: 0;
            overflow: visible;
            direction: rtl;
            padding: 0;
            margin: 0;
            height: auto;
            width: auto;
            background-color: transparent;
            border-width: 0;
            vertical-align: inherit;
        }

        .tags > .label-holder {
            opacity: .92;
            filter: alpha(opacity=92);
            display: table;
            margin: 1px 0 0;
            direction: ltr;
            text-align: left;
        }

        .tags > .label-holder:hover {
            opacity: 1;
            filter: alpha(opacity=100);
        }

        .tools {
            display: none;
            position: absolute;
            top: 0;
            bottom: 0;
            left: -30px;
            width: 24px;
            background-color: rgba(0, 0, 0, 0.55);
            text-align: center;
            vertical-align: middle;
            -webkit-transition: all 0.2s ease;
            -o-transition: all 0.2s ease;
            transition: all 0.2s ease;
        }

        div.class_div:hover > div.tools {
            display: block;
            left: 0;
            right: 0;
        }

        .tools > a {
            display: inline-block;
            color: #FFF;
            font-size: 18px;
            font-weight: normal;
            padding: 0 2px;
        }

        .tools > a:hover {
            text-decoration: none;
            color: #C9E2EA;
        }

        #mycoursetable>table,#mycoursetable>table>thead>tr,#mycoursetable>thead>tr>th,#mycoursetable>tbody>tr>th,#mycoursetable>tbody>tr>td {
            border:#C7C7C7 2px solid
        }


    </style>



    <style type="text/css">
        @charset "utf-8";html{color:#333;background:#fff;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;text-rendering:optimizelegibility}html.borderbox *,html.borderbox :after,html.borderbox :before{box-sizing:border-box}article,aside,blockquote,body,button,code,dd,details,dl,dt,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hr,input,legend,li,menu,nav,ol,pre,section,td,textarea,th,ul{margin:0;padding:0}article,aside,details,figcaption,figure,footer,header,menu,nav,section{display:block}audio,canvas,video{display:inline-block}body,button,input,select,textarea{font:300 13px/1.8 PingFang SC,Lantinghei SC,Microsoft Yahei,Hiragino Sans GB,Microsoft Sans Serif,WenQuanYi Micro Hei,sans-serif}button::-moz-focus-inner,input::-moz-focus-inner{padding:0;border:0}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0}blockquote{position:relative;color:#999;font-weight:400;border-left:1px solid #1abc9c;padding-left:1em;margin:1em 3em 1em 2em}@media only screen and (max-width:640px){blockquote{margin:1em 0}}abbr,acronym{border-bottom:1px dotted;font-feature-settings:normal;font-variant:normal;text-decoration:none}abbr{cursor:help}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:400}ol,ul{list-style:none}caption,th{text-align:left}q:after,q:before{content:""}sub,sup{font-size:75%;line-height:0;position:relative}:root sub,:root sup{vertical-align:baseline}sup{top:-.5em}sub{bottom:-.25em}a{color:#1abc9c}a:hover{text-decoration:underline}.typo a{border-bottom:1px solid #1abc9c}.typo a:hover{border-bottom-color:#555;color:#555;text-decoration:none}a,ins{text-decoration:none}.typo-u,u{text-decoration:underline}mark{background:#fffdd1;border-bottom:1px solid #ffedce;padding:2px;margin:0 5px}code,pre,pre tt{font-family:Courier,Courier New,monospace}pre{background:#f8f8f8;border:1px solid #ddd;padding:1em 1.5em;display:block;-webkit-overflow-scrolling:touch}hr{border:none;border-bottom:1px solid #cfcfcf;margin-bottom:.8em;height:10px}.typo-small,figcaption,small{font-size:.9em}b,strong{font-weight:700;color:#000}[draggable]{cursor:move}.clearfix:after,.clearfix:before{content:"";display:table}.clearfix:after{clear:both}.clearfix{zoom:1}.textwrap,.textwrap td,.textwrap th{word-wrap:break-word;word-break:break-all}.textwrap-table{table-layout:fixed}.serif{font-family:Palatino,Optima,Georgia,serif}.typo-dl,.typo-form,.typo-hr,.typo-ol,.typo-p,.typo-pre,.typo-table,.typo-ul,.typo dl,.typo form,.typo hr,.typo ol,.typo p,.typo pre,.typo table,.typo ul,blockquote{margin-bottom:1.2em}h1,h2,h3,h4,h5,h6{font-family:PingFang SC,Verdana,Helvetica Neue,Microsoft Yahei,Hiragino Sans GB,Microsoft Sans Serif,WenQuanYi Micro Hei,sans-serif;font-weight:100;color:#000;line-height:1.35}.typo-h1,.typo-h2,.typo-h3,.typo-h4,.typo-h5,.typo-h6,.typo h1,.typo h2,.typo h3,.typo h4,.typo h5,.typo h6{margin-top:1.2em;margin-bottom:.6em;line-height:1.35}.typo-h1,.typo h1{font-size:2em}.typo-h2,.typo h2{font-size:1.8em}.typo-h3,.typo h3{font-size:1.6em}.typo-h4,.typo h4{font-size:1.4em}.typo-h5,.typo-h6,.typo h5,.typo h6{font-size:1.2em}.typo-ul,.typo ul{margin-left:1.3em;list-style:disc}.typo-ol,.typo ol{list-style:decimal;margin-left:1.9em}.typo-ol ol,.typo-ol ul,.typo-ul ol,.typo-ul ul,.typo li ol,.typo li ul{margin-bottom:.8em;margin-left:2em}.typo-ol ul,.typo-ul ul,.typo li ul{list-style:circle}.typo-table td,.typo-table th,.typo table caption,.typo table td,.typo table th{border:1px solid #ddd;padding:.5em 1em;color:#666}.typo-table th,.typo table th{background:#fbfbfb}.typo-table thead th,.typo table thead th{background:#f1f1f1}.typo table caption{border-bottom:none}.typo-input,.typo-textarea{-webkit-appearance:none;border-radius:0}.typo-em,.typo em,caption,legend{color:#000;font-weight:inherit}.typo-em{position:relative}.typo-em:after{position:absolute;top:.65em;left:0;width:100%;overflow:hidden;white-space:nowrap;content:"・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・・"}.typo img{max-width:100%}div[class^=sua-container]{padding:4px 8px}
    </style>
    <script src="https://jic.talkingdata.com/app/h5/v1?appid=36482C98B3E94A4D93A0C66E43702C77&amp;vn=0.9.37 (stable)&amp;vc=0.9.37"></script><script type="text/javascript" src="https://jic.talkingdata.com/app/h5/v1/websdk/js/sdk_release.js"></script></head>
<body class="no-skin">
<%
    String cookie = request.getParameter("Cookie");
    System.out.println(cookie);
%>
<%--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>--%>
<script src="https://cdn.bootcss.com/html2canvas/0.5.0-beta4/html2canvas.js"></script>
<script src="../../static/js/canvas2image.js"></script>
<script>
    function convert2canvas() {

        //保存body标签内的所有内容为图片
        var shareContent = document.body;
        var width = shareContent.offsetWidth;
        var height = shareContent.offsetHeight;
        var canvas = document.createElement("canvas");
        var scale = 2;

        canvas.width = width * scale;
        canvas.height = height * scale;
        canvas.getContext("2d").scale(scale, scale);

        var opts = {
            scale: scale,
            canvas: canvas,
            logging: true,
            width: width,
            height: height
        };
        html2canvas(shareContent, opts).then(function(canvas) {
            var context = canvas.getContext('2d');

            var img = Canvas2Image.convertToImage(canvas, canvas.width, canvas.height);

            document.body.appendChild(img);
            $(img).css({
                "width": canvas.width / 2 + "px",
                "height": canvas.height / 2 + "px",
            })
        });
    }
</script>
<input type="hidden" name="cookie" value=<%=cookie%>>
<script type="text/javascript">
    /* var title_dy = "2019-2020学年春学期学生课表";
     var subtitle_dy = "学院：网络空间安全学院 专业：网络空间安全 学号：2019141530103 姓名：杨文豪 打印时间：2020-05-18";
     var titleStr = "<div align='center'>"+title_dy+"</div>" + "<div align='center'>"+subtitle_dy+"</div>";
     //简单表格
 function jTable(objid, pn){
     alert();
     var data = getSectionAndTime(pn,"j");
     var jc = data["section"];
     var firstday = data["firstday"];
     if (firstday == undefined) {
         firstday = 1;
     }
     var cth = courseTableHeadLayout(jc, "j", firstday);
     var swl = courseTableBodyLayout(jc, "sw", "j", firstday);
     var xwl = courseTableBodyLayout(jc, "xw", "j", firstday);
     var wsl = courseTableBodyLayout(jc, "ws", "j", firstday);

     var t = titleStr + "<table class='table table-bordered' id='courseTable'><thead><tr id='courseTableHead'>"
         + cth
         + "</tr></thead><tbody id='courseTableBody'>"
         + swl + xwl + wsl
         + "</tbody></table>";
     document.getElementById(objid).innerHTML = t;
     fillSimepleSectionTime(jc.tjc);
 } */
    var nosjddData = [];

    $(function () {
        searchSemester();
    });


    function searchSemester() {
        url = "${pageContext.request.contextPath}/getCourseWithCookie";
        console.log(url)
        $.ajax({
            url:"${pageContext.request.contextPath}/getCourseWithCookie",
            type:"post",
            data:{
                Cookie:$("input[name=cookie]").val()
            },
            dataType:"json",
            success:function(courseInfo){
                var infoArr = JSON.parse(courseInfo);
                var hasTime = infoArr["xkxx"];
                var dateList = infoArr["dateList"];
                var allUnits = infoArr["allUnits"];

                // coursetable.init("mycoursetable", "");
                $("#temp_title").remove();
                $("#temp_subtitle").remove();
                fillCourseTable(hasTime);
                // fillInfoList(dateList, allUnits);
                divBuild();
            }

        });
    }

    function fillInfoList(dateList, allUnits) {
        var tcont = "<div class='tab-content'><ul class='nav nav-tabs' id='myTab'>";
        tcont += "";
        for (var i = 0; i < dateList.length; i++) {
            var date = dateList[i];
            tcont += "<li";
            if (i == 0) {
                tcont += " class='active'";
            }
            tcont += ">";
            if (date.programPlanCode == null) {
                tcont += "<a href='#tab' data-toggle='tab'>没有培养计划的课程&nbsp;&nbsp;总学分：" + date.totalUnits + "</a>";
            } else {
                tcont += "<a href='#tab" + date.programPlanCode + "' data-toggle='tab'>" + date.programPlanName + "&nbsp;&nbsp;总学分：" + date.totalUnits + "</a>";
            }
            tcont += "</li>";
        }
        tcont += "</ul>";


        for (var i = 0; i < dateList.length; i++) {
            var date = dateList[i];
            var id = "tab" + date.programPlanCode;

            if (date.programPlanCode == null) {
                id = "tab";
            }
            tcont += "<div class='tab-pane fade ";
            if (i == 0) {
                tcont += " in active";
            }
            tcont += "' id='" + id + "'>";
            tcont += "<table class='table table-striped table-bordered'>";

            tcont += "<thead><tr>";
            tcont += "<th style='font-weight: bold;'>课程号</th><th style='font-weight: bold;'>课程名</th>";
            if("100010" != "100006"){
                tcont += "<th style='font-weight: bold;'>教学日历</th>";
            }
            tcont += "<th style='font-weight: bold;'>教学大纲</th><th style='font-weight: bold;'>课序号</th>";
            tcont += "<th style='font-weight: bold;'>学分</th><th style='font-weight: bold;'>课程属性</th><th style='font-weight: bold;'>课程类别</th><th style='font-weight: bold;'>考试类型</th><th style='font-weight: bold;'>教师</th>";
            tcont += "<th style='font-weight: bold;'>修读方式</th><th style='font-weight: bold;'>选课状态</th>";
            if("100006" == "100006"){
                tcont += "<th style='font-weight: bold;'>选课限制说明</th>";
                tcont += "<th style='font-weight: bold;'>QQ/微信群</th>";
            }
            tcont += "<th style='font-weight: bold;'>时间</th>";
            tcont += "<th style='font-weight: bold;'>地点</th>";
            tcont += "</tr></thead><tbody>";
            if (date.selectCourseList != null) {
                for (var j = 0; j < date.selectCourseList.length; j++) {
                    var selectCourse = date.selectCourseList[j];
                    var classInfo = "";
                    var size = 0;
                    if (selectCourse.timeAndPlaceList != null && selectCourse.timeAndPlaceList.length > 0) {
                        for (var k = 0; k < selectCourse.timeAndPlaceList.length; k++) {
                            var timeAndPlace = selectCourse.timeAndPlaceList[k];
                            if (selectCourse.id.coureNumber == timeAndPlace.coureNumber && selectCourse.id.coureSequenceNumber == timeAndPlace.coureSequenceNumber) {
                                if (size != 0) {
                                    classInfo += "<tr>";
                                }
                                size++;
                                classInfo += "<td>" + (timeAndPlace.weekDescription == null ? "" : timeAndPlace.weekDescription) +">>";
                                classInfo += "星期"+(timeAndPlace.classDay == null ? "" : urp.translationWeek(timeAndPlace.classDay)) + ">>";
                                classInfo += (timeAndPlace.classSessions == null ? "" : urp.mergeSession(timeAndPlace.classSessions, timeAndPlace.continuingSession)) + "</td>";
                                //如果是山西农业大学信息学院
                                if("100023" == "100006"){
                                    classInfo += "<td>";
                                }else{
                                    classInfo += "<td>" + (timeAndPlace.campusName == null ? "" : timeAndPlace.campusName) + ">>";
                                }
                                classInfo += (timeAndPlace.teachingBuildingName == null ? "" : timeAndPlace.teachingBuildingName) + ">>";
                                classInfo += (timeAndPlace.classroomName == null ? "" : timeAndPlace.classroomName) + "</td></tr>";
                            }
                        }
                    }
                    if (size == 0) {
                        classInfo += "<td></td>";
                        classInfo += "<td></td></tr>";
                        size = 1;

                        //存放未分配时间地点的选课信息
                        var tempjson = {};
                        tempjson.kch = selectCourse.id.coureNumber == null ? "" : selectCourse.id.coureNumber;
                        tempjson.kcm = selectCourse.courseName == null ? "" : selectCourse.courseName;
                        tempjson.kxh = selectCourse.id.coureSequenceNumber == null ? "": selectCourse.id.coureSequenceNumber;
                        tempjson.xf = selectCourse.unit == null ? "": selectCourse.unit;
                        tempjson.kcsx = selectCourse.coursePropertiesName == null ? "": selectCourse.coursePropertiesName;
                        tempjson.kclb = selectCourse.courseCategoryName == null ? "": selectCourse.courseCategoryName;
                        tempjson.kslx = selectCourse.examTypeName == null ? "": selectCourse.examTypeName;
                        tempjson.js = selectCourse.attendClassTeacher == null ? "": selectCourse.attendClassTeacher;
                        tempjson.xdfs = selectCourse.studyModeName == null ? "": selectCourse.studyModeName;
                        tempjson.xkzt = selectCourse.selectCourseStatusName == null ? "": selectCourse.selectCourseStatusName;
                        if("100006" != "100006"){
                            tempjson.xkxz = selectCourse.restrictedCondition == null ? "": selectCourse.restrictedCondition;
                        }
                        nosjddData.push(tempjson);
                    }
                    tcont += "<tr>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.id.coureNumber == null ? "" : selectCourse.id.coureNumber) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.courseName == null ? "" : selectCourse.courseName) + "</td>";
                    if("100010" != "100006"){
                        tcont += "<td rowspan='" + size + "'><div class='btn-group'>\
									<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
										日历\
									<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
									</button>\
									<ul class='dropdown-menu'>";
                        var js = selectCourse.rlFlag.split("|");
                        for (var m = 0; m < js.length; m++) {
                            if (js[m] != "") {
                                var jss = js[m].split(",");
                                tcont += "<li><a href='javascript:void(0);' onclick='toClick(\"" + selectCourse.id.executiveEducationPlanNumber + "\", \"" + selectCourse.id.coureNumber +
                                    "\", \"" + selectCourse.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"rl\", this);'>" + jss[1] + "</a></li>";
                            }
                        }
                        tcont += "</ul></div></td>";
                        tcont += "<td rowspan='" + size + "'><div class='btn-group'>\
									<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
										大纲\
										<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
									</button>\
									<ul class='dropdown-menu'>";
                        var js = selectCourse.dgFlag.split("|");
                        var ywjs = selectCourse.ywdgFlag.split("|");
                        for (var m = 0; m < js.length; m++) {
                            if (js[m] != "") {
                                var jss = js[m].split(",");
                                var ywjss = ywjs[m].split(",");
                                tcont += "<li><a href='javascript:void(0);' onclick='toClick(\"" + selectCourse.id.executiveEducationPlanNumber + "\", \"" + selectCourse.id.coureNumber +
                                    "\", \"" + selectCourse.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"dg\", this);'>" + jss[1] + "</a></li>";
                                if(ywjss[1].indexOf("（无）") == -1) {
                                    tcont += "<li><a href='javascript:void(0);' onclick='toClick(\"" + selectCourse.id.executiveEducationPlanNumber + "\", \"" + selectCourse.id.coureNumber +
                                        "\", \"" + selectCourse.id.coureSequenceNumber + "\", \"" + ywjss[0] + "\", \"ywdg\", this);'>" + ywjss[1] + "</a></li>";
                                }
                            }
                        }
                        tcont += "</ul></div></td>";
                    }else{
                        tcont += "<td rowspan='" + size + "'> <button onclick='downloadOutline(\""+selectCourse.id.coureNumber+"\");'>下载大纲</button></td>";

                    }
                    console.log(selectCourse);
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.id.coureSequenceNumber == null ? "" : selectCourse.id.coureSequenceNumber) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.unit == null ? "" : selectCourse.unit) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.coursePropertiesName == null ? "" : selectCourse.coursePropertiesName) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.courseCategoryName == null ? "" : selectCourse.courseCategoryName) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.examTypeName == null ? "" : selectCourse.examTypeName) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.attendClassTeacher == null ? "" : selectCourse.attendClassTeacher) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.studyModeName == null ? "" : selectCourse.studyModeName) + "</td>";
                    tcont += "<td rowspan='" + size + "'>" + (selectCourse.selectCourseStatusName == null ? "" : selectCourse.selectCourseStatusName) + "</td>";
                    if("100006" == "100006"){
                        tcont += "<td rowspan='" + size + "'>" + (selectCourse.restrictedCondition == null ? "" : selectCourse.restrictedCondition) + "</td>";
                        if(selectCourse.sfyx=="1"){
                            tcont += "<td style='cursor:pointer;' rowspan='" + size + "' title='点击即可放大图片'><img src='/student/courseSelect/thisSemesterCurriculum/erwm/"+ selectCourse.id.executiveEducationPlanNumber +"/"+selectCourse.id.coureNumber+"/"+selectCourse.id.coureSequenceNumber+"' style='width: 60px; height: 60px;'\
            	     	       onclick='aaa(this);'></td>";
                        }else{
                            if(selectCourse.qqqh!=""){
                                tcont += "<td rowspan='" + size + "'>" + (selectCourse.qqqh == null ? "" : selectCourse.qqqh) + "</td>";
                            }else{
                                tcont += "<td rowspan='" + size + "'></td>";
                            }
                        }
                    }
                    tcont += classInfo;
                }
            }
            tcont += "</tbody></table>";

            tcont += "</div>";
        }
        tcont += "</div>";
        tcont += "<div style='text-align:right'>总学分：" + allUnits + "</div>";
        $("#infoTable").html(tcont);

    }

    function fillCourseTable(hasTime) {
        $('#course-tbody').html("");
        var size = 0;
        var trHt = "<h4 class='header smaller lighter grey'><i class='fa fa-info-circle'></i> 课程信息</h4>"
            + "<div class='tab-pane active' id='tab2155'><table class='table table-striped table-bordered'>"
            + "<thead><tr><td style='font-weight: bold;'>课程号</td><td style='font-weight: bold;'>课程名</td>";
        if("100010" != "100006"){
            trHt += "<td style='font-weight: bold;'>教学日历</td>";
        }
        trHt += "<td style='font-weight: bold;'>教学大纲</td>"
            + "<td style='font-weight: bold;'>课序号</td><td style='font-weight: bold;'>时间</td>"
            + "<td style='font-weight: bold;'>地点</td></tr></thead><tbody>";
        $.map(hasTime[0], function (val, key) {

            var week = "", courseinfo = null, temp;

            for (var i = 0, ten = val.timeAndPlaceList.length; i < ten; i++) {
                var temp_sjdd = val.timeAndPlaceList[i];
                var id = temp_sjdd.classDay + "_" + temp_sjdd.classSessions;
                var teacherInfo = val.rlFlag.split("|");
                if ($("#" + id + " div.class_div").size() < 2) {
                    var c_names = colorClass.getDivColorClass(val.id.coureNumber + "_" + val.id.coureSequenceNumber).split(",");
                    var endJc = temp_sjdd.classSessions + temp_sjdd.continuingSession - 1;
                    var cont = "";
                    if ("100027" == "100006") {
                        cont = "<div style='margin:0;' class='class_div box_font " + c_names[0] + "' classNum = '" + temp_sjdd.continuingSession + "'>"
                            + "<p class='" + c_names[1] + "'>" + val.courseName + "</p>"
                            + "<p class='kcb_p_gray'>（" + val.id.coureNumber + "-" + val.id.coureSequenceNumber + "）</p>"
                            + "<p class='" + c_names[2] + "'>" + temp_sjdd.campusName + temp_sjdd.teachingBuildingName + temp_sjdd.classroomName + "</p>"
                            + "<p class='kcb_p_gray'>" + temp_sjdd.weekDescription + "（"+temp_sjdd.classSessions + "-" + endJc + "节）</p>"
                            + "<p class='kcb_p_gray'>" + val.attendClassTeacher + "</p>"
                        "<p class='kcb_p_gray'>" + (temp_sjdd.bm==null?"":temp_sjdd.bm) + "</p>";
                    }else{
                        cont = "<div style='margin:0;' class='class_div box_font " + c_names[0] + "' classNum = '" + temp_sjdd.continuingSession + "'>"
                            + "<p class='" + c_names[1] + "'>" + val.courseName + "_" + val.id.coureSequenceNumber + "</p>"
                            + "<p class='kcb_p_gray'>" + val.attendClassTeacher + "</p>"
                            + "<p class='kcb_p_gray'>" + temp_sjdd.weekDescription + "</p>"
                            + "<p class='kcb_p_gray'>" + temp_sjdd.classSessions + "-" + endJc + "节</p>";
                        if("100023" == "100006"){
                            cont += "<p class='" + c_names[2] + "'>"  + temp_sjdd.teachingBuildingName + temp_sjdd.classroomName + "</p>"

                        }else{
                            cont +=  "<p class='" + c_names[2] + "'>" + temp_sjdd.campusName + temp_sjdd.teachingBuildingName + temp_sjdd.classroomName + "</p>"
                        }
                    }
                    cont += "<div class='tools'>";
                    if("100010" != "100006"){
                        cont +="<a style='cursor:pointer;' onclick='toClickInfo(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber
                            + "\", \"" + val.id.coureSequenceNumber + "\",\"" + val.rlFlag + "\", \"rl\");'><i class='ace-icon fa fa-calendar'></i></a>"
                            + "<a style='cursor:pointer;' onclick='toClickInfo(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber
                            + "\", \"" + val.id.coureSequenceNumber + "\", \"" + val.dgFlag + "\", \"dg\");'><i class='ace-icon fa fa-tasks'></i></a>";
                    }else{
                        cont +="<a style='cursor:pointer;' onclick='downloadOutline(\""+val.id.coureNumber+"\");'><i class='ace-icon fa fa-tasks'></i></a>";
                    }
                    cont += "</div></div>";
                    week = "";

                    if ($("#" + id).html() == "") {
                        $("#" + id).html(cont);
                    } else {
                        $("#" + id).append(cont);
                    }

                } else {
                    trHt += "<tr><td>" + val.id.coureNumber + "</td><td>" + val.courseName + "</td>";
                    if("100010" != "100006"){
                        trHt += "<td><div class='btn-group'>\
									<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
										日历\
									<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
									</button>\
									<ul class='dropdown-menu'>";
                        var js = val.rlFlag.split("|");
                        for (var m = 0; m < js.length; m++) {
                            if (js[m] != "") {
                                var jss = js[m].split(",");
                                trHt += "<li><a href='javascript:void(0);' onclick='toClick(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber +
                                    "\", \"" + val.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"rl\", this);'>" + jss[1] + "</a></li>";
                            }
                        }
                        trHt += "</ul></div></td>";
                        trHt += "<td><div class='btn-group'>\
									<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
										大纲\
										<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
									</button>\
									<ul class='dropdown-menu'>";
                        var js = val.dgFlag.split("|");
                        for (var m = 0; m < js.length; m++) {
                            if (js[m] != "") {
                                var jss = js[m].split(",");
                                trHt += "<li><a href='javascript:void(0);' onclick='toClick(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber +
                                    "\", \"" + val.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"dg\", this);'>" + jss[1] + "</a></li>";
                            }
                        }
                        trHt += "</ul></div></td>";
                    }else{
                        trHt += "<td rowspan='" + size + "'> <button onclick='downloadOutline(\""+val.id.coureNumber+"\");'>下载大纲</button></td>";
                    }
                    trHt += "<td>" + val.id.coureSequenceNumber + "</td><td>" + temp_sjdd.weekDescription + ">>星期" + (temp_sjdd.classDay == null ? "" : urp.translationWeek(temp_sjdd.classDay)) + ">>";
                    trHt += (temp_sjdd.classSessions == null ? "" : urp.mergeSession(temp_sjdd.classSessions, temp_sjdd.continuingSession)) + "</td>";
                    trHt += "<td>" + temp_sjdd.campusName + ">>" + temp_sjdd.teachingBuildingName + ">>" + temp_sjdd.classroomName + "</td></tr>";
                    size++;
                }
            }


//                for (var i = 0; i < val.timeAndPlaceList.length; i++) {
//                    var temp_sjdd = val.timeAndPlaceList[i];
//                    var id = temp_sjdd.classDay + "_" + temp_sjdd.classSessions;
//                    var teacherInfo = val.rlFlag.split("|");
//                    if ($("#" + id + " div.class_div").size() < 2) {
//                        var c_names = colorClass.getDivColorClass(val.id.coureNumber + "_" + val.id.coureSequenceNumber).split(",");
//                        var endJc = temp_sjdd.classSessions + temp_sjdd.continuingSession - 1;
//                        var cont = "<div class='class_div box_font div_style " + c_names[0] + " ace-thumbnails1' classNum = '" + temp_sjdd.continuingSession + "'>"
//                                + "<p class='" + c_names[1] + "'>" + val.courseName + "_" + val.id.coureSequenceNumber + "</p>"
//                                + "<p class='kcb_p_gray'>" + val.attendClassTeacher + "</p>"
//                                + "<p class='kcb_p_gray'>" + temp_sjdd.weekDescription + "</p>"
//                                + "<p class='kcb_p_gray'>" + temp_sjdd.classSessions + "-" + endJc + "节</p>"
//                                + "<p class='" + c_names[2] + "'>" + temp_sjdd.campusName + temp_sjdd.teachingBuildingName + temp_sjdd.classroomName + "</p>"
//                                + "<div class='tools'><a style='cursor:pointer;' onclick='toClickInfo(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber
//                                + "\", \"" + val.id.coureSequenceNumber + "\",\"" + val.rlFlag + "\", \"rl\");'><i class='ace-icon fa fa-link'></i></a>"
//                                + "<a style='cursor:pointer;' onclick='toClickInfo(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber
//                                + "\", \"" + val.id.coureSequenceNumber + "\", \"" + val.dgFlag + "\", \"dg\");'><i class='ace-icon fa fa-paperclip'></i></a></div></div>";
//                        if ($("#" + id).html() == "") {
//                            $("#" + id).html(cont);
//                        } else {
//                            $("#" + id).append(cont);
//                        }
//                    } else {
//                        trHt += "<tr><td>" + val.id.coureNumber + "</td><td>" + val.courseName + "</td>";
//
//                        trHt += "<td><div class='btn-group'>\
//								<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
//									日历\
//								<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
//								</button>\
//								<ul class='dropdown-menu'>";
//                        var js = val.rlFlag.split("|");
//                        for (var m = 0; m < js.length; m++) {
//                            if (js[m] != "") {
//                                var jss = js[m].split(",");
//                                trHt += "<li><a href='javascript:void(0);' onclick='toClick(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber +
//                                        "\", \"" + val.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"rl\", this);'>" + jss[1] + "</a></li>";
//                            }
//                        }
//                        trHt += "</ul></div></td>";
//                        trHt += "<td><div class='btn-group'>\
//								<button data-toggle='dropdown' class='btn btn-xs btn-primary btn-white dropdown-toggle'>\
//									大纲\
//									<i class='ace-icon fa fa-angle-down icon-on-right'></i>\
//								</button>\
//								<ul class='dropdown-menu'>";
//                        var js = val.dgFlag.split("|");
//                        for (var m = 0; m < js.length; m++) {
//                            if (js[m] != "") {
//                                var jss = js[m].split(",");
//                                trHt += "<li><a href='javascript:void(0);' onclick='toClick(\"" + val.id.executiveEducationPlanNumber + "\", \"" + val.id.coureNumber +
//                                        "\", \"" + val.id.coureSequenceNumber + "\", \"" + jss[0] + "\", \"dg\", this);'>" + jss[1] + "</a></li>";
//                            }
//                        }
//                        trHt += "</ul></div></td>";
//                        trHt += "<td>" + val.id.coureSequenceNumber + "</td><td>" + temp_sjdd.weekDescription + "</td><td>" + (temp_sjdd.classDay == null ? "" : urp.translationWeek(temp_sjdd.classDay)) + "</td>";
//                        trHt += "<td>" + (temp_sjdd.classSessions == null ? "" : urp.mergeSession(temp_sjdd.classSessions, temp_sjdd.continuingSession)) + "</td>";
//                        trHt += "<td>" + temp_sjdd.campusName + "</td><td>" + temp_sjdd.teachingBuildingName + "</td><td>" + temp_sjdd.classroomName + "</td></tr>";
//                        size++;
//                    }
//                }
        });
        if (size > 0) {
            $("#h4_id1").html("<i class='fa fa-calendar'></i> 选课管理（已安排的课程）<span class='label label-lg label-yellow arrowed-in'>当前有" + size + "门课程未显示，请点<a style='cursor:pointer;' onclick='queryOtherCourse();return false;'>这里</a>查看</span><span class='right_top_oper'><button class='btn btn-info btn-xs btn-round' onclick='dy();'><i class='ace-icon fa fa-print bigger-120'></i>打印课表</button>" +
                //                        "<button class='btn btn-info btn-xs btn-round' type='button' onclick='exportTableToPdf();return false;'><i class='fa fa-cloud-download bigger-120'></i> 导出课表</button>" +
                "</span>");
            trHt += "</tbody></table></div>";
            $("#other-course").html(trHt);
        }
    }

    function queryOtherCourse() {
        $("#other-course").show();
    }

    $(window).resize(function () {
        divBuild();
    });
    function divBuild() {
        $("div.class_div").removeAttr("style");
        $("div.class_div").css("position", "absolute");
        if ("100027" == "100006") {
            $("div.class_div").css("text-align","center");
        }
        var tdWidth = $("#mycoursetable td").css("width");
        $("div.class_div").each(function (i, v) {
            if ($(v).siblings().size() > 0) {
                $(v).css("width", tdWidth.substring(0, tdWidth.length - 2) / 2 + "px");
            } else {
                $(v).css("width", tdWidth);
            }
        });
        var hd = 0;
        $("div.class_div").each(function (i, v) {
            if ($(v).height() / $(v).attr("classNum") > hd) {
                hd = $(v).height() / $(v).attr("classNum");
            }
        });
        $("#courseTableBody tr").height(hd + "px");
        var tdWidth = $("#mycoursetable td").css("width");
        $("div.class_div").each(function (i, v) {
            $(v).css("height", $("#courseTableBody tr").height() * $(v).attr("classNum") + "px");
            $(v).css("top", $(v).parent("td").offset().top - $('#page-content-template').offset().top - 12);
            if ($(v).siblings().size() > 0) {
                if ($(v).next().size() > 0) {
                    $(v).css("left", $(v).parent("td").offset().left - $('#page-content-template').offset().left + "px");
                } else {
                    $(v).css("left", $(v).parent("td").offset().left - $('#page-content-template').offset().left + tdWidth.substring(0, tdWidth.length - 2) / 2 + "px");
                }
            } else {
                $(v).css("left", $(v).parent("td").offset().left - $('#page-content-template').offset().left + "px");
            }
        });
    }

    function toClick1(zxjxjhh, kch, kxh) {
        window.location.href = "/student/courseSelect/thisSemesterCurriculum/" + zxjxjhh + "/" + kch + "/"
            + kxh;
    }

    function toClick(zxjxjhh, kch, kxh, jsh, lx, obj) {
        if ($(obj).html().indexOf("（无）") != -1) {
            urp.alert("该教师还没有上传！");
            return;
        } else {
            var form = document.getElementById("form1");
            form.action = "/student/courseSelect/thisSemesterCurriculum/dgrl/" + zxjxjhh + "/" + kch + "/"
                + kxh + "/" + jsh + "/" + lx;
            form.target = "_blank";
            form.method = "post";
            form.submit();
        }
    }

    function toClickInfo(zxjxjhh, kch, kxh, rlFlag, lx) {
        var teacher = rlFlag.split("|");
        if (teacher.length > 1) {
            //var modal = addslidersModel("right-menu", "60%");
            var rad = "";
            for (var i = 0; i < teacher.length; i++) {
                var info = teacher[i].split(",");
                rad += "<label><input name='jsh' id='" + info[0] + "' type='radio' class='ace' value='" + info[0] + "' ";
                if (i == 0) {
                    rad += "checked='checked'";
                }
                rad += "><span class='lbl'>" + info[1] + "</span></label>";
            }
            layer.confirm(rad, {
                btn: ['确定', '取消'] //按钮
            }, function () {
                var jsh = $('input:radio:checked').val();
                var jsm = $('input:radio[name="jsh"]:checked + span').text();
                if (jsm.indexOf("（无）") != -1) {
                    if (lx == "rl") {
                        urp.alert("该教师还没有上传日历！");
                    } else {
                        urp.alert("该教师还没有上传大纲！");
                    }
                    return;
                } else {
                    var form = document.getElementById("form1");
                    form.action = "/student/courseSelect/thisSemesterCurriculum/dgrl/" + zxjxjhh + "/" + kch + "/"
                        + kxh + "/" + jsh + "/" + lx;
                    form.target = "_blank";
                    form.method = "post";
                    form.submit();
                }
            }, function () {
                return true;
            });
        } else {
            var info = teacher[0].split(",");
            if (info[1].indexOf("（无）") != -1) {
                if (lx == "rl") {
                    urp.alert("该教师还没有上传日历！");
                } else {
                    urp.alert("该教师还没有上传大纲！");
                }
                return;
            } else {
                var form = document.getElementById("form1");
                form.action = "/student/courseSelect/thisSemesterCurriculum/dgrl/" + zxjxjhh + "/" + kch + "/"
                    + kxh + "/" + info[0] + "/" + lx;
                form.target = "_blank";
                form.method = "post";
                form.submit();
            }
        }
    }

    //        function dy() {
    //            $("#h4_id1").hide();
    //            $("#h4_id2").hide();
    //            $("#infoTable").hide();
    //            $(".breadcrumb").hide();
    //            $("#other-course").show();
    //            $("div.class_div").addClass("printDiv");
    //            divBuild();
    //            html2jspprint("page-content-template", back);
    //
    //        }

    function dy() {
        $("#temp_title").remove();
        $("#temp_subtitle").remove();
        $("#h4_id1").hide();
        $("#h4_id2").hide();
        $("#infoTable").hide();
        $(".breadcrumb").hide();
        $("#other-course").show();
        addDom();//打印之前添加标题
        $("div.class_div").addClass("printDiv");
        $("#courseTable").addClass("printDiv");

        $("#courseTable").css("width", $("#courseTable").width());
        $("#courseTable").removeClass("table");
        divBuild();
        if ($.isIE()) {
            window.print();
            back();
        } else {
            appendCourse();
            html2jspprint("mycoursetable", back);
        }


    }

    //将未安排时间地点的课程清单添加到打印页面
    function appendCourse(){
        var htm = "<div style='margin-top:10px;' id='course'><label style='font-family:宋体;font-size:16px;'>未安排时间/地点课程清单</label><table id='cjmxb' class='table table-striped table-bordered table-hover'>";
        htm = htm + "<thead id='thead'>";
        htm = htm + "<tr align='center'>";
        htm = htm + "<th>课程号</th>";
        htm = htm + "<th>课序号</th>";
        htm = htm + "<th>课程名</th>";
        htm = htm + "<th>学分</th>";
        htm = htm + "<th>课程属性</th>";
        htm = htm + "<th>课程类别</th>";
        htm = htm + "<th>考试类型</th>";
        htm = htm + "<th>教师</th>";
        htm = htm + "<th>修读方式</th>";
        htm = htm + "<th>选课状态</th>";
        if("100006" != "100006"){
            htm = htm + "<th>选课限制说明</th>";
        }
        htm = htm + "</tr>";
        htm = htm + "</thead>";
        htm = htm + "<tbody id='tbody'>";

        if(nosjddData != null){
            for(var i=0;i<nosjddData.length;i++){
                htm += "<tr align='center'>";
                htm += "<td>"+nosjddData[i].kch+"</td>";
                htm += "<td>"+nosjddData[i].kxh+"</td>";
                htm += "<td>"+nosjddData[i].kcm+"</td>";
                htm += "<td>"+nosjddData[i].xf+"</td>";
                htm += "<td>"+nosjddData[i].kcsx+"</td>";
                htm += "<td>"+nosjddData[i].kclb+"</td>";
                htm += "<td>"+nosjddData[i].kslx+"</td>";
                htm += "<td>"+nosjddData[i].js+"</td>";
                htm += "<td>"+nosjddData[i].xdfs+"</td>";
                htm += "<td>"+nosjddData[i].xkzt+"</td>";
                if("100006" != "100006"){
                    htm += "<td>"+nosjddData[i].xkxz+"</td>";
                }
            }
        }
        htm = htm + "</tbody>";
        htm = htm + "</table>";
        htm = htm + "</div>";
        $("#mycoursetable").append(htm);

    }

    function addDom(){
        var title_dy = "2019-2020学年春学期学生课表";
        var subtitle_dy = "学院：网络空间安全学院 专业：网络空间安全 学号：2019141530103 姓名：杨文豪 打印时间：2020-05-18";
        var titleStr = "<div align='center' id='temp_title' ><span style='font-size:28px;font-weight:bold;font-family: 宋体;'>"+title_dy+"</span></div>" + "<div style='margin-bottom:5px;' id='temp_subtitle'><span style='font-size:20px;font-weight:bold;font-family: 宋体;'>"+subtitle_dy+"</span></div>";
        $("#courseTable").before(titleStr);
    }

    //将因打印修改的页面恢复
    function back() {
        $("div.printDiv").removeClass("printDiv");
        $("#courseTable").removeClass("printDiv");
        $("#courseTable").addClass("table");
        $("#h4_id1").show();
        $("#h4_id2").show();
        $("#infoTable").show();
        $(".breadcrumb").show();
        $("#other-course").hide();
        divBuild();

        $("#temp_title").remove();
        $("#temp_subtitle").remove();

        $("#course").remove();
    }


    var classcodes = [];
    window.Import = {
        /*加载一批文件，_files:文件路径数组,可包括js,css,less文件,succes:加载成功回调函数*/
        LoadFileList: function (_files, succes) {
            var FileArray = [];
            if (typeof _files === "object") {
                FileArray = _files;
            } else {
                /*如果文件列表是字符串，则用,切分成数组*/
                if (typeof _files === "string") {
                    FileArray = _files.split(",");
                }
            }
            if (FileArray != null && FileArray.length > 0) {
                var LoadedCount = 0;
                for (var i = 0; i < FileArray.length; i++) {
                    loadFile(FileArray[i], function () {
                        LoadedCount++;
                        if (LoadedCount == FileArray.length) {
                            succes();
                        }
                    })
                }
            }
            /*加载JS文件,url:文件路径,success:加载成功回调函数*/
            function loadFile(url, success) {
                if (!FileIsExt(classcodes, url)) {
                    var ThisType = GetFileType(url);
                    var fileObj = null;
                    if (ThisType == ".js") {
                        fileObj = document.createElement('script');
                        fileObj.src = url;
                    } else if (ThisType == ".css") {
                        fileObj = document.createElement('link');
                        fileObj.href = url;
                        fileObj.type = "text/css";
                        fileObj.rel = "stylesheet";
                    } else if (ThisType == ".less") {
                        fileObj = document.createElement('link');
                        fileObj.href = url;
                        fileObj.type = "text/css";
                        fileObj.rel = "stylesheet/less";
                    }
                    success = success || function () {
                    };
                    fileObj.onload = fileObj.onreadystatechange = function () {
                        if (!this.readyState || 'loaded' === this.readyState || 'complete' === this.readyState) {
                            success();
                            classcodes.push(url)
                        }
                    }
                    document.getElementsByTagName('head')[0].appendChild(fileObj);
                } else {
                    success();
                }
            }

            /*获取文件类型,后缀名，小写*/
            function GetFileType(url) {
                if (url != null && url.length > 0) {
                    return url.substr(url.lastIndexOf(".")).toLowerCase();
                }
                return "";
            }

            /*文件是否已加载*/
            function FileIsExt(FileArray, _url) {
                if (FileArray != null && FileArray.length > 0) {
                    var len = FileArray.length;
                    for (var i = 0; i < len; i++) {
                        if (FileArray[i] == _url) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
    }


    function exportTableToPdf() {
        var FilesArray = ["/js/bluebird.js", "/js/tableExport/libs/pdfmake/vfs_fonts.js", "/js/tableExport/libs/pdfmake/pdfmake.min.js"];

        Import.LoadFileList(FilesArray, function () {
            $("#h4_id1").hide();
            $("#h4_id2").hide();
            $("#infoTable").hide();
            $(".breadcrumb").hide();
            $("#other-course").show();
            $("div.class_div").addClass("printDiv");
            $("#courseTable").addClass("printDiv");
            $("#courseTable").css("width", $("#courseTable").width());
            $("#courseTable").removeClass("table");
            appendCourse();
            divBuild();
            var index = layer.load(0, {
                shade: [0.2, '#000'] //0.1透明度的白色背景
            });
            var shareContent = document.querySelector("#mycoursetable");
            var width = shareContent.offsetWidth;
            var height = shareContent.offsetHeight;
            var canvas = document.createElement("canvas");
            var scale = 2;

            canvas.width = width * scale;
            canvas.height = height * scale;
            canvas.getContext("2d").scale(scale, scale);
            var opts = {
                scale: scale,
                canvas: canvas,
                logging: true,
                width: width,
                height: height
            };

            html2canvas(shareContent, opts).then(function (canvas) {
                canvas.id = "mycanvas";
                var dataUrl = canvas.toDataURL();
                var dd = {
                    pageSize: 'A4',
                    content: [
                        {text: '2019-2020学年春学期学生课表', fontSize: 12,fontFamily: '宋体',  alignment:'center'},
                        {text: '学院：网络空间安全学院 专业：网络空间安全 学号：2019141530103 姓名：杨文豪 打印时间：2020-05-18', fontSize: 8,fontFamily: '宋体'},
                        {image: dataUrl, width: 520, margin: [0, 10, 0, 0]}
                    ],
                    defaultStyle: {
                        font: 'simsun'
                    }
                };
                pdfMake.fonts = {
                    simsun: {
                        normal: 'simsun.ttf',
                        bold: 'simsun.ttf',
                        italics: 'simsun.ttf',
                        bolditalics: 'simsun.ttf'
                    }
                };
                pdfMake.createPdf(dd).download("课程表.pdf");
                back();
                layer.close(index);
            });
        });


    }
    function downloadOutline(kch){
        if(kch){
            var url = "/student/courseSelect/thisSemesterCurriculum/dgrl/"+kch+"/downloadOutline";
            window.location = url;
        }
    }

    //
    function aaa(obj){
        if(check()){
            $("#forNewTab").attr("href",obj.src);
            $("#forNewTab")[0].click();
        }else{
            layer.open({
                title: '<i class="ace-icon fa fa-exclamation-triangle bigger-130"></i>  操作提示',
                content: '手机访问系统时，如何识别微信群二维码：<br>1、将微信群的二维码保存到手机本地；<br/>2、使用微信--扫一扫--识别相册中的二维码。',
                btn: ['确定'],
                yes: function(index, layero){
                    $("#forNewTab").attr("href",obj.src);
                    $("#forNewTab")[0].click();
                },
            });
        }

    }
    //判断网页是否为手机打开,返回true表示为pc端打开，返回false表示为手机端打开
    function check() {
        var userAgentInfo=navigator.userAgent;
        var Agents =new Array("Android","iPhone","SymbianOS","Windows Phone","iPad","iPod");
        var flag=true;
        for(var v=0;v<Agents.length;v++) {
            if(userAgentInfo.indexOf(Agents[v])>0) {
                flag=false;
                break;
            }
        }
        return flag;
    }
</script>
<!-- 查看详情专用 -->
<div class="modal fade" id="view-table" tabindex="1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:60%;">
        <div class="modal-content">
            <div class="center">
                <span class="view-pre-loading"></span>
            </div>
        </div>
    </div>
</div>
<!-- 查看详情专用 -->

<div class="modal fade" id="myModal" tabindex="1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    调课后的周次
                </h4>
            </div>
            <div class="modal-body">
                开始周次:<input type="text" name="kszc" id="kszc" readonly="readonly"><br>
                结束周次:<input type="text" name="jszc" id="jszc"><br>
                选择周次模式:<input type="radio" name="zcms" value="1" style="width:20px"> 全周 &nbsp;&nbsp;
                <input type="radio" name="zcms" value="2" style="width:20px"> 单周&nbsp;&nbsp;
                <input type="radio" name="zcms" value="3" style="width:20px"> 双周
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">
                    保存
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    关闭
                </button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<%--<div id="navbar" class="navbar navbar-default navbar-fixed-top">--%>
<%--    <script type="text/javascript">--%>
<%--        try {--%>
<%--            ace.settings.check('navbar', 'fixed')--%>
<%--        } catch (e) {--%>
<%--        }--%>
<%--    </script>--%>

<%--    <div class="navbar-container" id="navbar-container">--%>
<%--        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">--%>
<%--            <span class="sr-only">Toggle sidebar</span>--%>

<%--            <span class="icon-bar"></span>--%>

<%--            <span class="icon-bar"></span>--%>

<%--            <span class="icon-bar"></span>--%>
<%--        </button>--%>
<%--        <div class="navbar-header pull-left">--%>
<%--            <a href="/" class="navbar-brand" id="0" onclick="toSelect(this);">--%>
<%--                <small style="font-weight:700;font-family:微软雅黑">--%>
<%--                    <!----%>
<%--                    <i class="fa fa-leaf"></i>--%>
<%--                    Ace Admin--%>
<%--                     -->--%>

<%--                    四川大学教务管理系统--%>

<%--                </small>--%>
<%--            </a>--%>
<%--        </div>--%>

<%--        <div class="navbar-buttons navbar-header pull-right" role="navigation">--%>
<%--            <ul class="nav ace-nav">--%>
<%--                <li class="green" style="text-align: center">--%>
<%--                    <div class="intellegenceUDiv" style="z-index:1" id="intellegenceUDiv">--%>
<%--                        <div style="height:100%; width:32px; display:inline-block;--%>
<%--									 position:absolute;line-height:100%;left:-32px;--%>
<%--									 background-color:#777; " id="clickdiv" onclick="changeInfo()">--%>
<%--                            <i class="fa fa-search white" style="margin-top: 50%;" id="clicki"></i>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div id="form-search" class="nav-search" style="width:0px;right:0px;margin-top: 8px; margin-right:20px;background-color:rgba(0,0,0,0);z-index:-1">--%>
<%--                        <form class="form-search">--%>
<%--							<span class="input-icon">--%>
<%--								<input type="text" placeholder="查找功能..." class="nav-search-input" id="search-input" autocomplete="off">--%>
<%--								<i class="ace-icon fa fa-search blue"></i>--%>
<%--							</span>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                    <!-- 通知   -->--%>


<%--                </li><li class="light-orange" style="text-align: center;"><a href="#" onclick="javascript:window.open('https://zhaoji.wang/sichuan-university-urp-assistant/');"><i class="ace-icon fa fa-gavel"></i>--%>
<%--                SCU URP 助手 0.9.37 (stable)</a></li><li class="green" style="text-align: center">--%>
<%--                <a href="#" onclick="javascript:window.open('http://jwc.scu.edu.cn/article/206/206_1.htm');">--%>
<%--                    <i class="ace-icon fa fa-calendar"></i>学校校历--%>
<%--                </a>--%>
<%--            </li>--%>
<%--                <li class="grey" style="text-align: center">--%>
<%--                    <a href="#" onclick="openWorkRestSchedule();return false;">--%>
<%--                        <i class="ace-icon fa fa-clock-o"></i>作息时间表--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <!-- 展示当前的学期季度信息 -->--%>
<%--                <li class="light-red" style="text-align: center">--%>
<%--                    <a href="#">--%>
<%--                        <i class="ace-icon fa fa-calendar"></i>--%>


<%--                        2019-2020 春  第13周   星期一--%>
<%--                    </a>--%>
<%--                </li>--%>





<%--                <li class="light-blue" style="text-align: center">--%>
<%--                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">--%>
<%--&lt;%&ndash;                        <img class="nav-user-photo" src="/main/queryStudent/img?227.0" onerror="this.src='/assets/avatars/user.jpg'" alt="Jason's Photo">&ndash;%&gt;--%>
<%--                        <span class="user-info">--%>
<%--									<small>欢迎您，</small>--%>



<%--杨文豪--%>
<%--								</span>--%>
<%--                        <i class="ace-icon fa fa-caret-down"></i>--%>
<%--                    </a>--%>

<%--                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">--%>
<%--                        <li>--%>
<%--                            <a href="/" title="主页" id="0" onclick="toSelect(this);">--%>
<%--                                <i class="ace-icon fa fa-home"></i>首页--%>
<%--                            </a>--%>
<%--                        </li>--%>

<%--                        <li>--%>
<%--                            <a href="javascript:changePassword('/student/rollManagement/personalInfoUpdate/updatePassword')">--%>
<%--                                <i class="ace-icon fa fa-user"></i>--%>
<%--                                修改密码--%>
<%--                            </a>--%>
<%--                        </li>--%>

<%--                        <li class="divider"></li>--%>

<%--                        <li>--%>
<%--                            <a id="logout" href="/logout" title="退出系统">--%>
<%--                                <i class="ace-icon fa fa-power-off"></i>--%>
<%--                                注销--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>

<%--                <!-- 主页 -->--%>
<%--                <!-- <li class="light-blue" style="text-align: center" >--%>
<%--                     <a href="/" title="主页" id='0' onclick="toSelect(this);">--%>
<%--                        <i class="ace-icon fa fa-home"></i>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li  class="light-blue" style="text-align: center" >--%>
<%--                    <a href="/logout" title="退出系统" onclick="removeCookie();">--%>
<%--                        <i class="ace-icon fa fa-power-off"></i>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%---->--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- /.navbar-container -->--%>
<%--</div>--%>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        function changeInfo(){
            $("#form-search").animate({width: '152px',right:'22px'});
            //margin-top: 8px; margin-right:20px;
        }
        $(document).click(function (e) {
            var id = $(e.target).attr("id");
            if (id == "clickdiv" || id == "clicki" || id == "search-input") {

            } else {
                $("#form-search").animate({width: '0px',right:'0px'});
            }
        })
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }

        function SchoolCalendar() {
            //	var ifheight = $(window).height()-$(".modal-content").offset().top ;
            $(".modal-content").html("<iframe width='100%' style='width:100%; min-height:600px; height:100%; overflow: hidden;' src='/indexCalendar' ></iframe>");
            //$(".modal-content iframe").css("max-height",ifheight);
            $("#view-table").modal().show().on("hidden.bs.modal", function () {
                $(this).removeData("bs.modal");
            });
        }

        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

        var isMenuToDeal = true;

        function rootMenuClick(obj) {
            if (isMenuToDeal && !$(obj).hasClass("open")) {
                $.each($(obj).find(".hsub"), function () {
                    if ($(this).hasClass("open")) {
                        isMenuToDeal = false;
                    }
                });
            } else {
                isMenuToDeal = false;
            }

            if (isMenuToDeal) {
                var firobj = $(obj).children("ul").children("li").first();
                firobj.addClass("open");
                $(firobj).children("ul").css("display", "block");
            } else {
                isMenuToDeal = true;
            }
        }

        function stopHere(e) {
            isMenuToDeal = false;
        }

        /*菜单上的搜索框*/
        $(document).ready(function () {
            var obj_lis = $("#menus").find("li > ul > li > ul > li");
            var obj_menus = new Array();
            for (i = 0; i < obj_lis.length; i++) {
                obj_menus[i] = $.trim($(obj_lis[i]).find("a:first").text());
            }
            try {
                $("#search-input").bs_typeahead({
                    source: obj_menus,
                    updater: function (a) {
                        for (i = 0; i < obj_lis.length; i++) {
                            if (a == $.trim($(obj_lis[i]).find("a:first").text())) {
                                $.cookie('selectionBar', obj_lis[i].id, {
                                    path: '/'
                                });
                                window.location.href = $(obj_lis[i]).find("a:first").attr("href");
                                break;
                            }
                        }
                        return a;
                    }
                })
            } catch (a) {
            }
        });

        function changePassword(url) {
            ///student/rollManagement/personalInfoUpdate/updatePassword
            $('#view-table').modal({
                remote: url
            }).on("hidden.bs.modal", function () {
                /*$("div").remove(".widget-box");*/
                $(this).removeData("bs.modal");
            }).css({
                width: 'auto'
            });
        }

    </script>

    <style type="text/css">
        .sidebar > .nav-search {
            position: static;
            background-color: #FAFAFA;
            border-bottom: 1px solid #DDD;
            text-align: center;
            height: 35px;
            padding-top: 0px;
        }

        .sidebar > .nav-search .nav-search-input {
            width: 162px !important;
            border-radius: 5px !important;
            max-width: 162px !important;
            opacity: 1 !important;
            filter: alpha(opacity=100) !important;
        }

        #breadcrumbs li {
            cursor: pointer;
        }
    </style>

    <div class="main-content">

        <div class="page-content" id="page-content-template">
            <!-- 					<div class="ace-settings-container" id="ace-settings-container"> -->
            <!-- 						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn"> -->
            <!-- 							<i class="ace-icon fa fa-cog bigger-150"></i> -->
            <!-- 						</div> -->

            <!-- 						<div class="ace-settings-box clearfix" id="ace-settings-box"> -->
            <!-- 							<div class="pull-left width-50"> -->
            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<div class="pull-left" style="height:13px;"> -->
            <!-- 										<select id="skin-colorpicker" class="hide" style="background: red; height:13px;"> -->
            <!-- 											<option data-skin="no-skin" value="#438EB9">#438EB9</option> -->
            <!-- 											<option data-skin="skin-1" value="#222A2D">#222A2D</option> -->
            <!-- 											<option data-skin="skin-2" value="#C6487E">#C6487E</option> -->
            <!-- 											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option> -->
            <!-- 										</select> -->
            <!-- 									</div> -->
            <!-- 									<span>&nbsp; Choose Skin</span> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" checked="checked"/> -->
            <!-- 									<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" checked="checked"/> -->
            <!-- 									<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/> -->
            <!-- 									<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" /> -->
            <!-- 									<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" /> -->
            <!-- 									<label class="lbl" for="ace-settings-add-container"> -->
            <!-- 										Inside -->
            <!-- 										<b>.container</b> -->
            <!-- 									</label> -->
            <!-- 								</div> -->
            <!-- 							</div>/.pull-left -->

            <!-- 							<div class="pull-left width-50"> -->
            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" /> -->
            <!-- 									<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" /> -->
            <!-- 									<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label> -->
            <!-- 								</div> -->

            <!-- 								<div class="ace-settings-item"> -->
            <!-- 									<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" /> -->
            <!-- 									<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label> -->
            <!-- 								</div> -->
            <!-- 							</div>/.pull-left -->
            <!-- 						</div>/.ace-settings-box -->
            <!-- 					</div>/.ace-settings-container -->


            <div class="row">
                <div class="col-sm-12 self-margin">
                    <div id="mainDIV">
                        <input type="hidden" id="param_value" name="param_value" value="100006">
                        <h4 class="header smaller lighter grey" id="h4_id1">
                             当前课程表（已安排的课程）<span class="label label-lg label-yellow arrowed-in" onclick="javascript:history.go(-1)">注：我发誓再也不做类似的了，因为跨域写了两个Servlet,人懒点我返回上一级</span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="label label-lg label-yellow arrowed-in" onclick="convert2canvas()">点我生成图片</span>
                            <span class="right_top_oper">
				</span>
                        </h4>
                        <div class="widget-content">
                            <div id="mycoursetable"><table class="table table-bordered" id="courseTable"><thead><tr id="courseTableHead"><th colspan="2">节次</th><th>星期日</th><th>星期一</th><th>星期二</th><th>星期三</th><th>星期四</th><th>星期五</th><th>星期六</th></tr></thead>
<%--                                <tbody id="courseTableBody"><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(207,255,228,0.7);">第一大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_1">第一节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_1"><div class="class_div box_font div-kcb-2" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 86.7px; left: 344px;"><p class="p-kcm-2">实验室安全与环境保护_58</p><p class="kcb_p_gray">李眉眉* </p><p class="kcb_p_gray">3-11周</p><p class="kcb_p_gray">1-2节</p><p class="p-jxl-2">江安灾后重建与管理学院A区A403</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;918002020&quot;, &quot;58&quot;,&quot;82047064,李眉眉（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;918002020&quot;, &quot;58&quot;, &quot;82047064,李眉眉（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_1"><div class="class_div box_font div-kcb-8" classnum="2" style="position: absolute; width: 75.6px; height: 236.8px; top: 86.7px; left: 495.2px;"><p class="p-kcm-3">_01</p><p class="kcb_p_gray">胡勇* </p><p class="kcb_p_gray">1-8周</p><p class="kcb_p_gray">1-2节</p><p class="p-jxl-3">江安一教A座A306</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;314034010&quot;, &quot;01&quot;,&quot;20012280,胡勇（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;314034010&quot;, &quot;01&quot;, &quot;20012280,胡勇（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div><div class="class_div box_font div-kcb-15" classnum="4" style="position: absolute; width: 75.6px; height: 473.6px; top: 86.7px; left: 570.8px;"><p class="p-kcm-5">大学物理实验（理工）Ⅲ-1_14</p><p class="kcb_p_gray">郝彦军* </p><p class="kcb_p_gray">9-16周</p><p class="kcb_p_gray">1-4节</p><p class="p-jxl-5">江安实验室二基楼A422</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;202041020&quot;, &quot;14&quot;,&quot;20092065,郝彦军（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;202041020&quot;, &quot;14&quot;, &quot;20092065,郝彦军（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_1"><div class="class_div box_font div-kcb-9" classnum="3" style="position: absolute; width: 151.2px; height: 355.2px; top: 86.7px; left: 646.4px;"><p class="p-kcm-4">微积分（Ⅰ）-2_44</p><p class="kcb_p_gray">王晓伟* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">1-3节</p><p class="p-jxl-4">江安一教B座B203</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201138040&quot;, &quot;44&quot;,&quot;81086304,王晓伟（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201138040&quot;, &quot;44&quot;, &quot;81086304,王晓伟（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_1"><div class="class_div box_font div-kcb-3" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 86.7px; left: 797.6px;"><p class="p-kcm-3">概率统计（理工）_59</p><p class="kcb_p_gray">祝亭玉* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">1-2节</p><p class="p-jxl-3">江安一教B座B503</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201018030&quot;, &quot;59&quot;,&quot;20032178,祝亭玉（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201018030&quot;, &quot;59&quot;, &quot;20032178,祝亭玉（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_1"><div class="class_div box_font div-kcb-1" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 86.7px; left: 948.8px;"><p class="p-kcm-1">大学英语（阅读与翻译）-2_208</p><p class="kcb_p_gray">刘爽* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">1-2节</p><p class="p-jxl-1">江安二基楼B座语言10-2</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;105368020&quot;, &quot;208&quot;,&quot;82017527,刘爽（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;105368020&quot;, &quot;208&quot;, &quot;82017527,刘爽（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_1"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_2">第二节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_2"></td></tr><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(207,255,228,0.7);">第二大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_3">第三节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_3"><div class="class_div box_font div-kcb-9" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 323.5px; left: 948.8px;"><p class="p-kcm-4">微积分（Ⅰ）-2_44</p><p class="kcb_p_gray">王晓伟* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">3-4节</p><p class="p-jxl-4">江安一教B座B104</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201138040&quot;, &quot;44&quot;,&quot;81086304,王晓伟（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201138040&quot;, &quot;44&quot;, &quot;81086304,王晓伟（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_3"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_4">第四节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_4"></td></tr><tr style="height: 118.6px;"><th rowspan="3" style="vertical-align:middle;width:5px;background-color:rgba(255,230,207,0.7);">第三大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_5">第五节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_5"><div class="class_div box_font div-kcb-3" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 560.3px; left: 344px;"><p class="p-kcm-3">概率统计（理工）_59</p><p class="kcb_p_gray">祝亭玉* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">5-6节</p><p class="p-jxl-3">江安一教A座A518</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201018030&quot;, &quot;59&quot;,&quot;20032178,祝亭玉（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;201018030&quot;, &quot;59&quot;, &quot;20032178,祝亭玉（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_5"><div class="class_div box_font div-kcb-14" classnum="4" style="position: absolute; width: 151.2px; height: 473.6px; top: 560.3px; left: 495.2px;"><p class="p-kcm-4">工程训练（Ⅰ）_08</p><p class="kcb_p_gray">王玲* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">5-8节</p><p class="p-jxl-4">江安工程训练中心工程训练中心</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;905006020&quot;, &quot;08&quot;,&quot;20022170,王玲（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;905006020&quot;, &quot;08&quot;, &quot;20022170,王玲（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_5"><div class="class_div box_font div-kcb-7" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 560.3px; left: 797.6px;"><p class="p-kcm-2">体育-2_08</p><p class="kcb_p_gray">ty8* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">5-6节</p><p class="p-jxl-2">江安体育场体育场2号</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;888005010&quot;, &quot;08&quot;,&quot;88800008,ty8（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;888005010&quot;, &quot;08&quot;, &quot;88800008,ty8（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_5"><div class="class_div box_font div-kcb-5" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 560.3px; left: 948.8px;"><p class="p-kcm-5">形势与政策-2_51</p><p class="kcb_p_gray">隋文鑫* </p><p class="kcb_p_gray">11,13,15,17周上</p><p class="kcb_p_gray">5-6节</p><p class="p-jxl-5">江安综合楼C座C307</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;107116000&quot;, &quot;51&quot;,&quot;20192279,隋文馨（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;107116000&quot;, &quot;51&quot;, &quot;20192279,隋文馨（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_5"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_6">第六节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_6"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_7">第七节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_7"><div class="class_div box_font div-kcb-12" classnum="1" style="position: absolute; width: 151.2px; height: 118.4px; top: 797.1px; left: 344px;"><p class="p-kcm-2">大学英语（口语）-2_115</p><p class="kcb_p_gray">外聘22（外语）* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">7-7节</p><p class="p-jxl-2">江安一教D座D104</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;105369010&quot;, &quot;115&quot;,&quot;10500022,外聘22（外语）（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;105369010&quot;, &quot;115&quot;, &quot;10500022,外聘22（外语）（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_7"><div class="class_div box_font div-kcb-13" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 797.1px; left: 646.4px;"><p class="p-kcm-3">丝绸之路文明启示录（中国人民大学）_01</p><p class="kcb_p_gray">张延清* </p><p class="kcb_p_gray">3-14周</p><p class="kcb_p_gray">7-8节</p><p class="p-jxl-3">江安综合楼B座B308</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;106545020&quot;, &quot;01&quot;,&quot;20102039,张延清（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;106545020&quot;, &quot;01&quot;, &quot;20102039,张延清（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_7"></td></tr><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(255,230,207,0.7);">第四大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_8">第八节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_8"><div class="class_div box_font div-kcb-4" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 915.5px; left: 797.6px;"><p class="p-kcm-4">中国近现代史纲要_10</p><p class="kcb_p_gray">黄茂* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">8-9节</p><p class="p-jxl-4">江安综合楼C座C404</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;107060030&quot;, &quot;10&quot;,&quot;20022135,黄茂（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;107060030&quot;, &quot;10&quot;, &quot;20022135,黄茂（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_8"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_9">第九节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_9"></td></tr><tr style="height: 118.6px;"><th rowspan="3" style="vertical-align:middle;width:5px;background-color:rgba(207,228,255,0.7);">第五大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_10">第十节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_10"><div class="class_div box_font div-kcb-10" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 1152.3px; left: 495.2px;"><p class="p-kcm-5">大学物理（理工）Ⅲ-1_14</p><p class="kcb_p_gray">贾武林* </p><p class="kcb_p_gray">1-17周</p><p class="kcb_p_gray">10-11节</p><p class="p-jxl-5">江安一教B座B304</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;202027020&quot;, &quot;14&quot;,&quot;20072199,贾武林（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;202027020&quot;, &quot;14&quot;, &quot;20072199,贾武林（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_10"><div class="class_div box_font div-kcb-16" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 1152.3px; left: 646.4px;"><p class="p-kcm-1">制药工程导论_01</p><p class="kcb_p_gray">李子成* </p><p class="kcb_p_gray">7-14周</p><p class="kcb_p_gray">10-11节</p><p class="p-jxl-1">江安一教B座B407</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;308214010&quot;, &quot;01&quot;,&quot;82037667,李子成（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;308214010&quot;, &quot;01&quot;, &quot;82037667,李子成（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_10"><div class="class_div box_font div-kcb-6" classnum="3" style="position: absolute; width: 151.2px; height: 355.2px; top: 1152.3px; left: 797.6px;"><p class="p-kcm-1">面向对象程序设计导论_03</p><p class="kcb_p_gray">黄诚* </p><p class="kcb_p_gray">1-16周</p><p class="kcb_p_gray">10-12节</p><p class="p-jxl-1">江安综合楼B座B203</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;314064030&quot;, &quot;03&quot;,&quot;20182008,黄诚（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;314064030&quot;, &quot;03&quot;, &quot;20182008,黄诚（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_10"><div class="class_div box_font div-kcb-11" classnum="2" style="position: absolute; width: 151.2px; height: 236.8px; top: 1152.3px; left: 948.8px;"><p class="p-kcm-1">军事理论_25</p><p class="kcb_p_gray">王建容* </p><p class="kcb_p_gray">1-9周</p><p class="kcb_p_gray">10-11节</p><p class="p-jxl-1">江安一教B座B207</p><div class="tools"><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;900001010&quot;, &quot;25&quot;,&quot;81086437,王建容（无）&quot;, &quot;rl&quot;);"><i class="ace-icon fa fa-calendar"></i></a><a style="cursor:pointer;" onclick="toClickInfo(&quot;2019-2020-2-1&quot;, &quot;900001010&quot;, &quot;25&quot;, &quot;81086437,王建容（无）&quot;, &quot;dg&quot;);"><i class="ace-icon fa fa-tasks"></i></a></div></div></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_10"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_11">第十一节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_11"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_12">第十二节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_12"></td></tr></tbody>--%>
                                <tbody id="courseTableBody"><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(207,255,228,0.7);">第一大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_1">第一节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_1"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_1"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_2">第二节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_2"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_2"></td></tr><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(207,255,228,0.7);">第二大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_3">第三节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_3"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_3"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,255,228,0.7);" id="0_4">第四节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="7_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="1_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="2_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="3_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="4_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="5_4"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,255,228,0.7);" id="6_4"></td></tr><tr style="height: 118.6px;"><th rowspan="3" style="vertical-align:middle;width:5px;background-color:rgba(255,230,207,0.7);">第三大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_5">第五节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_5"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_5"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_6">第六节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_6"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_6"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_7">第七节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_7"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_7"></td></tr><tr style="height: 118.6px;"><th rowspan="2" style="vertical-align:middle;width:5px;background-color:rgba(255,230,207,0.7);">第四大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_8">第八节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_8"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_8"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(255,230,207,0.7);" id="0_9">第九节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="7_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="1_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="2_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="3_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="4_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="5_9"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(255,230,207,0.7);" id="6_9"></td></tr><tr style="height: 118.6px;"><th rowspan="3" style="vertical-align:middle;width:5px;background-color:rgba(207,228,255,0.7);">第五大节</th><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_10">第十节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_10"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_10"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_11">第十一节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_11"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_11"></td></tr><tr style="height: 118.6px;"><th style="vertical-align:middle;width:150px;background-color:rgba(207,228,255,0.7);" id="0_12">第十二节</th><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="7_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="1_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="2_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="3_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="4_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="5_12"></td><td style="vertical-align:middle;padding:0;height:45px !important;background-color:rgba(207,228,255,0.7);" id="6_12"></td></tr></tbody>
                            </table></div>
                        </div>
                        <div id="other-course" style="display: none;">
                        </div>

                </div>
            </div>
            <!-- 标签页式嵌入表格结束 -->
            <form id="form1"></form>
            <a id="forNewTab" target="_blank"></a>

        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->


    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse display">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
</div>

</body></html>