<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>
<head>
    <title>首页</title>
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
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
    <link href="css/JiSlider.css" rel="stylesheet">
    <link rel="stylesheet" href="css/shop.css" type="text/css" />
    <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
    <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
<div class="header-outs" id="home">


    <div class="header-bar">



        <%@include file="head.jsp"%>
        <%@include file="navbar.jsp" %>


    </div>



    <!-- Slideshow 4 -->
    <div class="slider text-center">
        <div class="callbacks_container">
            <ul class="rslides" id="slider4">
                <li>
                    <div class="slider-img one-img">
                        <div class="container">
                            <div class="slider-info ">
                                <h5>为 您 的 孩 子 挑 选 最 好 的 <br>礼 物</h5>
                                <div class="bottom-info">
                                    <p>为 所 有 儿 童 打 造 智 能、环 保、益 智、安 全 的 玩 具 是 我 们 的 使 命 !</p>
                                </div>
                                <div class="outs_more-buttn">
                                    <a href="#">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner -->
<!-- about -->
<section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-4">
        <h3 class="title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3" style="color:red">打 折 产 品</h3>
        <div class="row banner-below-w3l">
            <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                <img src="images/bl/3/1.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">巴斯遙控車</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                <img src="images/a2.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">TEDDY BEAR(YELLOW)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                <img src="images/lg/1/1.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">DEEP SPACE ROCKET</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                <img src="images/a4.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">TEDDY BEAR(WHITE)</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                <img src="images/bb/2/1.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">BARBIE MUSIC TEACHER</h4>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                <img src="images/nerf/3/1.jpg" class="img-thumbnail" alt="">
                <div class="banner-right-icon">
                    <h4 class="pt-3">MICROSHOTS</h4>
                </div>
            </div>
            <div class="toys-grids-upper">
                <div class="about-toys-off">
                    <h2>Get Up to <span>70% Off </span>On Selected Toys</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //about -->
<!--new Arrivals -->
<section class="blog py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">热 销 专 区</h3>
        <div class="slid-img">
            <ul id="flexiselDemo1">
                <li>
                    <div class="agileinfo_port_grid">
                        <img src="images/a1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">TEDDY BEAR(BLUE)</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=101">立即购买</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="agileinfo_port_grid">
                        <img src="images/bl/4/1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">飞行巴斯</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=203">立即购买</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="agileinfo_port_grid">
                        <img src="images/bl/5/1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">胡迪巴斯对讲机</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=204">立即购买</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="agileinfo_port_grid ">
                        <img src="images/lg/1/1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">DEEP SPACE ROCKET</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=301">立即购买</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="agileinfo_port_grid">
                        <img src="images/bl/2/1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">CINEMA-RISE STANDARD</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=205">立即购买</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="agileinfo_port_grid ">
                        <img src="images/nerf/4/1.jpg" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                            <h4 class="pt-3">TRIAD EX3 BLASTER</h4>
                        </div>
                        <div class="outs_more-buttn">
                            <a href="${pageContext.request.contextPath}/productInfo.action?id=504">立即购买</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>
<!--//about -->
<!--Customers Review -->
<section class="clients py-lg-4 py-md-3 py-sm-3 py-3" id="clients">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
        <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">客 户 好 评</h3>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t1.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>邦季</h4>
                                        <span class="mt-2">广州</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/t101.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            颜色鲜艳，价格实惠，即安全用舒适，颜色美丽外表好看，大小合适，外表美观，造型好美观，适合女生的生日礼物，
                                            绒毛顺滑，触摸起来舒适手感好，手与腿长短合适，可爱型，更适合漂亮女孩子，这个颜色特别好.
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t2.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>长安街揸Fit人</h4>
                                        <span class="mt-2">北京</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/tt2.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            开启宝宝早期启蒙教育我们为孩子搭建缤纷的玩乐环节，
                                            能促使孩子开展创造性的角色游戏，帮助宝宝早期智力发育。
                                            满意！无论款式还是颜色以及做工都很满意。孩子高兴的说了很多遍喜欢,什么都别说，就两个字，超值。
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t1.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>北国的怪蜀叔</h4>
                                        <span class="mt-2">深圳</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/t101.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            准备好了吗？登登，暖心小兔闪亮出场！一身红揭色的针织套衫专为抵御冬季的寒冷，
                                            米色的绒毛彰显兔兔本色。她是一只喜欢在山野间蹦跳打滚的调皮兔子。
                                            下垂的双耳加上一双大长腿，这个可爱的小家伙是你冬日里的好玩伴！
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t3.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>Tom
                                        </h4>
                                        <span class="mt-2">上海</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/t101.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            给朋友买的生日礼物。泰迪熊超级可爱。没色差，质量好，价格实惠。朋友也很喜欢。谢谢快递小哥把大熊给送到来了，
                                            我拆开一看，颜色还挺正，摸着非常柔软。总体看着就是高大上，很不错哦(⊙o⊙)哦
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t2.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>Jack</h4>
                                        <span class="mt-2">佛山</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/tt2.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            送给妹妹的礼物 收到货了 送给妹妹 妹妹很开心 很满意
                                            太喜欢啦，质量很好，大小也合适，没有气味抱着特别舒服
                                            质量超级好，放心购买吧！颜色正，大小合适，宝贝超级喜欢
                                            店家发货很快，快递也很给力，这款熊仔很可爱，包装很精美，挺喜欢的，满意。
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 clients-w3layouts-row">
                            <div class="least-w3layouts-text-gap">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 news-img">
                                        <img src="images/t3.jpg" alt="" class="image-fluid">
                                    </div>
                                    <div class="col-md-8 col-sm-8 clients-says-w3layouts">
                                        <h4>Jerry</h4>
                                        <span class="mt-2">吉林</span>
                                    </div>
                                    <div class="mt-3 news-agile-text">
                                        <img src="images/t101.jpg" alt="" class="image-fluid">
                                        <p class="mt-3"><span class="fas fa-quote-left"></span>
                                            熊熊很可爱的造型 做工很是精致 很喜欢这个,质量超级好，放心购买吧
                                            店家发货很快，快递也很给力，这款熊仔很可爱，包装很精美，挺喜欢的，满意。
                                            第二次购买了。真心不错。这次是帮朋友买的，满意 下次还会再来～～～
                                            <span class="fas fa-quote-right"></span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">上一条</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">下一条</span>
            </a>
        </div>
    </div>
</section>
<!--//Customers Review -->
<section class="product py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">新 品 专 区</h3>
        <div class=" img-toy-w3l-top">
        </div>
        <div class="mt-lg-4 mt-3 product-info-img">
            <p>在Rexcelsior的Stubble Trouble Emmet和Rex Dangervest 上进行LEGO®太空探险之旅！THE LEGO MOVIE 2™角色Emmet脸上留着胡茬，更像是他的背心朋友。
                但他会喜欢在雷克斯的超级科幻宇宙飞船上旅行吗？加入雷克斯驾驶舱或与乐高猛禽一起玩。这款超棒的乐高套装和来自THE LEGO MOVIE 2的宇宙飞船发现了很多东西 - 只需确保你已准备好迎接敌人的攻击。
                重新装载6导弹弹簧射击并射击！
            </p>
            <div class="clients_more-buttn">
                <a href="${pageContext.request.contextPath}/productInfo.action?id=301">立即购买</a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 img-toy-w3l-left">
                <div class="toys-img-one">
                </div>
                <div class="mt-lg-4 mt-3 product-info-img">
                    <p>毛茸茸的，眼睛很灵动，软软的，可以靠着它看电视，这就很舒服。
                        没事了可以摆着，也很好看，晚上睡觉的时候可以抱着她，很有安全感
                    </p>
                    <div class="clients_more-buttn">
                        <a href="${pageContext.request.contextPath}/productInfo.action?id=103">立即购买</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 img-toy-agile-right">
                <div class="toys-img-one-two">
                </div>
                <div class="mt-lg-4 mt-3 product-info-img">
                    <p>芭比的全名是 Barbara Millicent Roberts，过去这些年来她被赋予相当多的同伴，
                        最被熟知的就是她的帅男友Ken (Ken Carson），他第一次登场是在西元1961年，如同芭比一样，
                        肯也是使用了罗丝·韩德勒儿子的名字。
                    </p>
                    <div class="clients_more-buttn">
                        <a href="${pageContext.request.contextPath}/productInfo.action?id=401">立即购买</a>
                    </div>
                </div>
                <div class="toys-img-one-three">
                </div>
                <div class="mt-lg-4 mt-3 product-info-img">
                    <p>
                        大熊很大只，好喜欢，质量杠杠的，没有粗糙的做工，没有线头，
                        超可爱，材料柔软摸起来舒适,没有一点瑕疵。玩偶超级超级可爱啊！
                    </p>
                    <div class="clients_more-buttn">
                        <a href="${pageContext.request.contextPath}/productInfo.action?id=104">立即购买</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Product-about-->
<section class="about py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
        <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3" style="color: #80bdff" >关 于 我 们</h3>
        <div class="about-products-w3layouts">
            <p>Toys Store始于 1999 年英国伦敦创立，专注于玩具制造开发，品牌一直使用优质面料，可爱以及创想新奇的设计，
                高品质以及突出的设计使得我们在行业中脱颖而出，迅速成为世界上豪华玩具公司，并获得了世界上超柔软的玩具品牌殊荣。
                选择和收集 iELLYCA 丁毛绒玩具已成为一种时尚。 这个名字由来源于孩子们喜欢的果冻和猫咪还有他们的快乐的笑声，
                一直深受孩子们喜欢，造就了今日我们的品牌标志和形象。
            </p>
            <p class="my-lg-4 my-md-3 my-3">
                本店所售官方正版商品，均严格按照日本家纺月品标准和日本玩具协会制定的玩具安全标准 ST 一 2002 ，
                由中国、印度等地生产，日本品质监控， 中国仓百发。 日本、中国、新加玻等国家及中国台湾、香港地区同步销售．
                商品及包装一样，请放心购买。

            </p>
        </div>
    </div>
</section>
<!--//Product-about-->
<!--subscribe-address-->
<section class="subscribe">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 map-info-right px-0">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3150859.767904157!2d-96.62081048651531!3d39.536794757966845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1408111832978"> </iframe>
            </div>
            <div class="col-lg-6 col-md-6 address-w3l-right text-center">
                <div class="address-gried ">
                    <span class="far fa-map"></span>
                    <p>25478 Road St.121<br>USA New Hill
                    <p>
                </div>
                <div class="address-gried mt-3">
                    <span class="fas fa-phone-volume"></span>
                    <p> +(000)123 4565<br>+(010)123 4565</p>
                </div>
                <div class=" address-gried mt-3">
                    <span class="far fa-envelope"></span>
                    <p><a href="mailto:info@example.com">info@example1.com</a>
                        <br><a href="mailto:info@example.com">info@example2.com</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
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
</body>
</html>