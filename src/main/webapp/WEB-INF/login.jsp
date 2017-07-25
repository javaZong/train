<%@page import="com.train.utils.BasePath" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

    <form method="post">
        <input name="action" value="login" type="hidden">
        <input name="username" placeholder="用户名" required="" type="text">
        <hr class="hr15">
        <input name="password" placeholder="密码" required="" type="password">
        <hr class="hr15">
        <input value="登录" style="width:100%;" type="submit" id="loginBtn" onclick="login()">
        <hr class="hr20">
        <!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
    </form>


</div>
<script type="javascript">
    function login() {
        var username = $("#username").val();
        var password = $.md5($("#password").val());
        if (useranme == null || password == null) {
            alert("用户名或密码不能为空!");
            return;
        }
        var url="/admin/login";
        var args = {
            "username": username,
            "password": password
        };
        $.post(url,args,null);

    }
</script>

</body>
</html>