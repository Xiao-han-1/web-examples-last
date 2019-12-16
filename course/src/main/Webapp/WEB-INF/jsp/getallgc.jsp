<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/14
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>公告列表</title>
</head>
<style>
    body{
        background: url("../../resources/img/271.jpg")no-repeat;
        background-size: 100% 100%;
    }
</style>
<body><br>
<i style="font-size: 1.4em">公告列表:</i>
<ul>
    <c:forEach items="${list}" var="n">
        <li><a href="/gc?id=${n.id}">标题:${n.title}  时间:${n.time}</a> </li>
    </c:forEach>
</ul>
</body>
</html>
