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
            <li>购物车</li>
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

                <table cellspacing="0" class="infocontent">
                    <tr>
                        <td><img src="images/tot666.png" width="666" height="89" />
                            <table width="100%" border="0" cellspacing="0">

                                <tr>
                                    <td>
                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td width="10%">商品编号</td>
                                                <td width="30%">商品名称</td>
                                                <td width="10%">价格</td>
                                                <td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量</td>
                                                <td width="10%">库存</td>
                                                <td width="10%">小计</td>
                                                <td width="10%">取消</td>
                                            </tr>
                                        </table>
                                        <table width="100%" border="0" cellspacing="0">
                                            <!-- 定义一个总价格的变量 -->
                                            <c:set var="totalPrice" value="0"></c:set>
                                            <c:forEach items="${cart}" var="entry">
                                            <tr>
                                                <td width="10%">${entry.key.id}</td>
                                                <td width="30%">${entry.key.name}</td>

                                                <td width="10%">${entry.key.price}</td>
                                                <td width="20%">
                                                    <input type="button" value='-' style="width:20px" onclick="changeNum(${entry.key.id},${entry.value - 1},${entry.key.pnum})">

                                                    <input name="text" type="text"  readonly="readonly" value="${entry.value}" style="width:40px;text-align:center" />

                                                    <input type="button" value='+' style="width:20px" onclick="changeNum(${entry.key.id},${entry.value + 1},${entry.key.pnum})">

                                                </td>
                                                <td width="10%">${entry.key.pnum}</td>
                                                <td width="10%">${entry.key.price * entry.value}</td>

                                                <td width="10%">
                                                    <a href="#" style="color:#FF0000; font-weight:bold" onclick="changeNum(${entry.key.id},${entry.value - entry.value},${entry.key.pnum})">X</a>
                                                </td>
                                            </tr>
                                                <!-- 累加总价格  -->
                                                <c:set var="totalPrice" value="${totalPrice + entry.key.price * entry.value}"></c:set>
                                                </c:forEach>
                                        </table>



                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td style="text-align:right; padding-right:40px;">
                                                    <font style="color:#FF6600; font-weight:bold">合计：&nbsp;&nbsp;${totalPrice}元</font>
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="text-align:right; margin-top:10px">
                                            <a href="showProductByPage.action">
                                                <img src="images/gwc_jx.gif" border="0" />
                                            </a>

                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <a href="settleAccount.action">
                                                <img src="images/gwc_buy.gif" border="0" />
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table></td>
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

<script type="text/javascript">



    //id,商品的ID
    //num,更改后的购物数据
    //pnum就是库存
    function changeNum(id,num,pnum) {
        //alert(id + "-" + num + "-" + pnum);
        //1.购买的数量不能大于库存
        if(num > pnum){
            alert('购买数量不能大于库存');
            return;
        }

        //2.如果购买的数量为0，从购物车移除，给个提示
        if(num == 0){
            var b = confirm('您确定要把这件商品从购物车移除');
            if(b == false){
                return;
            }
        }

        //3.如果可以进行加减，对session的购物车数据进行更新
        //alert("更新session的购物车数据");
        location.href = '${pageContext.request.contextPath}/changeNum.action?id='+id +'&num='+num;
    }
</script>
</body>
</html>

