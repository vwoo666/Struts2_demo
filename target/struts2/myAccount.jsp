<%--
  Created by IntelliJ IDEA.
  User: victor
  Date: 2019-06-13
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的账户</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <link rel="stylesheet" href="css/main.css" type="text/css" />
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
<!--headder-->
<div class="header-outs" id="home">
    <div class="header-bar">
        <%@include file="head.jsp"%>
        <%@include file="navbar.jsp" %>
    </div>
</div>
<!--//headder-->

<!-- banner -->
<div class="inner_page-banner one-img">
</div>
<!--//banner -->

<!-- short -->
<div class="using-border py-3">
    <div class="inner_breadcrumb  ml-4">
        <ul class="short_ls">
            <li>
                <a href="#">主页</a>
                <span>/ /</span>
            </li>
            <li>我的账户</li>
        </ul>
    </div>
</div>
<!-- //short-->
<!--//banner -->
<!--Typography-->


<section class="inner-pages py-5">






    <div id="divpagecontent">
        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td width="25%"><table width="100%" border="0" cellspacing="0"
                                       style="margin-top:30px">
                    <tr>
                        <td class="listtitle">我的帐户</td>
                    </tr>

                    <tr>
                        <td class="listtd">
                            <img src="images/miniicon.gif" width="9" height="6" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="findUserById.action?id=${user.id}" style="color: #9fcdff">用户信息修改</a>
                        </td>
                    </tr>

                    <tr>
                        <td class="listtd">
                            <img src="images/miniicon.gif" width="9" height="6" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/findOrderById.action" style="color: #9fcdff">订单查询</a>
                        </td>
                    </tr>

                    <tr>
                        <td class="listtd">
                            <img src="images/miniicon.gif" width="9" height="6" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="logout.action" style="color: #9fcdff">用戶退出</a>
                        </td>
                    </tr>

                </table>
                </td>
                <td>
                    <table cellspacing="0" class="infocontent">
                        <tr>
                            <td style="padding:20px">
                                <p>
                                    <img src="images/mya.jpg" width="631" height="436" />
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>





</section>

<!-- footer -->
<%@include file="foot.jsp"%>
<!-- //footer -->


<script src='js/jquery-2.2.3.min.js'></script>
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider4").responsiveSlides({
            auto: true,
            pager:false,
            nav:true ,
            speed: 900,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<script src="js/jquery.flexisel.js"></script>
<script>
    $(window).load(function() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 3000,
            autoPlay:true,
            autoPlaySpeed: 2000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint:640,
                    visibleItems:2
                },
                tablet: {
                    changePoint:768,
                    visibleItems: 2
                }
            }
        });

    });
</script>
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 900);
        });
    });
</script>
<script>
    $(document).ready(function () {

        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>

<script src="js/bootstrap.min.js"></script>
</body>
</html>

