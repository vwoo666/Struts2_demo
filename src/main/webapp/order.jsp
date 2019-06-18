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
    <title>确认订单</title>
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
            <li>确认订单</li>
        </ul>
    </div>
</div>
<!-- //short-->
<!--//banner -->
<!--Typography-->


<section class="checkout py-lg-4 py-md-3 py-sm-3 py-3">



    <table width="100%" border="0" cellspacing="0">
        <tr>

            <td>
                <form id="orderForm" action="${pageContext.request.contextPath }/createOrder.action" method="post">
                    <table cellspacing="0" class="infocontent">
                        <tr>
                            <td><table width="100%" border="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <p>尊敬的会员：<font style="color:#FF0000">${user.username}</font>   欢迎您来到商城结算中心</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td><table cellspacing="1" class="carttable">
                                        <tr>
                                            <td width="10%">商品编号</td>
                                            <td width="40%">商品名称</td>
                                            <td width="10%">价格</td>
                                            <td width="10%">类别</td>
                                            <td width="10%">数量</td>
                                            <td width="10%">小计</td>

                                        </tr>
                                    </table>

                                        <table width="100%" border="0" cellspacing="0">
                                        <c:set var="totalPrice" value="0"></c:set>
                                        <c:forEach items="${cart}" var="entry" varStatus="vs">
                                            <tr>
                                                <td width="10%">${entry.key.id}</td>
                                                <td width="40%">${entry.key.name}</td>
                                                <td width="10%">${entry.key.price}</td>
                                                <td width="10%">${entry.key.category}</td>
                                                <td width="10%">${entry.value}</td>
                                                <td width="10%">${entry.key.price * entry.value}</td>
                                            </tr>
                                            <!-- 累加总价格  -->
                                            <c:set var="totalPrice" value="${totalPrice + entry.key.price * entry.value}"></c:set>
                                            </c:forEach>
                                        </table>


                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td style="text-align:right; padding-right:40px;">
                                                    <font style="color:#FF0000">合计：&nbsp;&nbsp;${totalPrice}元</font>
                                                </td>
                                            </tr>
                                        </table>




                                        <div class="privacy about">
                                            <div class="checkout-left">

                                                <div class="col-md-8 address_form">
                                                    <form action="#"  method="post" class="creditly-card-form agileinfo_form" >
                                                        <section class="creditly-wrapper wrapper">
                                                            <div class="information-wrapper">
                                                                <div class="first-row form-group">



                                                                    <div class="controls">
                                                                        <label class="control-label">收货人：: </label>
                                                                        <input class="billing-address-name form-control" type="text" name="receiverName" placeholder="Name">
                                                                    </div>





                                                                    <div class="card_number_grids">
                                                                        <div class="card_number_grid_left">





                                                                            <div class="controls">
                                                                                <label class="control-label">联系方式:</label>
                                                                                <input class="form-control" type="text" name="receiverPhone" placeholder="Mobile number">
                                                                            </div>








                                                                        </div>
                                                                        <div class="card_number_grid_right">







                                                                            <div class="controls">
                                                                                <label class="control-label">收货地址： </label>
                                                                                <input class="form-control" type="text" name="receiverAddress" placeholder="Address">
                                                                            </div>









                                                                        </div>
                                                                        <div class="clear"> </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                    </form>
                                                </div>
                                                <div class="clearfix"> </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>



                                        </p>
                                        <hr />
                                        <p style="text-align:right">
                                            <%--JS提交表单方法--%>
                                            <img src="images/gif53_029.gif" width="204" height="51" onclick="createOrder()" border="0" />
                                        </p>
                                    </td>
                                </tr>
                            </table></td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
    </table>




</section>

<!-- footer -->
<%@include file="foot.jsp"%>
<!-- //footer -->

<script type="text/javascript">
    function createOrder() {
        //获取表单标签，调用sumbit方法就可以了
        document.getElementById('orderForm').submit();
    }
</script>
</body>
</html>

