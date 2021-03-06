<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>大连财正会计</title>
    <link rel="stylesheet" type="text/css" href="css/style_cp.css">
    <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <script type="text/javascript" src="js/top.js"></script>
    <script type="text/javascript" src="js/jquery.elastislide.js"></script>
    <script type="text/javascript" src="js/front/index.js"></script>
</head>
<body>
<div class="cp_box">
    <div id="cp_dfc_header"> </div>
    <div style="clear:both"></div>
    <div class="cp_df_bzd_hnm">
        <div class="px1000 ak234">
            <ul class="cp_nav_bar clearfix">
                <li><a href="index" class="header_acivity">首页</a></li>
                <li><a href="xxjj.html">学校简介</a></li>
                <li><a href="kskc.html">开设课程</a></li>
                <li><a href="xxxc.html">学校相册</a></li>
                <li><a href="lxwm.html">联系我们</a></li>
            </ul>

        </div>
    </div>
</div>


<div id="banner_tabs">
    <div class="index_banner">
        <ul>
            <li style="z-index: 1; opacity: 1;"><a href="" style="background:url(images/banner1.png) center center no-repeat;background-size:cover;"></a></li>
            <li style="z-index: 0; opacity: 1;"><a href="" style="background:url(images/banner2.png) center center no-repeat;background-size:cover;"></a></li>
            <li style="z-index: 0; opacity: 1;"><a href="" style="background:url(images/banner1.png) center center  no-repeat;background-size:cover;"></a></li>
        </ul>
        <cite>
            <span class="cur">1</span>
            <span class="">2</span>

            <span class="">3</span>
        </cite>

    </div>
    <div class="px1000"> </div>
</div>
<div class="hs_pxkc amrk">
    <div class="px1000">
        <div class="clearfix">
			<span class="fl">
				<img src="images/hs_title_pxkc.png">
			</span>
        </div>

    </div>
    <div style="height:30px"></div>
    <div class="wrapper">
        <!-- <h1>ddd</h1> -->

        <div id="focus">
            <ul>
                <c:forEach items="${listType}" var="type">
                <li>
                    <div class="hs_pxkc_bor">
                        <h1 class="hs_pxkc_titles">${type.typeName}</h1>
                        <div class="fl k_two wid90">
                            <p class="ellipsis poqt">${type.typeName}</p>
                            <c:forEach items="${type.listCourse}" var="course">
                            <p>${course.name}:${course.content}</p>
                            </c:forEach>
                        </div>
                        <div class="fl wid10 abt">更多>></div>
                    </div>
                </li>
                </c:forEach>
            </ul>
        </div><!--focus end-->

    </div><!-- wrapper end -->
</div>



<!-- 报考条件 -->
<div class="hs_bk_box amrk">
    <div class="px1000"> </div>
</div>

<!-- 名师风采 -->

</div>
</div>
</div>








<div class="me_is_line">

</div>
<div class="footer">
    <div class="foot_info outer clearfix">
        <div class="px1000 clearfix">



            <div class="info_right wid80 fl">

                <ul class="links_listz clearfix colorqz wid100">
                    <li><a href="#" class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于我们</a></li>
                    <li><a href="#">大连财正会计咨询服务有限公司</a></li>
                    <li class="bor_none"><a href="lxwm.html">联系我们</a></li>

                </ul>

                <p class="tips_middle">© 2017 大连财正会计咨询服务有限公司.版权所有</p>
                <p class="tips_bottom">辽ICP备17008979号 </p>

            </div>
        </div>
    </div>

</div>







<!--在线留言-->

<div class="floating_ck">
    <dl>
        <dt></dt>
        <dd class="consult">
        	<span>
        		<img src="images/hs_kf_zxzx.png">
        	</span>
        </dd>
        <dd class="words">
        	<span>
        		<img src="images/hs_kf_qq.png">
        	</span>
            <<div class="floating_left"><a href="">在线QQ835834165</a></div> -->
        </dd>
        <dd class="quote">
            <span><img src="images/hs_kf_dh.png"></span>
            <div class="floating_left"><a href="">
                热线:0411-39509699</a></div>
            <span><img src="images/hs_kf_dh.png"></span>
            <div class="floating_left"><a href="">
                手机:15041128355</a></div>
        </dd>

        <dd class="return">
        	<span onClick="gotoTop();return false;">
        	<img src="images/hs_kf_top.png">
        	</span>
        </dd>
    </dl>
</div>



<script type="text/javascript">
    $('#carousel').elastislide({
        imageW 		: 80,
        minItems	: 3,
        border		: 0
    });
</script>






<div class="hs_bm_form hide" id="alert_form_content">
    <div class="bauy">
        <div class="clearfix hs_bm_form-z">
            <h1 class="fl hs_bm_form_title">我是小标题</h1>
            <span class="fr alert_eqit"></span>
        </div>
        <div class="cnmb_wqnmlgb">
            <form>
                <div>
                    <label>姓名</label>
                    <input type="text" name="">
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>联系方式</label>
                    <input type="text" name="">
                    <span>*只能输入数字</span>
                </div>
                <div>
                    <label>备注</label>
                    <input type="text" name="">
                </div>
                <div class="hs_sb_tj_po">
                    <!-- <label>sd</label> -->
                    <input type="submit" name="">
                    <!-- <label>sd</label> -->
                    <input type="reset" name="">
                </div>
            </form>
        </div>
    </div>
</div>






</body>
</html>