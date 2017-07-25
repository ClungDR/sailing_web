<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
    <!-- 视频播放-->
    <link rel="stylesheet" type="text/css" href="${resPath}/css/video-js.css">
    <script type="text/javascript" src="${resPath}/js/video.min.js"></script>
    <script type="text/javascript" src="${resPath}/js/flv.js"></script>
    <script></script>


</head>
<body>
<%@include file="/WEB-INF/pages/common/header.jsp"%>


<style type="text/css">
    .search{
        margin-top: 50px;
    }
    .search label{
        display: none;
    }
    .search .form-inline input.form-control{
        width: 300px;
        height: 44px;
        line-height: 44px;
        border: 2px solid #ccd0d7;
        border-radius: 4px;
    }
    .search .btn{
        height: 44px;
        line-height: 44px;
        font-size: 20px;
        vertical-align: bottom;
        padding: 0 10px 0 10px;
        background-color: #18bd80;
        color: #fff;
        transition: all 0.8s;
    }
    .search .btn:hover{
        background-color: #09a269;
    }


</style>

<div class="container text-center search">
    <div class="logo-input">
        <form class="form-inline" action="/search/" method="post">
            <div class="form-group">
                <label for="main-search-input">搜索</label>
                <input type="text" name="keyword" class="form-control" value="${keyword}" id="main-search-input" placeholder="Java">
            </div>
            <button type="submit" class="btn btn-default"><i class="icon-search"></i>搜索</button>
        </form>

    </div>

</div>

<style type="text/css">
    .nav-tabs{
        margin-top: 50px;
    }
    .nav-tabs li a{
        font-size: 20px;
        letter-spacing: 0.15em;
        padding: 10px 20px 10px 20px;
    }
    .nav-tabs li.active a{
        border:none;
        border-bottom: 2px solid #09a269;
    }
    .nav-tabs li.active a[aria-expanded='true']{
        border:none;
        border-bottom: 2px solid #09a269;
    }
    .nav-tabs li.active a:hover{
        border:none;
        border-bottom: 2px solid #09a269;
    }
</style>


<div class="container">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">综合</a></li>
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">视频</a></li>
        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">音频</a></li>
        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">文件</a></li>
    </ul>

    <style type="text/css">
        .search-result a:hover{
            color: #02613d;
        }

        .search-result .sum-list{
            list-style: none;
        }
        .search-result .sum-list li{
            padding: 10px;
        }
        .search-result .sum-list li a{
            width: 100%;
        }
        .search-result .sum-list li a img{
            width: 100%;
        }
        .search-result .sum-list li a .info{
            padding: 8px 10px 0 10px;
            font-size: 16px;
            height: 50px;
            overflow:hidden;
        }
    </style>
    <!-- Tab panes -->
    <div class="search-result tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <ul class="sum-list list-inline">
                <c:forEach items="${videos}" var="video">
                    <li class="col-md-2 col-sm-3">
                        <a href="#">
                            <img class="img-responsive" src="${resPath}/data/video/poster/${video.cover}">
                            <div class="info">${video.name}</div>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
            <ul class="sum-list list-inline">
                <c:forEach items="${videos}" var="video">
                    <li class="col-md-2 col-sm-3">
                        <a href="#">
                            <img class="img-responsive" src="${resPath}/data/video/poster/${video.cover}">
                            <div class="info">${video.name}</div>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <style type="text/css">
            .audio-list{
                color: #09a269;
                font-size: 18px;
            }
            .audio-list{
                height: 332px;
                overflow-x: hidden;
                overflow-y: auto;
                margin-right: -13px;
                border-color: #09a269;
            }

            .audio-list table tr.active{
                color:#fff;
            }
            .audio-list table tr.active>td{
                background-color: #09a269;
            }
            .audio-list table tr.active>th{
                background-color: #09a269;
            }
            .audio-list table tr:hover{
                color:#fff;
            }
            .audio-list table tr:hover>td{
                background-color: #09a269;
            }
            .audio-list table tr:hover>th{
                background-color: #09a269;
            }
        </style>


        <div role="tabpanel" class="tab-pane" id="messages">
            <div class="audio-list" data-example-id="simple-table">
                <table class="table">
                    <thead>
                    <tr>
                        <th>音频名</th>
                        <th>种类</th>
                        <th>时长</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${audios}" var="audio" varStatus="num">

                        <tr>
                        <th scope="row">${num.count}</th>
                        <td>${audio.name}</td>
                        <td>${audio.length}</td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>

        <style type="text/css">
            .file-list{
                list-style: none;
            }
            .file-list li{
                border-bottom: 1px solid #e1e1e1;
            }
            .file-list h3 i{
                padding:0 10px 10px;
            }
        </style>

        <div role="tabpanel" class="tab-pane" id="settings">
            <ul class="file-list col-md-6 col-sm-10">
                <c:forEach items="${ppts}" var="ppt" varStatus="num">
                    <li>
                        <a href="#">
                            <h3><i class="icon-file-alt"></i>${ppt.name}<small class="pull-right">上传时间:<fmt:formatDate value="${ppt.uploadTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></small>></h3>
                            <p>这个是个Java的简要教程</p>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>
    </div>

</div>


</body>
</html>