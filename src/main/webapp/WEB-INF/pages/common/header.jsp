<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--这个文件头部的样式--%>
<style type="text/css">
    body{
        font-family: 'Open Sans', sans-serif;
    }
    a{
        color: #09a269;
    }
    .header{
        width: 100%;
        padding:8px 100px 0 100px;
        height: 50px;
    }
    .header h2{
        margin:0;
        color: #09a269;
    }
    .header-section{

    }

    .header-section .menu-right a{

    }
    .header-section .menu-right ul{
        float: right;
        margin-left: 20px;
        vertical-align: top;
    }
    .header-section .menu-right ul li i{
        font-size: 24px;
        padding: 12px 0px 12px 10px;
    }
    .header-section ul li .btn{
        border: #fff;
        padding:5px 0 5px 0;
    }
    .header-section ul li .btn:hover{
        background: #FFF;
    }

    .header-section ul li .btn:hover{
        background: #FFF;
    }
    .header-section ul li .btn[aria-expanded="true"]{
        background: #fff;
    }

    .header-section .btn:hover i{
        color:#65cea7;
    }
    .header-section .btn:hover span{
        color:#65cea7;
    }
    .header-section .btn .badge{
        top: -13px;
        left: -8px;
        background: #ff6c60;
        color: #fff;
    }
    .header-section .dropdown-menu {
        left: -80px;
    }
</style>
<div class="content-fluid header">
    <div class="header-section">
        <h2 class="pull-left">远航教育</h2>
        <div class="menu-right text-right">
            <form class="form-inline" style="display: inline-block;">
                <div class="form-group">
                    <label for="search-input"></label>
                    <input type="text" class="form-control" id="search-input" placeholder="输入搜索内容...">
                </div>
                <button style="background: #09a269;" type="submit" class="btn btn-info"><i class="icon-search"></i>搜索</button>
            </form>
            <ul class="notification-menu list-inline">
                <li>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-reorder"></i><span class="badge">14</span></button>
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
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-envelope"></i> <span class="badge">14</span></button>
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
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-bell"></i> <span class="badge">14</span></button>
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
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="${resPath}/images/headPic/default.jpg" style="width: 30px;height: 30px;border-radius: 50%;"><span style="margin: 10px;"><strong>Jhon</strong></button>
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
</div>