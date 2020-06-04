<%@ page import="com.Stackery.utils.newsCrawl.crawlTeachingResearchDepartmentNews" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html data-dpr="1" style="font-size: 455.625px;"><head lang="en"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
<meta name="renderer" content="webkit">
<meta name="force-rendering" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0,user-scalable=0" name="viewport">
<meta content="telephone=no" name="format-detection">
<meta content="email=no" name="format-detection">
<link rel="icon" href="http://xsc.scu.edu.cn/Website/XG/favicon.ico">
<link rel="shortcut icon" href="http://xsc.scu.edu.cn/Website/XG/favicon.ico"> 
<title>SCU-NEWS</title>
    <title></title>
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/Css/public.css" rel="stylesheet">
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/font/iconfont.css?v=1.0.0" rel="stylesheet">
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/Css/home/index.css?v=4.2.1" rel="stylesheet">
    <link href="http://xsc.scu.edu.cn/Website/XG/Scripts/plugins/layer/skin/default/layer.css" rel="stylesheet">
    <link rel="stylesheet" href="http://xsc.scu.edu.cn/Website/XG/Scripts/plugins/layer/skin/default/layer.css?v=3.0.3303" id="layuicss-skinlayercss">
    <!--加载meta IE兼容文件-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    
<!--导航部分-->
<div class="header-container">
    <div class="home_header">
        <div class="nav wrapper">
            <div class="logo left">
                <a href="http://xsc.scu.edu.cn/Website/XG/">
                    <p style="color:#0d1218;font-size:40px;line-height: 80px;">Scu  Assistant-News</p>
                </a>
            </div>

        </div>
    </div>
    <div class="nav-box">
        <i class="menu-btn iconfont icon-icon-bars"></i>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        $(".icon-menu").on("mouseenter", ".search", function () { 
            $(this).addClass("hover");
        });
        $(".icon-menu").on("mouseleave", ".search", function () {
            $(this).removeClass("hover");
        });
    })

    function CheckSearchTitle() {
        var title = $("#title").val();
        if (!title) {
            $("#title").focus();
            layer.tips("请输入关键词", $("#title"), {
                tips: ["1", "red"],
                time: 3000
            });
            return false;
        }
        $("#search-form").submit();
    }
</script>
    <div class="detail-banner" style="background:url(http://xsc.scu.edu.cn/Website/XG/Content/Image/detail-banner.png) center center no-repeat;background-size: cover;">
    </div>
    <div class="container detail-container">
        <div class="wrapper">
            <div class="left-menu">
                <div class="menu-head">
                    <i class="icon-menu"></i>
                    菜单
                </div>
                <div class="menu-list">
                    <ul>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/ScientificnewsShow.jsp" title="科研院新闻" target="_blank">科研院新闻</a>
                        </li>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/StudentWorkDepartment.jsp" title="学工部新闻" target="_blank">学工部新闻</a>
                        </li>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/TeachingResearchDepartment.jsp" title="教务处新闻" target="_blank">教务处新闻</a>
                        </li>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/SecurityDepartmentNews.jsp" title="保卫处新闻" target="_blank">保卫处新闻</a>
                        </li>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/CyberspaceSecurity.jsp" title="学院新闻" target="_blank">学院新闻</a>
                        </li>
                        </li>
                        <li class="">
                            <a class="ellipsis" href="${pageContext.request.contextPath}/pages/newsShow/news/allNews.jsp" title="所有新闻" target="_blank">所有新闻</a>
                        </li>

                    </ul>
                </div>
            </div>


            <div class="main-box">
                <div class="location-bar">
                    <i class="icon-location"></i>
                    <div class="location-list">
                        您现在的位置：
                        <a > 教务处新闻</a>
                    </div>
                </div>
                
<div class="box-body">
    <div class="news-list">
        <ul>
            <%
                crawlTeachingResearchDepartmentNews crawlTeachingResearchDepartmentNews = new crawlTeachingResearchDepartmentNews();
                crawlTeachingResearchDepartmentNews.crawlNews();
                List<String> dataCrawl = crawlTeachingResearchDepartmentNews.getDataCrawl();
                List<String> urlCrawl = crawlTeachingResearchDepartmentNews.getUrlCrawl();
                List<String> titleCrawl = crawlTeachingResearchDepartmentNews.getTitleCrawl();
                for (int i = 0; i < dataCrawl.size(); i++) {
                    out.print("<li>"+"<a href=\""+urlCrawl.get(i)+"\" title=\""+titleCrawl.get(i)+"\">"+"<span class=\"date\">"+dataCrawl.get(i)+"</span>"+titleCrawl.get(i)+"</a></li>");
                }
            %>
        </ul>
    </div>
<!--    <div class="page">总共有<i class="nochange">653</i>条记录 <span>&lt;&lt;</span> <span class="checked">1</span> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?gfnoSQBq5g7GqZ1n3+dpgtwYYfcQLhG4lEetDhL2eB8=.shtml"><span>2</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?nCKhnlEygghm/NoUSjpvHdwYYfcQLhG4lEetDhL2eB8=.shtml"><span>3</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?79VtbqnEiBVAEx98rBi4ldwYYfcQLhG4lEetDhL2eB8=.shtml"><span>4</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?bqKapZWVqZxCe4yxgiRW0twYYfcQLhG4lEetDhL2eB8=.shtml"><span>5</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?R2eQNSzE6o4a25NW2vshaNwYYfcQLhG4lEetDhL2eB8=.shtml"><span>6</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?C7rpXUK0Hhz7nv291Wara9wYYfcQLhG4lEetDhL2eB8=.shtml"><span>7</span></a> <a href="http://xsc.scu.edu.cn/Website/XG/Home/NewsList?page=2&amp;PNodeNum=1211"><span>&gt;&gt; </span></a></div>-->
</div> 

            </div>
        </div>
    </div>

<!--<div id="qb-sougou-search" style="display: none; opacity: 0;"><p>搜索</p><p class="last-btn">复制</p><iframe src="./四川大学 党委学生工作部（处）武装部_files/saved_resource.html"></iframe></div></body></html>-->