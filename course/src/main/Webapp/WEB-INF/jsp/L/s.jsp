<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/12
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
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
<div class="form"><br><br><br><br><br><br><br><br><br><br>
    <div class="asd">
    <form action="/s" method="post">
        ID:<input type="text" name="id" required><br>
        <button type="submit">删除</button>
    </form>
    </div>
</div>
</body>
</html>
