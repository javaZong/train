<%@page import="com.train.utils.BasePath" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

    <title>train后台登录</title>
    <base href="<%=BasePath.get(request)%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">

    <link href="css/login.css" type="text/css" rel="stylesheet">
    <script src="js/jquery-2.2.4.min.js"></script>
</head>
<body>

<div class="login">
    <div class="message">登录</div>
    <div id="darkbannerwrap"></div>
    <c:url value="/login" var="loginUrl"/>
    <form action="${loginUrl}" method="post">
        <input name="action" value="login" type="hidden">
        <input name="username" placeholder="用户名" required="" type="text">
        <hr class="hr15">
        <input name="password" placeholder="密码" required="" type="password">
        <hr class="hr15">
        <label class="remember" for="remember">
            <input type="checkbox" id="remember" name="remember-me"> Remember me</label>

        <input value="登录" style="width:100%;" type="submit" id="loginBtn" >
        <hr class="hr20">

    </form>


</div>

</body>
</html>