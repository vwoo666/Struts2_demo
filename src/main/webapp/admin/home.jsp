<%--
  Created by IntelliJ IDEA.
  User: victorwang
  Date: 2019-05-02
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Toys Store后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
    <script>


        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/bar.css">
    <link rel="stylesheet" type="text/css" href="css/pignose.calender.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style4.css">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
</head>
<body>
<div class="se-pre-con"></div>
<div class="wrapper">

    <nav id="sidebar">
        <div class="sidebar-header">
            <h1>
                Toys Store管理系统
            </h1>
            <span>M</span>
        </div>
        <div class="profile-bg"></div>
        <ul class="list-unstyled components">

            <li>
                <a href="productList.action" target="rightFrame">
                    <i class="fas fa-chart-pie"></i>
                    商品查询
                </a>
            </li>
            <li>
                <a href="add.jsp" target="rightFrame">
                    <i class="fas fa-th"></i>
                    增加商品
                </a>
            </li>

            <li>
                <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                    <i class="fas fa-users"></i>
                    用户
                    <i class="fas fa-angle-down fa-pull-right"></i>
                </a>
                <ul class="collapse list-unstyled" id="pageSubmenu3">
                    <li>
                        <a href="#" target="rightFrame">管理员手册</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/logout.action" >注销</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>

    <div id="content">

        <nav class="navbar navbar-default mb-xl-5 mb-4">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
<%--                公告栏--%>
                公告栏📢:
                <div id=demo style=overflow:hidden;height:25px;width:460px;background:#FFFFFF;color:#FF0000>
                    <div id=demo1>
                        🔥火拼双十一<br>
                        🔥撸起袖子就是干<br>
                        🔥备战6.18<br>
                    </div>
                    <div id=demo2></div>
                </div>
                <script>
                    var speed=100;
                    demo2.innerHTML=demo1.innerHTML;  //克隆demo1为demo2
                    function Marquee(){
                        if(demo2.offsetTop-demo.scrollTop<=0)  //当滚动至demo1与demo2交界时
                            demo.scrollTop-=demo1.offsetHeight;  //demo跳到最顶端
                        else{
                            demo.scrollTop++;
                        }
                    }
                    var MyMar=setInterval(Marquee,speed)  //设置定时器

                    demo.onmouseover=function() {//鼠标移上时清除定时器达到滚动停止的目的
                        clearInterval(MyMar);
                    }
                    demo.onmouseout=function() { //鼠标移开时重设定时器
                        MyMar=setInterval(Marquee,speed);
                    }
                </script>

                <script src='js/jquery-2.2.3.min.js'></script>

                        <script src="js/modernizr.js"></script>
                        <script>

                            $(window).load(function () {
                                $(".se-pre-con").fadeOut("slow");;
                            });
                        </script>

                        <script>
                            $(document).ready(function () {
                                $('#sidebarCollapse').on('click', function () {
                                    $('#sidebar').toggleClass('active');
                                });
                            });
                        </script>

                        <script src="js/SimpleChart.js"></script>
                        <script>
                            var graphdata4 = {
                                linecolor: "Random",
                                title: "Thursday",
                                values: [{
                                    X: "6",
                                    Y: 300.00
                                },
                                    {
                                        X: "7",
                                        Y: 101.98
                                    },
                                    {
                                        X: "8",
                                        Y: 140.00
                                    },
                                    {
                                        X: "9",
                                        Y: 340.00
                                    },
                                    {
                                        X: "10",
                                        Y: 470.25
                                    },
                                    {
                                        X: "11",
                                        Y: 180.56
                                    },
                                    {
                                        X: "12",
                                        Y: 680.57
                                    },
                                    {
                                        X: "13",
                                        Y: 740.00
                                    },
                                    {
                                        X: "14",
                                        Y: 800.89
                                    },
                                    {
                                        X: "15",
                                        Y: 420.57
                                    },
                                    {
                                        X: "16",
                                        Y: 980.24
                                    },
                                    {
                                        X: "17",
                                        Y: 1080.00
                                    },
                                    {
                                        X: "18",
                                        Y: 140.24
                                    },
                                    {
                                        X: "19",
                                        Y: 140.58
                                    },
                                    {
                                        X: "20",
                                        Y: 110.54
                                    },
                                    {
                                        X: "21",
                                        Y: 480.00
                                    },
                                    {
                                        X: "22",
                                        Y: 580.00
                                    },
                                    {
                                        X: "23",
                                        Y: 340.89
                                    },
                                    {
                                        X: "0",
                                        Y: 100.26
                                    },
                                    {
                                        X: "1",
                                        Y: 1480.89
                                    },
                                    {
                                        X: "2",
                                        Y: 1380.87
                                    },
                                    {
                                        X: "3",
                                        Y: 1640.00
                                    },
                                    {
                                        X: "4",
                                        Y: 1700.00
                                    }
                                ]
                            };
                            $(function () {
                                $("#Hybridgraph").SimpleChart({
                                    ChartType: "Hybrid",
                                    toolwidth: "50",
                                    toolheight: "25",
                                    axiscolor: "#E6E6E6",
                                    textcolor: "#6E6E6E",
                                    showlegends: false,
                                    data: [graphdata4],
                                    legendsize: "140",
                                    legendposition: 'bottom',
                                    xaxislabel: 'Hours',
                                    title: 'Weekly Profit',
                                    yaxislabel: 'Profit in $'
                                });
                            });
                        </script>
            </div>
        </nav>
        <iframe name="rightFrame" id="rightFrame" scrolling="auto"
                height="500" width="100%" src="message.jsp" marginwidth="0"
                marginheight="0" border="0" frameborder="0" align="center">
        </iframe>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<script src="js/bootstrap.min.js"></script>



 </body>
</html>
