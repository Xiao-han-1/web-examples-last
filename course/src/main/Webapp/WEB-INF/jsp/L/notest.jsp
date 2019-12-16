<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/7
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>东北林业大学</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <!-- font files -->
    <link href='http://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
    <!-- /font files -->
    <!-- css files -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/resources/css/viewbox.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/resources/css/hoverex-all.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/css/portfolio.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- /css files -->
    <!-- js files -->
    <script type="text/javascript" src="/js/modernizr.custom.js"></script>
    <!-- /js files -->
    <style>
        a.news
        {
            font-size: 20px;
            color: #01b2fe;
            text-align: center;
        }
        a.allnews
        {
            font-size: 15px;
            color: #5cb85c;
            text-align: center;
        }
        a.login
        {
            color:#01b2fe;
            font-size: 2em;
            margin: 0px;
            padding:10px;
            background-color: #8A0B00;
        }
        a.find
        {
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div class="topbar-w3ls">
    <a href="index.html" class="logo"><h1>东北林业大学</h1></a>
    <div class="top-agileits">
        <form class="search-container" action="#" method="post">
            <input id="search-box" type="text" class="search-box" name="q" placeholder="Search Here"/>
            <label for="search-box"><span class="glyphicon glyphicon-search search-icon"></span></label>
            <input type="submit" id="search-submit" />
        </form>
        <p> <b class="login"><a href="/index">${username},点此注销</a></b></p>
        <div class="clearfix"></div>
    </div>
</div>
<!-- banner section -->
<section class="banner">
    <!-- navigation -->
    <div class="navbar-wrapper">
        <div class="container-fluid">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html" class="page-scroll">首页</a></li>
                        <li><a href="#about" class="page-scroll">学校概况</a></li>
                        <li><a href="#team" class="page-scroll">学校领导</a></li>
                        <li><a href="#testimonial" class="page-scroll">教师队伍</a></li>
                        <li><a href="student.html" class="page-scroll">招生简章</a></li>
                        <!--						<li><a href="#contact" class="page-scroll">联系方式</a></li>-->
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- /navigation -->
    <div id="slideshow-banner">
        <ul>
            <li class="slideshow-item"><img src="/resources/images/banner1.jpg" alt="" /></li>
            <li class="slideshow-item"><img src="/resources/images/banner3.jpg" alt="" /></li>
        </ul>
    </div>
</section>
<!-- /banner section -->
<!-- about section -->
<section class="about-w3ls" id="about">
    <div class="container-fluid">
        <div class="col-lg-6 col-md-6 col-sm-6 about-info1">
            <img src="/resources/images/logo.png" alt="">
            <h2 class="w3layouts w3 w3l agileinfo slideanim">校内新闻</h2>
            <!--			<img src="/resources/images/about-img.jpg" class="max img-responsive slideanim" alt="">-->
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 about-info2">
            <p class="about-p1 ">&nbsp;&nbsp;&nbsp;&nbsp;东北林业大学创建于1952年7月，原名东北林学院，是在浙江大学农学院森林系和东北农学院森林系基础上建立的，由原国家林业部直属管理。1985年8月更名为“东北林业大学”。2000年3月由国家林业局划归教育部直属管理。2005年10月经国家发改委、财政部和教育部批准，成为 “211工程”重点建设学校。2011年6月成为国家“优势学科创新平台”项目重点建设高校，2017年9月经国务院批准被列入国家一流学科建设高校行列。2010年
                11月教育部和国家林业局签署协议、2012年3月教育部与黑龙江省人民政府签署协议，合作共建东北林业大学。</p>
            <br>
            <br>
            <ul class="sides slideanim">
<%--                <li><p><span class="fa fa-fighter-jet" aria-hidden="true"></span> 关于确认2020年度个人所得税专项附加扣除的通知</p></li>--%>
<%--                <li><p><span class="fa fa-fighter-jet" aria-hidden="true"></span> 东北林业大学2019年招生专业（类）及学费标准</p></li>--%>
<%--                <li><p><span class="fa fa-fighter-jet" aria-hidden="true"></span> 致2019级全体新同学的一封信</p></li>--%>
<%--                <li><p><span class="fa fa-fighter-jet" aria-hidden="true"></span>我校学子在2019中国教育机器人大赛中获全国一等奖</p></li>--%>
    <li><a class="news" href="/getallnews">新闻</a></li>
    <c:forEach items="${newsList}" var="n">
        <li><a class="allnews" href="news?id=${n.id}">标题:${n.title}  时间:${n.time}</a> </li>
    </c:forEach>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</section>
<!-- /about section -->
<!-- team section -->
<section class="team-w3ls slideanim" id="team">
    <div class="container">
        <h3 class="slideanim">领导班子</h3>
        <br>
        <div class="col-lg-4 col-md-4 col-sm-4 team-agile1">
            <div class="team-info">
                <img src="/resources/images/team-img1.jpg" alt="" class="img-responsive slideanim">
                <div class="team-details slideanim">
                    <h4 class="slideanim">张志坤</h4>
                    <p class="team-p1 slideanim">党委书记</p>
                    <ul class="social-icons1 slideanim">
                        <li><a class="find" href="http://www.baidu.com">查看详情</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 team-agile2">
            <div class="team-info">
                <img src="/resources/images/team-img2.jpg" alt="" class="img-responsive slideanim">
                <div class="team-details slideanim">
                    <h4 class="slideanim">李斌</h4>
                    <p class="team-p1 slideanim">校长</p>
                    <ul class="social-icons1 slideanim">
                        <li><a class="find" href="http://www.baidu.com">查看详情</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 team-agile3">
            <div class="team-info">
                <img src="/resources/images/team-img3.jpg" alt="" class="img-responsive slideanim">
                <div class="team-details slideanim">
                    <h4 class="slideanim">陈文慧</h4>
                    <p class="team-p1 slideanim">党委副书记</p>
                    <ul class="social-icons1 slideanim">
                        <li><a class="find" href="http://www.baidu.com">查看详情</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="test-w3ls slideanim" id="testimonial">
    <div class="container">
        <h3 class="slideanim">教师风采</h3>
        <p class="text-header slideanim">东北林业大学软件工程教师队伍</p>
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000" data-pause="hover">
            <!-- Indicators -->
            <ol class="carousel-indicators slideanim">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner slideanim" role="listbox">
                <div class="item active">
                    <div class="test-agile">
                        <div class="col-lg-4 col-md-4 col-sm-4 test-info1">
                            <img src="/resources/images/test-img1.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 test-info2">
                            <p class="test-p1">罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益性行业专项、省教改项目15项，发表论文20余篇，教材3部。<span class="line-w3ls"></span></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="test-agile">
                        <div class="col-lg-4 col-md-4 col-sm-4 test-info1">
                            <img src="/resources/images/test-img2.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 test-info2">
                            <p class="test-p1">李莉，博士，副教授，软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。主持和参加国家级、省部级各类科学研究项目、教学研究项目10余项，各级各类科研及教学获奖5项，多次获得东北林业大学教学质量优秀奖、教书育人先进个人，获得东北林业大学青年教师授课大赛二等奖，信息与计算机工程学院教师授课精英赛第一名。获得2016年东北林业大学“我最喜爱的十佳教师”称号。主持重点课程、精品在线课程、线上线下建设课程各1门。拥有专利权3项。在国内外核心期刊及国际学术会议上发表学术论文 10余篇，编写教材3部。美国University of California Riverside访问学者。<span class="line-w3ls"></span></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="test-agile">
                        <div class="col-lg-4 col-md-4 col-sm-4 test-info1">
                            <img src="/resources/images/test-img3.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 test-info2">
                            <p class="test-p1">王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。<span class="line-w3ls"></span></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="item">
                    <div class="test-agile">
                        <div class="col-lg-4 col-md-4 col-sm-4 test-info1">
                            <img src="/resources/images/test-img4.jpg" class="img-responsive" alt="">
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8 test-info2">
                            <p class="test-p1">邱兆文，博士，副教授，硕士生导师。美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。CCF杰出会员，CCF理事，CCF计算机应用专委委员。主要研究方向为信息检索、机器学习、医学影像三维可视化等。主持参加国家自然科学基金、科技部中央引导地方重大专项基金、国家发改委产业化基金等18项。国家发明专利4项。在国内外核心期刊发表学术论文30篇。主编专著1部。获省科技进步三等奖 2项，第五届中国创新创业大赛互联网及移动互联网行业企业组第三名 。2018年入选科技部创新人才推进计划，2019年入选万人计划领军人才。2019年获黑龙江省十大杰出创业青年。<span class="line-w3ls"></span></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</section>
<!-- /testimonial section -->
<!-- updates -->
<section class="update-w3ls" >
    <div class="container">
        <h3 class="slideanim">实验室建设</h3>
        <div class="col-lg-6 col-md-6 update-info1">
            <div class="update-agileits slideanim">
                <div class="col-sm-6 col-xs-6 update-agile1">
                    <img src="/resources/images/update1.jpg" alt="" class="img-up slideanim">
                </div>
                <div class="col-sm-6 col-xs-6 update-agile2">
                    <a href="#" data-toggle="modal" data-target="#basicModal1" class="slideanim"><h4>移动开发实验室</h4></a>
                    <p class="update-p1 slideanim">925</p>
                    <p class="update-p2 slideanim">本实验室的目的是培养学生掌握基本的编程原理、编程工具和编程语言，在毕业时具备一定的编程能力，具有相当的就业竞争优势，并在进入IT行业后具有持续的自我发展能力</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 update-info2">
            <div class="update-agileits slideanim">
                <div class="col-sm-6 col-xs-6 update-agile1">
                    <img src="/resources/images/update1.jpg" alt="" class="img-up slideanim">
                </div>
                <div class="col-sm-6 col-xs-6 update-agile2">
                    <a href="#" data-toggle="modal" data-target="#basicModal2" class="slideanim"><h4>创新实验室</h4></a>
                    <p class="update-p1 slideanim">923</p>
                    <p class="update-p2 slideanim">本实验室的目的是培养学生掌握基本的编程原理、编程工具和编程语言，在毕业时具备一定的编程能力，具有相当的就业竞争优势，并在进入IT行业后具有持续的自我发展能力。 </p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="modal fade" id="basicModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title text-center" id="myModalLabel1">925</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <img src="/resources/images/update1.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <h5>移动开发实验室</h5>
                            <p>>本实验室的目的是培养学生掌握基本的编程原理、编程工具和编程语言，在毕业时具备一定的编程能力，具有相当的就业竞争优势，并在进入IT行业后具有持续的自我发展能力</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="basicModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title text-center" id="myModalLabel2">923</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <img src="/resources/images/updata2.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <h5>移动开发实验室</h5>
                            <p>>本实验室的目的是培养学生掌握基本的编程原理、编程工具和编程语言，在毕业时具备一定的编程能力，具有相当的就业竞争优势，并在进入IT行业后具有持续的自我发展能力</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /updates -->
<!---<section class="map slideanim">
	<iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" style="border:0" allowfullscreen></iframe>
</section>--->
<!-- /Google Map -->
<a href="#0" class="cd-top">Top</a>
<!-- /back to top -->
<!-- js files -->
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/SmoothScroll.min.js"></script>
<script type="text/javascript" src="/js/numscroller-1.0.js"></script>
<script type="text/javascript" src="/js/jquery.slide.js"></script>
<script type="text/javascript">
    $('#slideshow-banner').slide({
        cdTime : 5000,
        controllerLeftButton : "/resources/images/left.png",
        controllerRightButton : "/resources/images/right.png"
    });
</script>
<script src="/js/jquery.easing.min.js"></script>
<script src="/js/grayscale.js"></script>
<script src="/js/main.js"></script>
<script src="/js/jquery.viewbox.min.js"></script>
<script>
    $(function(){

        $('.thumbnail').viewbox();
        $('.thumbnail-2').viewbox();

        (function(){
            var vb = $('.popup-link').viewbox();
            $('.popup-open-button').click(function(){
                vb.trigger('viewbox.open');
            });
            $('.close-button').click(function(){
                vb.trigger('viewbox.close');
            });
        })();

        (function(){
            var vb = $('.popup-steps').viewbox({navButtons:false});

            $('.steps-button').click(function(){
                vb.trigger('viewbox.open',[0]);
            });

            $('.next-button').click(function(){
                vb.trigger('viewbox.open',[1]);
            });
            $('.prev-button').click(function(){
                vb.trigger('viewbox.open',[0]);
            });
            $('.ok-button').click(function(){
                vb.trigger('viewbox.close');
            });
        })();

    });
</script>
<script src="/js/retina-1.1.0.js"></script>
<!--script src="js/jquery.hoverdir.js"></script!-->
<script src="/js/jquery.hoverex.min.js"></script>
<script src="/js/jquery.isotope.min.js"></script>
<script>
    // Portfolio
    (function($) {
        "use strict";
        var $container = $('.portfolio'),
            $items = $container.find('.portfolio-item'),
            portfolioLayout = 'fitRows';

        if( $container.hasClass('portfolio-centered') ) {
            portfolioLayout = 'masonry';
        }

        $container.isotope({
            filter: '*',
            animationEngine: 'best-available',
            layoutMode: portfolioLayout,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            },
            masonry: {
            }
        }, refreshWaypoints());

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }

        $('nav.portfolio-filter ul a').on('click', function() {
            var selector = $(this).attr('data-filter');
            $container.isotope({ filter: selector }, refreshWaypoints());
            $('nav.portfolio-filter ul a').removeClass('active');
            $(this).addClass('active');
            return false;
        });

        function getColumnNumber() {
            var winWidth = $(window).width(),
                columnNumber = 1;

            if (winWidth > 1200) {
                columnNumber = 5;
            } else if (winWidth > 950) {
                columnNumber = 4;
            } else if (winWidth > 600) {
                columnNumber = 3;
            } else if (winWidth > 400) {
                columnNumber = 2;
            } else if (winWidth > 250) {
                columnNumber = 1;
            }
            return columnNumber;
        }

        function setColumns() {
            var winWidth = $(window).width(),
                columnNumber = getColumnNumber(),
                itemWidth = Math.floor(winWidth / columnNumber);

            $container.find('.portfolio-item').each(function() {
                $(this).css( {
                    width : itemWidth + 'px'
                });
            });
        }

        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        $container.imagesLoaded(function () {
            setPortfolio();
        });

        $(window).on('resize', function () {
            setPortfolio();
        });
    })(jQuery);
</script>
<script>
    $(window).scroll(function() {
        $(".slideanim").each(function(){
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
</script>
<!-- /js files -->
</body>
</html>
