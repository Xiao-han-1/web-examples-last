<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/5
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/adduser" method="post">
    用户名:<input type="text" name="username" required><br>
    <button type="submit">添加</button>
</form>

<form action="/updateuser" method="post">
    <select name="uid">
    <c:forEach items="${users}" var="u" varStatus="s">
        <option value="${u.id}">${u.name}</option>
    </c:forEach>
    </select>
    新用户名:<input type="text" name="username" required><br>
    <button type="submit">更新</button>
</form>


<c:forEach items="${users}" var="u" varStatus="s">
    <li><a href="/getuser?uid=${u.id}">${u.name}</a></li>
</c:forEach>

</body>
</html>
