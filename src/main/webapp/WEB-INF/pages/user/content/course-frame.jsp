<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style type="text/css">
    .user-content{
        padding-top:50px;
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
    .study-sum a{
        color: #19b37b;
    }
    .study-sum h3 i{
        color: #19b37b;
        padding: 10px;
    }



</style>

<div class="user-content col-md-10">
    <div class="home-info">
        <div class="home-head pull-left">
            <img src="${resPath}/images/headPic/default.jpg" style="width: 70px;height: 70px;border-radius: 50%;">
        </div>
        <div class="head-info" style="display: inline-block;">
            <h4>检测你当前学习的课程为<strong>Java课程</strong>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="#">继续上次课程学习...</a></h4>
            <p><span>上一次学习时间：<strong>2017-7-12 12:23:34</strong></span></p>
        </div>
    </div>
    <div class="study-sum">
        <h3><i class="icon-book"></i>课程信息</h3>
        <div class="course-images">
            <h4 style="padding-left: 30px;"><i class=" icon-align-center" style="padding-right: 10px;color:#19b37b;"></i>课程框架</h4>
            <img class="img-responsive" src="${resPath}/images/svg.jpg">
        </div>

    </div>

</div>