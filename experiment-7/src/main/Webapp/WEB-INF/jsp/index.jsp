<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/5
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/jsp/common/header.jsp"%>
<%@include file="/WEB-INF/jsp/common/sidebar.jsp"%>
<table>
    <thead>
    <tr>
        <td>#</td>
        <td>姓名</td>
        <td>操作</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="u" varStatus="s">
        <tr>
            <td>${s.count}</td>
            <td>${u.name}</td>
            <td><a href="/updateuser">修改</a></td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<%@include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>
