<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>商品列表</title>
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
            <li>商品列表</li>
        </ul>
    </div>
</div>
<!-- //short-->
<!--//banner -->
<!--Typography-->


<section class="inner-pages py-5">







        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td>
                    <table cellspacing="0" class="listcontent" >
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;共${pageResult.totalCount}种商品
                                <hr/>
                                <table cellspacing="0" class="booklist">
                                    <tr>
                                      <c:forEach items="${pageResult.list}" var="product">
                                        <td>  <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two"  style="width: 25%;height: auto">
                                            <div  style="width: 25%;height: auto;">
                                                <div class="men-pro-item" style="width: 250px;height: 400px">
                                                    <div class="men-thumb-item" style="width: 250px;height: 280px">
                                                        <img src="${pageContext.request.contextPath}${product.imgurl}" class="img-thumbnail img-fluid" alt="">
                                                        <div class="men-cart-pro">
                                                            <div class="inner-men-cart-pro">
                                                                <a href="${pageContext.request.contextPath}/productInfo.action?id=${product.id}" class="link-product-add-cart">查 看 更 多</a>
                                                            </div>
                                                        </div>
                                                        <span class="product-new-top">热卖</span>
                                                    </div>
                                                    <div class="item-info-product">
                                                        <div class="info-product-price">
                                                            <div class="grid_meta">
                                                                <div class="product_price">
                                                                    <h4>
                                                                        <a href="${pageContext.request.contextPath}/productInfo.action?id=${product.id}">${product.name }</a>
                                                                    </h4>
                                                                    <div class="grid-price mt-2">
                                                                        <span class="money ">${product.price }$</span>
                                                                    </div>
                                                                </div>
                                                                <ul class="stars">
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fas fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fas fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fas fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="fas fa-star" ></i>
                                                                        </a>
                                                                    </li>
                                                                    <li>
                                                                        <a href="#">
                                                                            <i class="far fa-star-half-o"></i>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="toys single-item hvr-outline-out">
                                                                <form action="#" method="post">
                                                                    <input type="hidden" name="cmd" value="_cart">
                                                                    <input type="hidden" name="add" value="1">
                                                                    <input type="hidden" name="toys_item" value="${product.name }">
                                                                    <input type="hidden" name="amount" value="${product.price }">
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> </td>
                                      </c:forEach>
                                    </tr>
                                </table>
                                <div class="pagination">
                                    <ul>
                                        <!-- 1.上一页 -->
                                        <c:if test="${pageResult.currentPage == 1}">
                                            <li class="disablepage">上一页 &lt;&lt;</li>
                                        </c:if>
                                        <c:if test="${pageResult.currentPage != 1}">
                                            <li ><a href="${pageContext.request.contextPath}/showProductByPage.action?category=${category}&page=${pageResult.currentPage - 1}">上一页 &lt;&lt;</a></li>
                                        </c:if>

                                        <!-- 2.显示分页 -->
                                        <c:forEach begin="1" end="${pageResult.totalPage}" var="i">
                                            <li><a href="${pageContext.request.contextPath}/showProductByPage.action?category=${category}&page=${i}">${i}</a></li>
                                        </c:forEach>


                                        <!-- 3.下一页 -->
                                        <c:if test="${pageResult.currentPage == pageResult.totalPage}">
                                            <li class="disablepage">下一页 &gt;&gt;</li>
                                        </c:if>

                                        <c:if test="${pageResult.currentPage != pageResult.totalPage}">
                                            <li class="nextpage"><a href="${pageContext.request.contextPath}/showProductByPage.action?category=${category}&page=${pageResult.currentPage + 1}">下一页&gt;&gt;</a></li>
                                        </c:if>

                                    </ul>
                                </div>
                         </td>
                        </tr>
                    </table>
                </td>

            </tr>

        </table>






</section>

<!-- footer -->
<%@include file="foot.jsp"%>
<!-- //footer -->

<!-- 登陆模态框 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="register-form">
                    <form action="login.action" method="post">
                        <div class="fields-grid">
                            <font color="#ff0000"><s:property value="login_msg" /></font>
                            <div class="styled-input">
                                <input type="text" placeholder="username" name="username" required="">
                            </div>
                            <div class="styled-input">
                                <input type="password" placeholder="password" name="password" required="">
                            </div>
                            <div class="styled-input">
                                <a href="register.jsp" style="color: #9fcdff">没有账号？点击注册</a>
                            </div>
                            <button type="submit" class="btn subscrib-btnn">登陆</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- //登陆模态框 -->


<script src='js/jquery-2.2.3.min.js'></script>
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

