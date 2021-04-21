<%@ page import="com.lizheyang.model.User" %><%--
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
<%
    User user1 = (User) session.getAttribute("user");
%>
<table border="1">
    <tr><td>Username:</td><td><%=user1.getUsername()%></td></tr>
    <tr><td>Password:</td><td><%=user1.getPassword()%></td></tr>
    <tr><td>Email:</td><td><%=user1.getEmail()%></td></tr>
    <tr><td>Gender:</td><td><%=user1.getGender()%></td></tr>
    <tr><td>Birthdate:</td><td><%=user1.getBirthdate()%></td></tr>
</table>
<a href="updateUser">Update</a>
<%@include file="footer.jsp"%>
</body>
</html>
