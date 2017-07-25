<%@page import="com.train.utils.BasePath" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=BasePath.get(request)%>">
    <title>NEUQMatch后台管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/admin/content.css" rel="stylesheet">


    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/admin/add_course.js"></script>


</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>新闻管理</li>
    <li class="active">发布新闻</li>
</ol>
<!--路径导航-->


<div class="page-content">
    <div class="panel panel-default">
        <div class="panel-heading">添加课程</div>
        <div class="panel-body">
            <form>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-9">

                            <div class="form-group clearfix">
                                <label>一级菜单</label>
                                <div class="lanmu">
                                    <select class="form-control pull-left" name="col_id" id="type">

                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name">课程名称</label> <input type="text"
                                                                       class="form-control" id="name" name="name"
                                                                       placeholder="课程名称">
                            </div>

                            <div class="form-group">
                                <label>课程内容</label>
                                <textarea class="form-control" rows="3" id="content"></textarea>
                            </div>



                            <div class="form-group">
                                <label>课程收益</label>
                                <textarea class="form-control" rows="5" id="income"></textarea>
                            </div>



                        </div>


                    </div>

                    <input type="button" class="btn btn-primary" id="addBtn" value="提交"/>

                </div>


            </form>
        </div>

    </div>

</div>


</body>
</html>