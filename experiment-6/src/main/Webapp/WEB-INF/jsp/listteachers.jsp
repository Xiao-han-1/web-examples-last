<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/4
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <table>
     <tr>
         <th>#</th>
         <th>姓名</th>
         <th>注册时间</th>
     </tr>
     <c:forEach items="${teachers}" var="t" varStatus="s">
     <tr>
         <td>${s.count}</td>
         <td><a href="updateteacher?tid=${t.id}">${t.name}</a></td>
         <td><fmt:formatDate
                 pattern="yyyy-MM-dd HH:mm"
                 value="${t.insertDate}"/></td>
     </tr>
     </c:forEach>
 </table>
</body>
</html>
