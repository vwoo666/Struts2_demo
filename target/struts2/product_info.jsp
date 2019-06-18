<%--
  Created by IntelliJ IDEA.
  User: victorwang
  Date: 2019-06-02
  Time: 01:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>

    <title>商品详情</title>
    <!--meta tags -->
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
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
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
            <li>商品详情</li>
        </ul>
    </div>
</div>
<!-- //short-->
<!--//banner -->
<!--/shop-->
<section class="banner-bottom py-lg-5 py-3">
    <div class="container">
        <div class="inner-sec-shop pt-lg-4 pt-3">
            <div class="row">
                <div class="col-lg-4 single-right-left ">
                    <div class="grid images_3_of_2">
                        <div class="flexslider1">
                            <ul class="slides">
                                <li data-thumb="${pageContext.request.contextPath}${product.img1}">
                                    <div class="thumb-image"> <img src="${pageContext.request.contextPath}${product.img1}" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                                </li>
                                <li data-thumb="${pageContext.request.contextPath}${product.img2}">
                                    <div class="thumb-image"> <img src="${pageContext.request.contextPath}${product.img2}" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                                </li>
                                <li data-thumb="${pageContext.request.contextPath}${product.img3}">
                                    <div class="thumb-image"> <img src="${pageContext.request.contextPath}${product.img3}" data-imagezoom="true" class="img-fluid" alt=" "> </div>
                                </li>
                            </ul>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 single-right-left simpleCart_shelfItem">
                    <h3>${product.name}</h3>
                    <p><span class="item_price">售价:${product.price} $</span>

                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>库 存:</h5>
                            ${product.pnum}
                        </div>
                    </div>
                    <div class="occasional">
                        <h5>分 类:</h5>
                        ${product.category}
                    </div>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    </br>
                    <div class="occasion-cart">
                        <div class="toys single-item singlepage">
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <input type="hidden" name="toys_item" value="${product.name}"><%--  //商品名字--%>
                                <input type="hidden" name="amount" value="${product.price}">  <%--  //商品价格--%>
                                <button type="submit" class="toys-cart ptoys-cart add" >
                                  <a href="${pageContext.request.contextPath}/addCart.action?id=${product.id}">
                                      加入购物车
                                  </a>
                                </button>
                            </form>
                        </div>
                    </div>

                </div>
                <div class="clearfix"> </div>
                <!--/tabs-->
                <div class="responsive_tabs">
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li>描述</li>
                        </ul>
                        <div class="resp-tabs-container">

                            <div class="tab2">
                                <div class="single_page">
                                    <div class="bootstrap-tab-text-grids">
                                        <div class="bootstrap-tab-text-grid">
                                            <div class="bootstrap-tab-text-grid-left">
                                                <img src="${pageContext.request.contextPath}${product.imgurl}" alt=" " class="img-fluid">
                                            </div>
                                            <div class="bootstrap-tab-text-grid-right">
                                                <ul>
                                                    <li><a href="#">${product.name}</a></li>
                                                    <li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i>立即去购买</a></li>
                                                </ul>
                                                <p>
                                                    ${product.description}
                                                </p>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!--//tabs-->
            </div>
        </div>
    </div>
</section>


<!-- footer -->

<%@include file="foot.jsp"%>


<!-- //footer -->


<script src="js/jquery-2.2.3.min.js"></script>
<script src="js/minicart.js"></script>
<script>
    toys.render();

    toys.cart.on('toys_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {}
        }
    });
</script>
<script src="js/jquery-ui.js"></script>
<script>

    $(window).load(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 9000,
            values: [50, 6000],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });
        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    });
</script>
<script src="js/imagezoom.js"></script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default',
            width: 'auto',
            fit: true,
            closed: 'accordion',
            activate: function (event) {
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
        $('#verticalTab').easyResponsiveTabs({
            type: 'vertical',
            width: 'auto',
            fit: true
        });
    });
</script>
<script src="js/jquery.flexslider.js"></script>
<script>
    $(window).load(function () {
        $('.flexslider1').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
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
    $(window).load(function () {
        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 9000,
            values: [50, 6000],
            slide: function (event, ui) {
                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });
        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

    });
</script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>