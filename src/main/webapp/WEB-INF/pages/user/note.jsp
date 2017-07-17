<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
    <script type="text/javascript" src="${resPath}/js/d3.min.js"></script>
</head>


<style type="text/css">

    body{
        position: relative;
    }

    .navbar{
        margin-bottom: 0;
    }
    .navbar .navbar-header{
        padding-top: 5px;
        font-size: 24px;
        margin:0;
    }
    .navbar .navbar-brand{
        font-size: inherit;
    }
    .navbar .navbar-nav{
        padding-top: 5px;
    }
    .navbar .navbar-nav li a{
        font-size: 18px;
        color: #0b9091;
    }
    .navbar .navbar-nav li.nav-head-pic a{
        padding: 0 15px 0 15px;
    }
    .navbar .navbar-nav li a img{
        width: 50px;
        height: 50px;
        border-radius: 50%;
    }
</style>

<body>
<header class="navbar navbar-static-top bs-docs-nav" id="top">
    <div class="container">
        <h3 class="navbar-header">
            <a href="#" class="navbar-brand">个人中心</a>
        </h3>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="" target="_blank">我的消息</a></li>
            <li><a href="#" onclick="" target="_blank">我的收藏</a></li>
            <li><a href="#" onclick="" target="_blank">历史记录</a></li>
            <li class="nav-head-pic"><a href="#" onclick="" target="_blank">Memory&nbsp&nbsp<img src="${resPath}/images/headPic/default.jpg"/></a></li>
            <li><a href="#" onclick="" target="_blank">退出</a></li>
        </ul>
        </nav>
    </div>
</header>

<style type="text/css">

    .user-center{
        overflow: hidden;
        width: 980px;
        height: 100%;
        margin: 10px auto 100px;
        border: 1px solid #e1e2e5;
        box-shadow: 0 2px 4px rgba(0,0,0,.14);
        background: #FAFAFA;
        border-radius: 4px;
        padding-left: 0;
    }
    .user-nav{
        padding: 0;
    }
    .user-nav h4{
        color:#99a2aa;
        height: 36px;
        line-height: 36px;
        font-size: 24px;
    }
    .user-content{
        border-left: 1px solid #ddd;
        background: #fff;
        position: relative;
        min-height: 880px;
    }
    .user-nav ul{
        list-style: none;
        padding: 0;
    }
    .user-nav ul li a{
        display: block;
        height: 48px;
        font-size: 16px;
        line-height: 48px;
        text-decoration: none;
        color: #19b37b;
    }

    .user-nav ul li a i{
        width: 18px;
        height: 36px;
        font-size: 18px;
        margin-left: 15px;
        margin-right: 20px;
        color: #919191;
    }
    .user-nav ul li{
        padding:0 20px 0 20px;
        color: #00a1d7;
    }
    .user-nav ul li:hover{
        background:#19b37b;
        color:#fff;
    }
    .user-nav ul li:hover i{
        color:#fff;
    }
    .user-nav ul li:hover a{
        color:#fff;
    }

    .user-nav ul li.active{
        background:#19b37b;
        color:#fff;
    }
    .user-nav ul li.active i{
        color:#fff;
    }
    .user-nav ul li.active a{
        color:#fff;
    }
</style>

<div class="container user-center">
    <div class="user-nav col-md-2">
        <h4 class="text-center">个人中心</h4>
        <ul>
            <li><a href="${basePath}/user/main"><i class="icon-home"></i>首&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp页</a></li>
            <li><a href="${basePath}/user/course"><i class="icon-home"></i>课程管理</a></li>
            <li class="active"><a href="${basePath}/user/note"><i class="icon-home"></i>笔记管理</a></li>
            <li><a href=""><i class="icon-home"></i>个人收藏</a></li>
            <li><a href=""><i class="icon-home"></i>消息管理</a></li>
            <li><a href=""><i class="icon-home"></i>我的信息</a></li>
        </ul>
    </div>
    <%@include file="content/note-frame.jsp"%>
</div>


</body>
</html>