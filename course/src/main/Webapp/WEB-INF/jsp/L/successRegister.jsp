<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/7
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>注册成功</title>
</head>
<style>
    body{
        background: url("../../../resources/img/106.jpg");
        background-size: 100%;
    }
    div.form{
        text-align: center;
    }
</style>
<body>
<div class="form"><br><br><br><br><br><br><br><br><br>
    恭喜你${name},你已成功注册,你的账号是<i>${id}</i><br>
<a href="/login">点此登录</a>
</div>
</body>
</html>
