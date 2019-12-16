<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/12
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公告</title>
</head>
<style>
    body{
        background: url("../../resources/img/272.jpg")no-repeat;
        background-size: 100%;
    }
</style>
<body>
<div style="text-align: center;font-size: 2em">标题：${eee.title}</div><br>
<div style="float: right;font-size: 1.4em">时间：${eee.time}</div><br><br>
<div style="text-indent: 2em">内容：${eee.context}</div>
</body>
</html>
