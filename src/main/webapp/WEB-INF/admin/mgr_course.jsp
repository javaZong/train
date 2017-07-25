<%@page import="com.train.utils.BasePath" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=BasePath.get(request)%>">
    <title>DeLight后台管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/admin/content.css" rel="stylesheet">

    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/hDialog/jquery.hDialog.js"></script>
    <script src="js/admin/mgr_course.js"></script>
</head>
<body>

<!--路径导航-->
<ol class="breadcrumb breadcrumb_nav">
    <li>首页</li>
    <li>课程管理</li>
    <li class="active">课程列表</li>
</ol>
<!--路径导航-->

<div class="page-content">
    <form class="form-inline">
        <div class="panel panel-default">
            <div class="panel-heading">课程列表</div>
            <div class="form-group clearfix">
                <label>课程大类</label>
                <div class="lanmu">
                    <select class="form-control pull-left" id="search_type">

                    </select>
                    <input type="button" class="btn btn-default" id="searchBtn" value="搜索" />

                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>

                        <th width="5%">ID</th>
                        <th width="20%">课程名称</th>
                        <th width="30%">课程内容</th>
                        <th width="10%">操作</th>
                    </tr>
                    </thead>
                    <tbody id="objlist">

                    </tbody>
                </table>


            </div>
            <div
                    style="width: 100%; text-align: center; border-top: solid 1px #808080; margin-top: 3px; padding: 3px;">
                <a id="btFirst" onclick="toIndex()">首页</a>
                <a id="btPre" onclick="toPre()">上一页</a>
                [<span id="current_page"></span>/<span id="total_page"></span>] <a
                    id="btNext" onclick="toNext()">下一页</a>
                <a id="btLast" onclick="toLast()"></a>
                <span>跳转</span> <input type="text" id="go_page"/> <a id="btGo"
                                                                     onclick="toGo()">转到</a>
            </div>
        </div>


    </form>


</div>

<div class="panel panel-default" id="edit_course">
    <div class="panel-heading">编辑课程信息</div>
    <div class="panel-body">
        <form>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9">

                        <div class="form-group clearfix">
                            <label>课程大类</label>
                            <div class="lanmu">
                                <select class="form-control pull-left" name="col_id" id="type">

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name">课程名称</label> <input type="text"
                                                                  class="form-control" id="name">
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

                <input type="button" class="btn btn-primary" id="editBtn" value="提交" onclick="updateCourse()"/>
                <input type="button" class="btn btn-primary" id="closeBtn" value="关闭" onclick="closeEdit()"/>
                <input type="hidden" id="courseid"/>
            </div>


        </form>
    </div>


</div>

</body>
</html>