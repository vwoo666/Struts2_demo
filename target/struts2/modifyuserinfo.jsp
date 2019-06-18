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
    <title>用户信息修改</title>
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
            <li>用户信息修改</li>
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
                                <form action="modifyUserInfo.action" method="post">
                                    <input type="hidden" name="id" value="${u.id}">
                                    <table width="100%" border="0" cellspacing="2" class="upline">

                                        <tr>
                                            <td style="text-align:right; width:20%">会员邮箱：</td>
                                            <td style="width:40%; padding-left:20px">${u.email}</td>
                                            <td>&nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">会员名：</td>
                                            <td style="padding-left:20px">${u.username}</td>
                                            <td>&nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">修改密码：</td>
                                            <td>
                                                <input type="password" name="password" class="textinput" />
                                            </td>
                                            <td>
                                                <font color="#999999">密码设置至少6位，请区分大小写</font>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">重复密码：</td>
                                            <td>
                                                <input type="password" class="textinput" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">性别：</td>
                                            <td colspan="2">&nbsp;&nbsp;
                                                <input type="radio" name="gender" value="男" ${u.gender == '男' ? 'checked="checked"' : ''} /> 男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="gender" value="女" ${u.gender == '女' ? 'checked="checked"' : ''}/> 女
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">联系方式：</td>
                                            <td colspan="2">
                                                <input name="telephone" type="text" value="${u.telephone}" class="textinput" />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="text-align:right">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>

                                    </table>





                                    <p style="text-align:center">

                                        <input type="image" src="images/botton_gif_025.gif" border="0">

                                    </p>
                                    <p style="text-align:center">&nbsp;</p>
                                </form></td>


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

