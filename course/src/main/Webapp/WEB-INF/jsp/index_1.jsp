<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2019/12/11
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" lang="en">
    <!--    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>-->
    <!--    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">-->
    <!--    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>-->
    <script src="../../resources/js/jquery-3.4.1.min.js"></script>
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../resources/js/bootstrap.min.js"></script>
    <style>
        div.item img{
            width:100%;
        }
        div#carousel-example-generic{
            width:100%;
            /*margin:0 auto;*/
            float: left;
        }
        img{
            height:350px;
        }

    </style>

</head>
<body>

<div id="carousel-example-generic" class="carousel slide lb" data-ride="carousel"  data-interval="500">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>

    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">

            <img src="../../resources/img/100-1.png" >
            <div class="carousel-caption"><p>这是一段文字,我也不知道写什么，就祝你开心</p></div>
        </div>
        <div class="item">

            <img src="../../resources/img/105-1.png" >
            <div class="carousel-caption"><p>这是一段文字，提前拜个年</p></div>
        </div>


    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

    </a>

</div>
</body>
</html>

