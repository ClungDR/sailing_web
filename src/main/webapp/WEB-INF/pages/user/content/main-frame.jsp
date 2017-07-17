<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .user-content{
        padding-top:50px;
    }
    .user-content a{
        color: #19b37b;
    }
    .user-content .home-info{
        vertical-align: top;
        overflow:hidden;

        margin-bottom: 30px;
    }
    .user-content .home-info .head-info{
        margin-left: 20px;
    }
    .study-sum{
        border-top: 1px solid #e5e9ef;
    }
    .study-sum h3 i{
        color: #19b37b;
        padding: 10px;
    }
    .study-sum .row{
        height: 350px;
    }
    .study-sum .row .col-md-4{
        height: 100%;
    }
    .study-sum .row .panel-body{
        min-height: 281px;
    }
    .study-sum .row h3{
        margin:0;
    }
    .study-sum p{
        font-size: 16px;
    }


</style>

<div class="user-content col-md-10">
    <div class="home-info">
        <div class="home-head pull-left">
            <img src="${resPath}/images/headPic/default.jpg" style="width: 70px;height: 70px;border-radius: 50%;">
        </div>
        <div class="head-info" style="display: inline-block;">
            <h4>用户名：<strong>Jhon</strong></h4>
            <p><span>用户编号：<em>2017010001</em></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>上次登录时间：2017-7-12 12:23:34</span></p>
        </div>
    </div>
    <div class="study-sum">
        <h3><i class="icon-book"></i>学习状态</h3>
        <div class="row">
            <div class="col-md-4">
                <div class=" panel panel-default">
                    <h3 class="text-center panel-heading">学习进度</h3>
                    <div class="panel-body">
                        <h4>最近一周：</h4>
                        <p>已观看了<strong>12</strong>个视频</p>
                        <p>已收听<strong>12</strong>个音频</p>
                        <p>已阅读文件数量<strong>3</strong>个</p>
                        <br>
                        <p>还需观看了<strong>12</strong>个视频</p>
                        <p>还需阅读文件数量<strong>10</strong>个</p>
                        <p>还需阅读文件数量<strong>10</strong>个</p>
                    </div>
                </div>
            </div><div class="col-md-4">
            <div class=" panel panel-default">
                <h3 class="text-center panel-heading">学习时间</h3>
                <div class="panel-body">
                    <h4>最近一周：</h4>
                    <p>观看视频时长：<strong>3h25m</strong></p>
                    <p>收听音频时长：<strong>1h25m</strong></p>
                    <p>阅读文件数量：<strong>3个</strong></p>
                </div>
            </div>
        </div><div class="col-md-4">
            <div class=" panel panel-default">
                <h3 class="text-center panel-heading">课程进度</h3>
                <div class="panel-body">
                    <h4>已学习的<strong>Java课程</strong>的<strong>50%</strong></h4>

                    <h4>继续上次观看：</h4>
                    <a href="#">
                        <p>
                            <i class="icon  icon-film"></i>
                            面向对象编程</p>
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
</div>