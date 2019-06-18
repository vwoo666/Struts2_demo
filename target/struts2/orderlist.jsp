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
    <title>订单查询</title>
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
            <li>订单查询</li>
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

                            <td>



                            <td style="padding:20px">
                                <table width="100%" border="0" cellspacing="0" class="tableopen">
                                    <tr>
                                        <td bgcolor="#A3E6DF" class="tableopentd01">订单号</td>
                                        <td bgcolor="#A3D7E6" class="tableopentd01">收件人</td>
                                        <td bgcolor="#A3CCE6" class="tableopentd01">订单时间</td>
                                        <td bgcolor="#A3B6E6" class="tableopentd01">状态</td>
                                        <td bgcolor="#A3E2E6" class="tableopentd01">操作</td>
                                    </tr>


                                    <c:forEach items="${orders}" var="order">
                                    <tr>
                                        <td class="tableopentd02">${order.id}</td>
                                        <td class="tableopentd02">${order.receiverName}</td>
                                        <td class="tableopentd02">${order.ordertime}</td>
                                        <td class="tableopentd02">${order.paystate == 1 ? '已支付' : '未支付'}</td>
                                        <td class="tableopentd03"><a href="${pageContext.request.contextPath }/findOrderByOrderId.action?orderId=${order.id}" style="color: #9fcdff">查看</a>&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </table>
                            </td>


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

</body>
</html>

