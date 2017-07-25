<%@page import="com.train.utils.BasePath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>DeLight后台管理</title>
<base href="<%=BasePath.get(request)%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="css/admin/content.css" rel="stylesheet">


<script src="js/jquery-2.2.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/layer/layer.js"></script>
<script src="js/hDialog/jquery.hDialog.js"></script>
<script src="js/tools.js"></script>
<script src="js/eghelper.js"></script>
<script src="js/admin/user.js"></script>

</head>
<body>

	<!--路径导航-->
	<ol class="breadcrumb breadcrumb_nav">
		<li>首页</li>
		<li>用户管理</li>
		<li class="active">用户列表</li>
	</ol>
	<!--路径导航-->

	<div class="page-content">
		<form class="form-inline">
			<div class="panel panel-default">
				<div class="panel-heading">用户列表</div>
				<div class="table-responsive">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th width="5%">ID</th>
								<th width="10%">昵称</th>
								
								<th width="15%">操作</th>
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

	<div class="panel panel-default" id="edit_user">
		<div class="panel-heading">编辑用户信息</div>
		<div class="panel-body">
			<form>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-9">


							<div class="form-group">
								<label for="name">用户昵称</label> <input type="text"
									class="form-control" id="name" placeholder="">
							</div>
							<div class="form-group">
								<label for="passwrod">用户密码</label> <input type="text"
									class="form-control" id="passwrod" placeholder="">
							</div>
							

						</div>


					</div>

					<input type="button" class="btn btn-primary" value="提交"
						id="submitBtn" onclick="updateUser()"></input> <input
						type="button" class="btn btn-primary" value="关闭" id="closeBtn"
						onclick="closeEdit()"></input> <input id="userid" type="hidden" />
				</div>


			</form>
		</div>

	</div>

</body>
</html>