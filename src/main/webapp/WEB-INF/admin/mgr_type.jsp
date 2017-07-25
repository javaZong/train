<%@page import="com.train.utils.BasePath" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <title>train后台管理</title>
    <base href="<%=BasePath.get(request)%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/admin/content.css" rel="stylesheet">


    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/hDialog/jquery.hDialog.js"></script>
    <script src="js/admin/mgr_type.js"></script>

</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>课程大类管理</li>
    <li class="active">课程大类列表</li>
</ol>
<!--路径导航-->

<div class="page-content">
    <form class="form-inline">
        <div class="panel panel-default">
            <div class="panel-heading">课程大类列表</div>

            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th width="5%">ID</th>
                        <th width="10%">名称</th>
                        <th width="10%">备注</th>

                        <th width="15%">操作</th>
                    </tr>
                    </thead>
                    <tbody id="objlist">


                    </tbody>
                </table>

            </div>

        </div>
    </form>


</div>

<div class="panel panel-default" id="edit_type">
    <div class="panel-heading">编辑课程大类</div>
    <div class="panel-body">
        <form>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9">

                        <div class="form-group">
                            <label for="name">名称</label>
                            <input type="text" class="form-control" id="name" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="memo">备注</label>
                            <input type="text" class="form-control" id="memo" placeholder="">
                        </div>


                    </div>


                </div>

                <input type="button" class="btn btn-primary" value="提交"
                       id="submitBtn" onclick="updateType()"/>
                <input
                    type="button" class="btn btn-primary" value="关闭" id="closeBtn"
                    onclick="closeEdit()"/>
                <input type="hidden" id="typeid"/>
            </div>


        </form>
    </div>

</div>

</body>
</html>