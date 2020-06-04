<%--
  Created by IntelliJ IDEA.
  User: Yangwenhao
  Date: 2020/5/17
  Time: 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ page import="com.Stackery.utils.newsCrawl.crawlManager" %>
<html>
<head>
    <title>News</title>
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/Css/public.css" rel="stylesheet">
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/font/iconfont.css?v=1.0.0" rel="stylesheet">
    <link href="http://xsc.scu.edu.cn/Website/XG/Content/Css/home/index.css?v=4.2.1" rel="stylesheet">
</head>
<body>
<ul>
<%
    List<String> urlCrawl = null;
    List<String> titleCrawl = null;
    crawlManager crawlManager = new crawlManager();
    crawlManager.crawlMonthNews();
    urlCrawl = crawlManager.getUrlCrawl();
    titleCrawl = crawlManager.getTitleCrawl();
    for (int i = 0; i < urlCrawl.size(); i++) {
        out.print("<li>");
        out.print("<a href="+urlCrawl.get(i)+" title="+titleCrawl.get(i)+">"+titleCrawl.get(i));
        out.print("</li>");
    }


%>
</ul>
</body>
</html>
