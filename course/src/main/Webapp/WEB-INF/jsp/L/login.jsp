<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>登录</title>
    <link href="../../../resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<style>
    div.form{
        text-align: center;
        width: 100%;

    }
    body{
        background: url("/resources/images/2.jpg");
        background-size: 100%;
    }
    div.asd
    {
        display: inline-block;
        background: url("/resources/images/1.jpg");
        border-color: white;
        border-radius: 5px;
        margin: 0px auto;
        padding: 100px;
        text-align: center;
    }
    button.login
    {
        margin: 0px;
        padding: 3px;
        background-color: #01b2fe;
    }
    b.login
    {
        color: #8A0B00;
    }
</style>
<body>
<div class="form">
    <br><br><br><br><br><br><br><br><br><br>
    <div class="asd">
    <form action="/login" method="post">
        账号:<input type="text" name="id" class=".formcontrol" required><br>
        密码:<input type="password" name="pass" required>
        <br>
        <button class="login" type="submit"><b class="login">登录</b></button>
        <br>
        <a href="/register">未有账户，点此注册</a>
    </form>
</div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
</body>
</html>