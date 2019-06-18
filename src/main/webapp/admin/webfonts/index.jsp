<%--
  Created by IntelliJ IDEA.
  User: victorwang
  Date: 2019-05-24
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>学生信息管理系统登陆</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Student Login Form Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Stylesheets -->
    <link href="css/style2.css" rel='stylesheet' type='text/css' />
    <!--// Stylesheets -->
    <!--online fonts-->
    <link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <!--//online fonts-->
</head>

<body>
<h1>学生信息管理系统登陆</h1>
<div class="w3ls-login box">
    <img src="images/logo.png" alt="logo_img" />
    <!-- form starts here -->
    <form action="#" method="post">
        <div class="agile-field-txt">
            <input type="text" name="text" placeholder="username" required="" />
        </div>
        <div class="agile-field-txt">
            <input type="password" name="password" placeholder="password" required="" id="myInput" />
            <div class="agile_label">
                <input id="check3" name="check3" type="checkbox" value="show password">
                <label class="check" for="check3">记住账号</label>
            </div>
        </div>
        <div class="w3ls-bot">
            <input type="submit" value="LOGIN">
        </div>
    </form>
</div>
<!-- //form ends here -->

</body>

</html>