<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="validate.jsp">
    Username : <input type="text" name="username" value="${param.username}"><br>
    Password : <input type="password" name="password" value="${param.password}"><br>
    <input type="submit" value="Login"/>
</form>

</body>
</html>
