<%@page import="com.train.utils.BasePath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Eyes-glass后台管理</title>
<base href="<%=BasePath.get(request)%>">
    <meta charset="utf-8">

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/content.css" rel="stylesheet">

    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/layer/layer.js"></script>
    <script src="js/hDialog/jquery.hDialog.js"></script>
    <script src="js/json2.js"></script>
     <script src="js/tools.js"></script>
     <script src="js/eghelper.js"></script>
    <script src="js/admin/comment.js"></script>
    
    
</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>评论管理</li>
    <li class="active">评论列表</li>
</ol>
<!--路径导航-->

<div class="page-content">
    <form class="form-inline">
        <div class="panel panel-default">
            <div class="panel-heading">评论列表</div>
            
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        
                        <th width="5%">ID</th>
                        <th width="10%">用户邮箱</th>
                        <th width="10%">联系方式</th>
                        <th width="40%">内容</th>
                        <th width="10%">日期</th>
                        <th width="10%">操作</th>
                    </tr>
                    </thead>
                    <tbody id="objlist">
                         

                    </tbody>
                </table>

            </div>
            <div
					style="width: 100%; text-align: center; border-top: solid 1px #808080; margin-top: 3px; padding: 3px;">
					<a id="btFirst" onclick="setpage(this);return false;" href="#">首页</a>
					<a id="btPre" onclick="setpage(this);return false;" href="#">上一页</a>
					[<span id="current_page"></span>/<span id="total_page"></span>] <a
						id="btNext" onclick="setpage(this);return false;" href="#">下一页</a>
					<a id="btLast" onclick="setpage(this);return false;" href="#">尾页</a>
					<span>跳转</span> <input type="text" id="go_page" /> <a id="btGo"
						onclick="setpage(this);return false;" href="#">转到</a>
				</div>
        </div>
    </form>



</div>



</body>
</html>