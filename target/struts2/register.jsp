<%--
  Created by IntelliJ IDEA.
  User: victor
  Date: 2019-06-12
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>注 册</title>
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
    <script type="text/javascript">
        <%-- 更改验证码--%>
        function changeValidateCode(obj) {
            var currentTime= new Date().getTime();
            obj.src = "rand.action?d=" + currentTime;
        }


        //ajax
        function ajax(){
            var inputUserNameObj = $("#username");
            inputUserNameObj.keyup(function(){
                var text = inputUserNameObj.val();
            });
            $("#username").blur(function(){
                var text = inputUserNameObj.val();
                $.post("checkUserName.action?username="+text,null,function(response){
                    if(response!=('可以使用')){
                        document.getElementById("namemessage").innerHTML="<font color='red'>"+response+"</font>";
                    }else{
                        document.getElementById("namemessage").innerHTML="<font color='green'>"+response+"</font>";
                    }
                });
            });
        };
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#bt").click(function f(){
                if($("#email1").val()=="")
                {
                    alert("邮箱不能为空");
                    return false;
                }
                var email=$("#email1").val();
                if(!email.match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/))
                {
                    alert("邮箱格式不正确！请重新输入");
                    $("#email1").focus();
                }
            })
        })

        /*密码验证*/
        function checkPwd(){
            var pwd=$("pwd");
            var pwdId=divId("pwd_prompt");
            pwdId.innerHTML="";
            var reg=/^[a-zA-Z0-9]{4,10}$/;
            if(reg.test(pwd)==false){
                alert("密码不能含有非法字符，长度在4-10之间");
                return false;
            }
            return true;
        }

        function checkRepwd(){
            var repwd=$("repwd");
            var pwd=$("pwd");
            var repwdId=divId("repwd_prompt");
            repwdId.innerHTML="";
            if(pwd!=repwd){
                alert("两次输入的密码不一致");
                return false;
            }
            return true;
        }

    </script>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
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
                <a href="index.jsp">主 页</a>
                <span>/ /</span>
            </li>
            <li>注 册</li>
        </ul>
    </div>
</div>
<!-- //short-->
<!--//banner -->
<!--Typography-->
<section class="inner-pages py-5">
    <div class="container py-xl-5 py-sm-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">注 册</h3>
        <!-- forms -->
        <section class="typo-section py-4 border-top border-bottom">
            <h3 class="typo-main-heading mb-lg-4 mb-3 pr-3 pb-1">新会员注册</h3>
            <h4 class="typo-sub-heading mb-3">Toys Store Register</h4>
            <!-- form1 -->
            <form action="register.action" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="email">会员邮箱：</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="username">会员名：</label>
                        <span id="namemessage"></span>
                        <input type="text" class="form-control" name="username" id="username" onblur="ajax()" placeholder="UserName">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="password">密码：</label>
                        <input type="password" name="password" class="form-control" id="password" onblur="checkPwd()" placeholder="Password">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="repassword">重复密码：</label>
                        <input type="password" class="form-control" name="repassword" id="repassword" onblur="checkRepwd()" placeholder="Convinced Password">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <td style="text-align:right">性别：</td>
                    <td colspan="2">&nbsp;&nbsp;
                        <input type="radio" name="gender" value="男" checked="checked" /> &nbsp;&nbsp;&nbsp;男
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="女" /> &nbsp;&nbsp;&nbsp;女</td>
                </div>
                </br>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="telephone">联系电话：</label>
                        <input type="text"  name="telephone" class="form-control" id="telephone" placeholder="Telephone">
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >个人介绍：</label>
                        </br>
                        <textarea class="textarea" name="introduce"></textarea>
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>


                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >输入校验码：</label>
                        <font color="red"><s:property value="checkcode_err" /></font>
                        </br>
                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">

                        <table width="80%" border="0" cellspacing="2" class="upline">
                            <tr>
                                <td style="width:50%"><input type="text" class="textinput" name="checkcode"/>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td  style="width:50%">
                                    <img src="${pageContext.request.contextPath}/rand.action" width="180" height="30" class="textinput" style="height:30px;" id="img" onclick="changeValidateCode(this)"/>&nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>

                    </div>
                    <div class="form-group col-md-6">
                        <input type="hidden" class="form-control" >
                    </div>
                </div>




                <button type="submit" class="btn btn-primary" id="bt" name="submit" data-toggle="modal" data-target="#exampleModal-two">
                    提 交
                </button>

            </form>
            <!--// form1 -->















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
                                <form action="#" method="post">
                                    <div class="fields-grid">
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

            <!--js working-->
            <script src='js/jquery-2.2.3.min.js'></script>
            <!--//js working-->
            <!-- start-smoth-scrolling -->
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
            <!-- start-smoth-scrolling -->
            <!-- here stars scrolling icon -->
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
            <!-- //here ends scrolling icon -->
            <!--bootstrap working-->
            <script src="js/bootstrap.min.js"></script>
            <!-- //bootstrap working-->      <!-- //OnScroll-Number-Increase-JavaScript -->

        </section>

    </body>
</html>