<%@page import="com.train.utils.BasePath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=BasePath.get(request)%>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DeLight后台管理</title>
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="css/admin/style.css" rel="stylesheet">


<script src="js/jquery-2.2.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/hardphp.js"></script>
</head>
<body>

	<div class="myheading">
		<nav class="navbar navbar-inner">
			<div class="container-fluid">

				<div class="navbar-header">
					<!--nav troggle-->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#hard-navbar">
						<span class="sr-only">导航切换</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<!--nav troggle-->
					<!--brand-->
					<a class="navbar-brand" href="javascript:void(0);">DeLight后台管理</a>
					<!--brand-->
				</div>

				<!--nav links-->
				<div class="collapse navbar-collapse" id="hard-navbar">

					<ul class="nav navbar-nav navbar-right">
						<li><a href="admin/index-iframe" class="atip"
							target="appiframe" data-toggle="tooltip" data-placement="bottom"
							data-title="首页"><span class="glyphicon glyphicon-home"
								aria-hidden="true"></span></a></li>
						<li class="dropdown"><a href="index" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"> <span
								class="glyphicon glyphicon-sunglasses" aria-hidden="true"></span>
								DeLight
						</a>

							<ul class="dropdown-menu dropdown-menu-arrow-right" role="menu">
								<li><a href="javascript:void(0);" id="username"><span
										class="glyphicon glyphicon-edit" aria-hidden="true"
										id="username"></span></a></li>
								<li><a href="user/index" id="userIndex"><span
										class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
										网站首页</a></li>
								<li><a href="javasript:void(0);" id="logout"><span
										class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
										退出登录</a></li>
							</ul></li>
					</ul>


				</div>
				<!--nav links-->
			</div>
		</nav>
	</div>

	<!--main-->
	<div class="container-fluid mybody">
		<div class="main-wapper">
			<!--菜单-->
			<div id="siderbar" class="siderbar-wapper">

				<div class="panel-group menu" id="accordion" role="tablist"
					aria-multiselectable="true">

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingNine">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseNine"
									aria-expanded="true" aria-controls="collapseNine"> <span
									class="glyphicon glyphicon-list-alt"></span> 课程管理
								</a>
							</h4>
						</div>
						<div id="collapseNine" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingNine">
							<div class="list-group list-group-self">
								<a href="admin/mgr_course" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 课程列表</a> <a
									href="admin/add_course" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 添加课程</a>
									
							</div>
						</div>
					</div>

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingFive">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseFive"
									aria-expanded="false" aria-controls="collapseThree"> <span
									class="glyphicon glyphicon-user"></span> 用户管理
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFive">
							<div class="list-group list-group-self">
								<a href="admin/mgr_user" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 用户列表</a> <a
									href="admin/add_user" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 添加用户</a>
							</div>
						</div>
					</div>

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingSix">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseSix"
									aria-expanded="false" aria-controls="collapseFour"> <span
									class="glyphicon glyphicon-send"></span> 课程大类
								</a>
							</h4>
						</div>
						<div id="collapseSix" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingSix">
							<div class="list-group list-group-self">
								<a href="admin/mgr_type" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 大类列表</a> <a
									href="admin/add_type" target="appiframe" class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 添加课程大类</a>
							</div>
						</div>
					</div>

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingOne">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="false" aria-controls="collapseOne"> <span
									class="glyphicon glyphicon-list-alt"></span> 公司信息管理
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse "
							role="tabpanel" aria-labelledby="headingOne">
							<div class="list-group list-group-self">
								<a href="admin/mgr_about" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 公司信息</a> <a
									href="admin/add_about" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 添加相关信息</a>
							</div>
						</div>
					</div>

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo"> <span
									class="glyphicon glyphicon-th-large"></span> 友情链接管理
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="list-group list-group-self">
								<a href="admin/mgr_link" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 友情链接列表</a> <a
									href="admin/add_link" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 添加友情链接</a>
							</div>
						</div>
					</div>


					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingSeven">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseSeven"
									aria-expanded="false" aria-controls="collapseFive"> <span
									class="glyphicon glyphicon-comment"></span> 消息管理
								</a>
							</h4>
						</div>
						<div id="collapseSeven" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingSeven">
							<div class="list-group list-group-self">
								<a href="admin/mgr_comment" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 信息列表</a>
							</div>
						</div>
					</div>

					<div class="panel panel-inner">
						<div class="panel-heading panel-heading-self" role="tab"
							id="headingEight">
							<h4 class="panel-title">
								<a class="collapsed" data-toggle="collapse"
									data-parent="#accordion" href="#collapseEight"
									aria-expanded="false" aria-controls="collapseEight"> <span
									class="glyphicon glyphicon-cog"></span> 系统设置
								</a>
							</h4>
						</div>
						<div id="collapseEight" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingEight">
							<div class="list-group list-group-self">
								<a href="admin/mgr_config" target="appiframe"
									class="list-group-item"><span
									class="glyphicon glyphicon-menu-right"></span> 系统设置</a>
							</div>
						</div>
					</div>





				</div>

			</div>
			<!--菜单-->
			<!--内容-->
			<div id="content" class="main-content">

				<iframe src="admin/index-iframe" style="width: 100%; height: 100%;"
					id="appiframe" name="appiframe" frameborder="0"></iframe>

			</div>
			<!--内容-->
		</div>

	</div>

	<!--main-->

	<script type="text/javascript">
		$(function() {
			var options = {
				animation : true,
				trigger : 'hover' //触发tooltip的事件
			}
			$('.atip').tooltip(options);

		});
	</script>
</body>
</html>