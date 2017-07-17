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
        border-bottom: 2px solid #e1e1e1;
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
    .main{
        padding: 0;
    }
    .nav-box{
        padding: 0;
    }
    nav{
        width: 200px;
        font-size: 18px;
    }
    nav a{
        text-align: center;
    }

    /*主体的样式*/
    .content{
        padding-left:200px;
    }
    .main-content{
        width: 100%;
        border-left: 2px solid #e1e1e1;
        padding:10px;
    }

    .part-content h2{
        border-bottom: 1px solid #e1e1e1;
        padding: 20px 0 9px 0;
        margin: 10px 0 10px 5px;
    }

    .part-content div{
        padding: 0;
    }
    .homepage{
        height: 770px;
        overflow:hidden;
    }
    .progress-box{
        text-align: center;
    }
    .progress-box .panel{
        margin:0;
    }
    .progress-box .panel .panel-heading{
        color:#337ab7;
    }
    .progress-box .panel h4{
        margin:0 0 10px 0;
    }
    .progress-box .summary{
        padding: 10px;
    }
    .progress-box .summary p{
        margin-top: 5px;
        margin-bottom: 5px;
        font-size: 16px;
    }

    /*svg图像的样式*/
    .node circle {
        fill: #999;
    }

    .node text {
        font: 16px sans-serif;
    }

    .node--internal circle {
        fill: #555;
    }

    .node--internal text {
        text-shadow: 0 1px 0 #fff, 0 -1px 0 #fff, 1px 0 0 #fff, -1px 0 0 #fff;
    }

    .link {
        fill: none;
        stroke: #555;
        stroke-opacity: 0.4;
        stroke-width: 1.5px;
    }

</style>

<div class="container-fluid main">
    <div class="nav-box">
        <nav class="hidden-print hidden-xs hidden-sm affix">
            <ul class="nav">
                <li>
                    <a href="#homepage" class="panel-heading">主页</a>
                </li>
                <li>
                    <a href="#course" class="panel-heading">课程管理</a>
                </li><li>
                <a href="#note" class="panel-heading">个人笔记</a>
            </li><li>
                <a href="#collection" class="panel-heading">我的收藏</a>
            </li>
            </ul>
        </nav>
    </div>

    <!-- 主体 -->
    <div class="content">
        <div class="main-content">
            <div class="homepage part-content" id="homepage">
                <h2>主页</h2>
                <div class="course-info">
                    <div class="col-md-9 structure">
                        <h4>知识体系</h4>
                        <svg class="chart" width="940" height="630">
                        <%--<img class="img-responsive center-block" src="resources/images/svg.jpg">--%>
                    </div>
                    <div class="progress-box col-md-3">
                        <div class="panel panel-default">
                            <h4 class="panel-heading">课程进度</h4>
                            <div class="panel-body summary text-left">
                                <p>已观看了<strong>12</strong>个视频</p>
                                <p>已收听<strong>12</strong>个音频</p>
                                <p>已阅读文件数量<strong>3</strong>个</p>
                                <br>
                                <p>还需观看了<strong>12</strong>个视频</p>
                                <p>还需阅读文件数量<strong>10</strong>个</p>
                                <p>还需阅读文件数量<strong>10</strong>个</p>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <h4 class="panel-heading">学习进度</h4>
                            <div class="panel-body summary text-left">
                                <h4>最近一周：</h4>
                                <p>观看视频时长：<strong>3h25m</strong></p>
                                <p>收听音频时长：<strong>1h25m</strong></p>
                                <p>阅读文件数量：<strong>3个</strong></p>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <h4 class="panel-heading">推荐视频</h4>
                            <div class="panel-body summary text-left">
                                <h4>继续上次观看：</h4>
                                <a href="#">
                                    <p><em>
                                        <i class="icon  icon-film"></i>
                                        面向对象编程</em></p>
                                </a>
                                <h4>观看下一节视频：</h4>
                                <a href="#">
                                    <p>
                                        <i class="icon  icon-film"></i>
                                        继承与多态</p>
                                </a>
                                <h4>推荐视频：</h4>
                                <a href="#">
                                    <p>
                                        <i class="icon  icon-film"></i>
                                        继承与多态</p>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="part-content" id="course">
                <h2>课程管理</h2>
<style type="text/css">
    #note .tool-box{
        padding: 5px;
        border-bottom: 1px solid #e1e1e1;
    }
    #note .btn i{
        padding-right: 5px;
    }
    #note .tool-box label{
        font-size: 16px;
        font-weight: 400;
    }
    #note .tool-box .note-date{
        display: inline-block;
    }


    #note .tool-box .btn-new-note{
        display: inline-block;
    }
    #note .tool-box .form-new-note{
        width: 50%;
        display: none;
    }
    #note .form-new-note button{
        margin-top: 5px;
    }
    #note .note-list{
        list-style: none;
        padding: 0;
    }
</style>
            </div>
            <div class="part-content" id="note">
                <h2>我的笔记</h2>
                <div class="tool-box">
                    <form class="form-inline note-date">
                        <div class="form-group">
                            <label for="date-begin">开始日期:</label>
                            <input type="date" class="form-control" id="date-begin" placeholder="起始日期">
                        </div>
                        <div class="form-group">
                            <label for="data-end">结束日期:</label>
                            <input type="date" class="form-control" id="data-end" placeholder="结束日期">
                        </div>
                        <button class="btn btn-success" id="btn-note-date"><i class="icon-ok"></i>提交日期</button>
                    </form>
                    <button class="btn btn-primary btn-new-note"><i class="icon-pencil"></i>新建笔记</button>
                    <form class="form-new-note">
                        <label for="new-note">新建笔记:</label>
                        <textarea class="form-control" id="new-note" rows="3" maxlength="200" placeholder="发表你的讨论内容..."></textarea>
                        <div class="text-right">
                            <button class="btn btn-primary" id="btn-note-new"><i class="icon-ok"></i>提交笔记</button>
                        </div>
                    </form>
                </div>
                <ul class="note-list">
                    <h3 class="text-warning">暂时还没有笔记</h3>
                    <li>

                    </li>
                </ul>
            </div>
<script type="text/javascript">
    $(".btn-new-note").click(function(){
        var target=$("form.form-new-note").slideToggle();
    });
</script>
            <div class="part-content" id="collection">
                <h2>我的收藏</h2>
                <div>

                </div>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">

    var svg = d3.select("svg"),
        width = +svg.attr("width"),
        height = +svg.attr("height"),
        g = svg.append("g").attr("transform", "translate(" + (width / 2 + 10) + "," + (height / 2 + 10) + ")");

    var stratify = d3.stratify()
        .parentId(function(d) { return d.id.substring(0, d.id.lastIndexOf(".")); });

    var tree = d3.tree()
        .size([2 * Math.PI, 200])
        .separation(function(a, b) { return (a.parent == b.parent ? 1 : 2) / a.depth; });

    d3.csv(resPath+"/data/csv/java.csv?"+new Date(), function(error, data) {
        if (error) throw error;

        var root = tree(stratify(data));
//        console.log(stratify(data));

        var link = g.selectAll(".link")
            .data(root.links())
            .enter().append("path")
            .attr("class", "link")
            .attr("d", d3.linkRadial()
                .angle(function(d) { return d.x; })
                .radius(function(d) { return d.y; }));

        var node = g.selectAll(".node")
            .data(root.descendants())
            .enter().append("g")
            .attr("class", function(d) { return "node" + (d.children ? " node--internal" : " node--leaf"); })
            .attr("transform", function(d) { return "translate(" + radialPoint(d.x, d.y) + ")"; });

        node.append("circle")
            .attr("r", 2.5);

        node.append("text")
            .attr("dy", "0.31em")
            .attr("x", function(d) { return d.x < Math.PI === !d.children ? 6 : -6; })
            .attr("text-anchor", function(d) { return d.x < Math.PI === !d.children ? "start" : "end"; })
            .attr("transform", function(d) { return "rotate(" + (d.x < Math.PI ? d.x - Math.PI / 2 : d.x + Math.PI / 2) * 180 / Math.PI + ")"; })
            .text(function(d) { return d.id.substring(d.id.lastIndexOf(".") + 1); });
    });

    function radialPoint(x, y) {
        return [(y = +y) * Math.cos(x -= Math.PI / 2), y * Math.sin(x)];
    }
</script>
</body>
</html>