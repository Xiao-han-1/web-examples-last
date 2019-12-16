<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/12
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>新闻</title>
</head>
<style>
    body{
        background: url("/resources/images/2.jpg")no-repeat;
    }
    div.news
    {
        color: white;
        font-size: 2em;
    }
</style>
<body><br>
<br>
<div class="news">标题：${eee.title}</div><br>
<div class="news">时间：${eee.time}</div><br><br>
<div class="news"text-indent: 2em>内容：${eee.context}</div>
</body>
</html>
