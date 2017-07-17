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
    table{
        word-break:break-all;
        word-wrap: break-word;
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
        <h3><i class="icon-book"></i>笔记</h3>
        <div class="bs-example" data-example-id="striped-table">
            <table class="table table-striped table-responsive">
                <thead>
                <tr>
                    <th>#</th>
                    <th class="col-sm-2">资源名</th>
                    <th class="text-center">笔记内容</th>
                    <th class="col-xs-2 col-md-2">日期</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>继承与多态</td>
                    <td>只有当所有的类都继承同一个接口或者类的时候才能实现多态。</td>
                    <td>2017-7-1 12:13</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>css定位position</td>
                    <td>absolute相对于第一个父元素进行定位。fixed相对于浏览器窗口进行定位。relative相对于其正常位置进行定位。</td>
                    <td>2017-7-1 12:16</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>html元素讲解</td>
                    <td>p标签使用word-break:break-word;可以强制让浏览器换行。</td>
                    <td>2017-7-3 12:19</td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

</div>