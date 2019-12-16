<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/7
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<style>
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
    div.form{
        margin: 0px auto;
        padding: 20px;
        text-align: center;
        border: white;

    }
    body{
        background: url("/resources/images/2.jpg");
        background-size: 100%;
    }
    a
    {
        color: #00b3fe;
        text-decoration: none;
    }
    span
    {
        display: inline;
        color:white;
    }
    button.login
    {
        padding: 0;
        color: #BB5E00;
        background-color: #5bc0de;
    }
</style>
<body class="student">
<div class="form">
    <br><br><br><br><br><br><br><br><br><br>
    <div class="asd">
<form action="/register" method="post">
    <span>昵称:</span><input type="text"  name="name" required><br>
    <span>密码:</span><input type="password" name="pass" required><br>
    <input type="checkbox" id="checkbox"><a href="#">我已阅读并同意注册协议</a><br>
    <button class="login" type="submit" id="submit">注册</button>
</form>
    </div>
    <br><br><br><br><br><br><br><br><br><br>
</div>
</body>
<script src="../../../js/jquery-3.4.1.min.js"></script>
<script>
    $(function () {
        $("#checkbox").click(
            function(){
                let dis=!$(this).prop("checked");
                $("#submit").prop("disabled",dis);
            }
        );
    })
</script>
</html>
