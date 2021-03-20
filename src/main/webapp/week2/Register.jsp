<%--
  Created by IntelliJ IDEA.
  User: 13161
  Date: 2021/3/10
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../week2/static/css/bootstrap.css">
</head>
<body>
<form method="post" class="form-horizontal" action="../register">
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4">
            <h3>New User Registration</h3>
        </div>
    </div>
    <div class="form-group">
        <label for="name" class="col-sm-4 control-label">Username:</label>
        <div class="col-sm-2">
            <input type="text" name="username" class="form-control" id="name" placeholder="username">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-4 control-label">Password:</label>
        <div class="col-sm-2">
            <input type="password" name="password" class="form-control" id="password" placeholder="password">
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-4 control-label">Email:</label>
        <div class="col-sm-2">
            <input type="email" name="email" class="form-control" id="email" placeholder="email">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-4 control-label">Gender:</label>
        <div class="col-sm-8">
            <label for="male" class="radio-inline">
                <input type="radio" id="male" name="sex" value="male" checked="checked">Male
            </label>
            <label for="female" class="radio-inline">
                <input type="radio" id="female" name="sex" value="female">Female
            </label>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-4 control-label">Date:</label>
        <div class="col-sm-2">
            <input type="date" name="birthDate" class="form-control" id="date">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-8">
            <button type="submit" class="btn btn-primary" id="submit">Submit</button>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2" id="emailError" style="display: none">
            <div class="alert alert-danger" role="alert">
                <span class="sr-only">Error:</span>
                Enter a valid email address
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2" id="nameError" style="display: none">
            <div class="alert alert-danger" role="alert">
                <span class="sr-only">Error:</span>
                Enter a valid username
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2" id="dateError" style="display: none">
            <div class="alert alert-danger" role="alert">
                <span class="sr-only">Error:</span>
                Enter a valid date
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2" id="pwdError" style="display: none">
            <div class="alert alert-danger" role="alert">
                <span class="sr-only">Error:</span>
                Enter a valid password
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-2" id="charError" style="display: none">
            <div class="alert alert-danger" role="alert">
                <span class="sr-only">Error:</span>
                your length must be at least 8 characters
            </div>
        </div>
    </div>
</div>
</form>
<%--<iframe id="iframe" name="iframe" style="display:none;"></iframe>--%>

<script src="../week2/static/js/jquery-3.5.1.js"></script>
<script>
    $(function () {
        $('#name').blur(function () {
            if ($('#name').val() === ''){
                $('#nameError').css("display","block");
            } else {
                $('#nameError').css("display","none");
            };
        });
        $('#password').blur(function () {
            if ($('#password').val() === ''){
                $('#pwdError').css("display","block");
            } else if($('#password').val().length < 8) {
                $('#charError').css("display","block");
                $('#pwdError').css("display","none");
            } else {
                $('#charError').css("display","none");
            };
        });
        $('#email').blur(function () {
            if ($('#email').val() === '' ){
                $('#emailError').css("display","block");
            } else {
                $('#emailError').css("display","none");
            };
        });
        $('#date').blur(function () {
            if ($('#date').val() === ''){
                $('#dateError').css("display","block");
            } else {
                $('#dateError').css("display","none");
            };
        })
    })
</script>
</body>
</html>
