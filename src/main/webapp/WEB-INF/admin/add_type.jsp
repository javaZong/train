<%@page import="com.train.utils.BasePath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Delight后台管理</title>
<base href="<%=BasePath.get(request)%>">
    <meta charset="utf-8">
 

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/admin/content.css" rel="stylesheet">

  
    <script src="js/jquery-2.2.4.min.js"></script>
     <script src="js/jquery.md5.js"></script>
     <script src="js/json2.js"></script>
      <script src="js/layer/layer.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/tools.js"></script>
    <script src="js/eghelper.js"></script>
    <script src="js/admin/add_type.js"></script>
</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>导航栏管理</li>
    <li class="active">添加导航栏</li>
</ol>
<!--路径导航-->

<div class="page-content">
    <div class="panel panel-default">
        <div class="panel-heading">添加导航栏</div>
        <div class="panel-body">
            <form>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-9">

                            <div class="form-group">
                                <label for="name">课程大类</label>
                                <input type="text" class="form-control" id="name"  placeholder="">
                            </div>
                            <div class="form-group">
                                <label for="memo">备注</label>
                                <input type="text" class="form-control" id="memo" placeholder="">
                            </div>
                            

                        </div>
                      

                    </div>

                    <input type="button" class="btn btn-primary" value="提交" id="submitBtn"></input>

                </div>


            </form>
        </div>

    </div>

</div>



</body>
</html>