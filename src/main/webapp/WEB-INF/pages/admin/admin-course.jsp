<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
</head>

<body>

<style type="text/css">
    body{
        position: relative;
        font-family: 'Open Sans', sans-serif;
    }
    .sticky-left-side {
        position: fixed;
        height: 100%;
        z-index: 100;
        outline: none;
        width: 240px;
        overflow:hidden;
        background: #424f63;
        color:#fff;
    }
    .left-side-inner{
        overflow-x: hidden;
        overflow-y: auto;
        height: 100%;
        margin-right: -13px;
        padding:0;

    }
    .left-side-inner .panel{
        background: inherit;
        color: inherit;
        border: none;
    }
    .left-side-inner .panel-heading{
        background: inherit;
        color: inherit;
        border: none;
        height: 44px;
        padding: 12px 20px 12px 20px;
    }
    .left-side-inner ul{
        list-style: none;
        padding:0;
    }
    .left-side-inner .panel-default>.panel-heading+.panel-collapse>.panel-body {
        border-top:none;
    }
    .left-side-inner li.panel:hover{
        background: #353f4f;
        color: #65cea7;
    }
    .left-side-inner li.panel.active{
        background: #353f4f;
        color: #65cea7;
    }
    .left-side-inner a{
        text-decoration: none;
        color: #fff;
    }

    .left-side-inner .panel-heading a i{
        font-size: 18px;
        margin-right: 10px;
        width: 20px;
        text-align: center;
        display: inline-block;
    }

    .left-side-inner .panel-heading a[aria-expanded="true"]{
        color: #65cea7;
    }

    .left-side-inner .panel-body li{
        /*height: 40px;*/
        font-size: 14px;
    }
    .left-side-inner .panel-body li.active{
        background: #2a323f;
    }

    .left-side-inner .panel-body li.active a{
        color:#65cea7;
    }

    .left-side-inner .panel-body a{
        height: 40px;
        padding-left:50px;
        line-height: 40px;
        color: #fff;
        font-size: 15px;
    }

    .left-side-inner a:hover{
        color: #65cea7;
    }

    /* 主体部分 */
    .sticky-header .main-content {
        padding: 50px 0 0 0;
    }
    .main-content {
        width: auto;
        margin:0 0 0 240px;
        background: #eff0f4;
        min-height: 1000px;
    }

</style>

<div class="content-fluid">
    <div class="left-side sticky-left-side">

        <h3 class="logo-text text-center">管理员控制台</h3>
        <div class="left-side-inner">
            <ul class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <li class="panel panel-default">
                    <div class="panel-heading" role="tab">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#user-manage" aria-expanded="false" aria-controls="user-manage">
                                <i class="icon-user"></i>用户管理
                            </a>
                        </h4>
                    </div>
                    <div id="user-manage" class="panel-collapse collapse">
                        <ul class="panel-body" >
                            <li><a href="index_alt.html">用户权限控制</a></li>
                            <li><a href="index.html">用户信息导入</a></li>
                        </ul>

                    </div>
                </li>
                <li class="panel panel-default">
                    <div class="panel-heading" role="tab">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#video-manage" aria-expanded="false" aria-controls="video-manage">
                                <i class="icon-film"></i>
                                视频管理
                            </a>
                        </h4>
                    </div>
                    <div id="video-manage" class="panel-collapse collapse">
                        <ul class="panel-body" >
                            <li><a href="index_alt.html">权限管理</a></li>
                            <li><a href="index.html">视频分类</a></li>
                        </ul>
                    </div>
                </li>
                <li class="panel panel-default">
                    <div class="panel-heading" role="tab">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#file-manage" aria-expanded="false" aria-controls="file-manage">
                                <i class="icon-file-alt"></i>
                                文件管理
                            </a>
                        </h4>
                    </div>
                    <div id="file-manage" class="panel-collapse collapse">
                        <ul class="panel-body" >
                            <li><a href="index_alt.html">文件权限</a></li>
                            <li><a href="index.html">文件上传</a></li>
                        </ul>
                    </div>
                </li>
                <li class="panel panel-default active">
                    <div class="panel-heading" role="tab">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#course-manage" aria-expanded="true" aria-controls="course-manage">
                                <i class="icon-bar-chart"></i>
                                课程管理
                            </a>
                        </h4>
                    </div>
                    <div id="course-manage" class="panel-collapse collapse in">
                        <ul class="panel-body" >
                            <li class="active"><a href="index_alt.html">课程分配</a></li>
                            <li><a href="index.html">课程管理</a></li>
                        </ul>
                    </div>
                </li>
                <!--  -->
                <li class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#statistics-manage" aria-expanded="false" aria-controls="statistics-manage">
                                <i class="icon-bar-chart"></i>
                                统计管理
                            </a>
                        </h4>
                    </div>
                    <div id="statistics-manage" class="panel-collapse collapse">
                        <ul class="panel-body" >
                            <li><a href="index_alt.html">用户统计</a></li>
                            <li><a href="index.html">资料统计</a></li>
                        </ul>
                    </div>
                </li>




            </ul>

            <!--sidebar nav end-->

        </div>
    </div>
    <style type="text/css">
        .main-content .header-section{
            position: fixed;
            top: 0;
            left: 240px;
            width: 100%;
            height: 50px;
            padding: 7px;
            z-index: 100;
            background: #fff;
        }
        .header-section .menu-right{
            margin-right: 255px;
        }
        .header-section .menu-right a{

        }
        .header-section .menu-right ul li i{
            font-size: 20px;
            padding: 12px 0px 12px 5px;
        }
        .header-section .btn .badge{
            top: -5px;
            background: #ff6c60;
            color: #fff;
            margin-right: 5px;
        }
        .header-section .btn .caret {
            margin-left: 0;
            position: relative;
            top: -2px;
        }
        .header-section .dropdown-menu {
            left: -80px;
        }
    </style>



    <div class="main-content">
        <div class="header-section">

            <form class="form-inline pull-left">
                <div class="form-group">
                    <label for="search-input"></label>
                    <input type="text" class="form-control" id="search-input" placeholder="输入搜索内容...">
                </div>
                <button type="submit" class="btn btn-info"><i class="icon-search"></i>确定</button>
            </form>
            <div class="menu-right text-right">
                <ul class="notification-menu list-inline">
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-reorder"></i><span class="badge">14</span><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-envelope"></i> <span class="badge">14</span><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-bell"></i> <span class="badge">14</span><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${resPath}/images/headPic/default.jpg" style="width: 22px;height: 22px;border-radius: 50%;"><span style="margin: 10px;">Jhon</span><span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!--notification menu end -->
        </div>
        <!-- header end -->
        <%@include file="content/course.jsp"%>

    </div>
</div>

</body>
</html>