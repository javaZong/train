<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title></title>
    <base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <!-- css -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p class="pull-left hidden-xs"><i class="fa fa-clock-o"></i><span>Mon - Sat 8.00 - 18.00. Sunday CLOSED</span>
                    <p class="pull-right"><i class="fa fa-phone"></i>联系电话. 0411-84461112</p>
                </div>
            </div>
        </div>
    </div>
    <!-- start header -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"/></a>
                </div>
                <!--  <div class="navbar-collapse collapse ">
                      <ul class="nav navbar-nav">
                          <li><a href="index.html">首页</a></li>
                          <li class="dropdown">
                              <a href="#" data-toggle="dropdown" class="dropdown-toggle">关于我们 <b class="caret"></b></a>
                              <ul class="dropdown-menu">
                                  <li><a href="about.html">公司</a></li>
                                  <li><a href="#">团队</a></li>
                                  <li><a href="#">新闻</a></li>
                                  <li><a href="#">投资</a></li>
                              </ul>
                          </li>
                          <li><a href="services.html">服务</a></li>
                          <li><a href="projects.html">项目</a></li>
                          <li><a href="pricing.html">价格</a></li>
                          <li class="active"><a href="contact.html">联系我们</a></li>
                      </ul>
                  </div>
                  -->
            </div>
        </div>
    </header><!-- end header -->
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="pageTitle">联系我们</h2>
                </div>
            </div>
        </div>
    </section>
    <section id="content">

        <div class="container">

            <div class="row">
                <div class="col-md-6">
                    <p>您的宝贵的意见是我们前进的最大动力.</p>

                    <!-- Form itself -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <h3>用户反馈</h3>
                        <div class="control-group">
                            <div class="controls">
                                <input type="text" class="form-control"
                                       placeholder="邮箱地址" id="email" required
                                       data-validation-required-message="Please enter your name"/>
                                <p class="help-block"></p>
                            </div>
                        </div>


                        <div class="control-group">
                            <div class="controls">
				 <textarea rows="10" cols="100" class="form-control"
                           placeholder="内容" id="message" required
                           data-validation-required-message="反馈内容" minlength="5"
                           data-validation-minlength-message="Min 5 characters"
                           maxlength="999" style="resize:none"></textarea>
                            </div>
                        </div>
                        <div id="success"></div> <!-- For success/fail messages -->
                        <button id="sendMessage" type="submit" class="btn btn-primary pull-right">发送
                        </button>
                        <br/>
                    </form>
                </div>
                <div class="col-md-6">
                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                    <div style="overflow:hidden;height:500px;width:600px;">
                        <div id="gmap_canvas" style="height:500px;width:600px;"></div>
                        <style>#gmap_canvas img {
                            max-width: none !important;
                            background: none !important
                        }</style>
                        <a class="google-map-code" href="http://www.trivoo.net" id="get-map-data">trivoo</a></div>
                    <script type="text/javascript"> function init_map() {
                        var myOptions = {
                            zoom: 14,
                            center: new google.maps.LatLng(40.805478, -73.96522499999998),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
                        marker = new google.maps.Marker({
                            map: map,
                            position: new google.maps.LatLng(40.805478, -73.96522499999998)
                        });
                        infowindow = new google.maps.InfoWindow({content: "<b>The Breslin</b><br/>2880 Broadway<br/> New York"});
                        google.maps.event.addListener(marker, "click", function () {
                            infowindow.open(map, marker);
                        });
                        infowindow.open(map, marker);
                    }
                    google.maps.event.addDomListener(window, 'load', init_map);</script>
                </div>
            </div>
        </div>

    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widgetheading">联系我们</h5>
                        <address>
                            <strong>公司地址</strong><br>
                            德岳(大连)网络科技有限公司<br>
                            大连经济开发区双D五街14号.
                        </address>
                        <p>
                            <i class="icon-phone"></i> 0411-84461112 <br>
                            <i class="icon-envelope-alt"></i> admin@de-light.biz
                        </p>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="widget">
                        <h5 class="widgetheading">友情链接</h5>
                        <ul class="link-list">
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                        </ul>
                    </div>
                </div>
                <!-- <div class="col-sm-3">
                     <div class="widget">
                         <h5 class="widgetheading">合作单位</h5>
                         <ul class="link-list">
                             <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                             <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                             <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
                         </ul>
                     </div>
                 </div>
                 <div class="col-sm-3">
                     <div class="widget">
                         <h5 class="widgetheading">Recent News</h5>
                         <ul class="link-list">
                             <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                             <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                             <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
                         </ul>
                     </div>
                 </div>
                 -->
            </div>
        </div>
        <div id="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="copyright">
                            <p>
                                Copyright © 2017.De-light(Dalian)Network Technology co.,Ltd. All rights reserved.</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a>
                            </li>
                            <li><a href="#" data-placement="top" title="Google plus"><i
                                    class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<!-- Vendor Scripts -->
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>

<script src="contact/jqBootstrapValidation.js"></script>
<script src="contact/contact_me.js"></script>
<script src="js/front/feedback.js"></script>
</body>
</html>