<%--
  Created by IntelliJ IDEA.
  User: 13161
  Date: 2021/4/12
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="header.jsp"%>
<table border="1">
    <tr><td>Username:</td><td><%=request.getAttribute("username")%></td></tr>
    <tr><td>Password:</td><td><%=request.getAttribute("password")%></td></tr>
    <tr><td>Email:</td><td><%=request.getAttribute("email")%></td></tr>
    <tr><td>Gender:</td><td><%=request.getAttribute("gender")%></td></tr>
    <tr><td>Birthdate:</td><td><%=request.getAttribute("birthdate")%></td></tr>
</table>
<%@include file="footer.jsp"%>
</body>
</html>
