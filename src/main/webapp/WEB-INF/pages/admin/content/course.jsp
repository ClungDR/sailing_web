<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- page -->
<script type="text/javascript">
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });
</script>

<style type="text/css">
    .page-heading{
        padding: 65px 15px 0px 15px;
    }

    .breadcrumb{
        padding-left: 2px;
    }
    .breadcrumb li a{
        color: #999999;
    }
    .breadcrumb li.active{
        color: #65CEA7;
    }

</style>
<div class="page-heading">
    <h2>
        课程管理
    </h2>
    <ul class="breadcrumb">
        <li>
            <a href="#">课程管理</a>
        </li>

        <li>
            <a href="#">课程权限管理</a>
        </li>
        <li class="active">课程权限分配</li>
    </ul>
</div>

<style type="text/css">
    .wrapper {
        padding: 15px;
    }
    .wrapper .row{
        border-left: 10px;

    }
    .wrapper .user-operate .panel-body{
        padding-top: 0;
    }
    .wrapper .clearfix{
        padding-bottom: 10px;
    }

    .pagination{
        margin:0;
    }
    .pagination li a{
        color: #797979;
        padding: 5px 10px;
        display: inline-block;
    }
    .pagination .active a{
        background: #65cea7;
        border-color: #65cea7;
    }
    table a{
        text-decoration: none;
        color: #089e67;
    }
    table a:hover{
        color: #025638;
    }
    table th{
        text-align: center;
    }
    table td{
        text-align: center;
    }
    .table-bordered>tbody>tr>td{
        vertical-align: middle;
    }
    /*table .tag-list{
        text-align: left;
    }
    */
    .sub-list{
        margin: 0;
        padding:0;
    }
    .sub-list li{
        background: #e1e1e1;
        padding: 0 10px 0 10px;
        border-radius: 10px;
        margin-top: 5px;
        margin-left: 5px;
    }
    .sub-list li i{
        padding:0 5px 0 5px;
        font-size: 16px;
        cursor: pointer;
        color: #d41818;
    }
    .sub-list li i:hover{
        color: #ab0000;
    }
    .sub-list .add-new-tag{
        color: #919191;
        font-size: 16px;
    }

    table tbody td a.locked{
        color:#d41818;
    }

</style>
<div class="wrapper">
    <div class="row user-operate">
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    <h3>课程管理</h3>
                </header>
                <div class="panel-body" style="display: block;">
                    <div class="adv-table editable-table ">
                        <!-- <div class="clearfix">
                            <div class="btn-group">
                                <button id="add-new-user" class="btn btn-primary">
                                    添加用户<i class="icon-plus"></i>
                                </button>
                                <button id="delete-user" class="btn btn-primary">
                                   Excel导入<i class=" icon-reply"></i>
                                </button>

                            </div>
                            <div class="btn-group pull-right">
                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">工具<span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">打印</a></li>
                                    <li><a href="#">导出到Excel</a></li>
                                </ul>
                            </div>
                        </div> -->
                        <div class="organization-list form-inline" role="grid">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="dataTables_length">
                                        <label>
                                            <select size="1" name="editable-sample_length" aria-controls="editable-sample" class="form-control xsmall">
                                                <option value="5" selected="selected">5</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                                <option value="-1">All</option>
                                            </select> 条/页</label>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="dataTables_filter text-right">
                                        <label>搜索: <input type="text" aria-controls="editable-sample" class="form-control medium">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered dataTable">
                            <thead>
                            <tr>
                                <th style="min-width: 90px;">部门编号</th>
                                <th style="min-width: 90px;">部门名称</th>
                                <th>可访问的课程</th>
                            </tr>
                            </thead>


                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                            <tr>
                                <td class="">1</td>
                                <td class="">安卓</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <li><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
                                    </ul>
                                </td>
                            </tr> <tr>
                                <td class="">1</td>
                                <td class="">安卓</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <li><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
                                    </ul>
                                </td>
                            </tr><tr>
                                <td class="">1</td>
                                <td class="">安卓</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <li><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
                                    </ul>
                                </td>
                            </tr><tr>
                                <td class="">1</td>
                                <td class="">安卓</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <li><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
                                    </ul>
                                </td>
                            </tr><tr>
                                <td class="">1</td>
                                <td class="">安卓</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <li><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
                                    </ul>
                                </td>
                            </tr>
                            </tbody>
                            </table>
                            <!-- 模态框 -->

<style type="text/css">
    .add-upload-course{
        padding: 10px 30px 20px 30px;
    }
    .add-upload-course i{
        display: none;
    }

    .add-upload-course a{
        color: #089e67;
        text-decoration: none;
    }
    .add-upload-course .list-inline{
        margin: 0;
        padding:0;
    }
    .add-upload-course .all-course{
        border-bottom: 1px solid #e1e1e1;
        padding: 0 0 15px 0;
    }
    .add-upload-course h4{
        text-align: left;
        padding: 5px 0 5px 0;
        margin: 0;
    }
    .add-upload-course .list-inline li{
        background: #e1e1e1;
        padding: 0 10px 0 10px;
        border-radius: 10px;
        margin-top: 5px;
        margin-left: 5px;
    }

</style>
<script type="text/javascript">
$(function(){
    $.ajax({
        type:"post",
        url:basePath+"/admin/getAllCourses",
        success:function (data) {
            console.log(JSON.stringify(data));
        },
        error:function () {
            alert("获取课程体系信息失败！");
        }
    });

    $.ajax({
        type:"post",
        url:basePath+"/admin/getAllOrganization",
        success:function (data) {
            console.log(data);
            parseOrganization(data);
        },
        error:function () {
            alert("获取部门列表失败");
        }
    });
    function parseOrganization(data) {
        data.forEach(function (organization) {
            var organTbody=$(".organization-list").find("tbody");
            addOrganization(organization,organTbody);
        });
    }
    function addOrganization(data,parentDom) {
        var trDOm=$("<tr></tr>");
        var message="<td>"+data.id+"</td>"+
            "<td>"+data.name+"</td><td>"+
            "<ul class='list-inline sub-list'>"+
            "<li><a href='#'>安卓</a><i class='icon-trash' data-toggle='tooltip' title='' data-original-title='删除标签'></i>"+
            "</li>"+
            "<li><a href='#'>web开发部</a><i class='icon-trash' data-toggle='tooltip' title='' data-original-title='删除标签'></i>"+
            "</li>"+
            "<li><a href='#'>安卓研发部</a><i class='icon-trash' data-toggle='tooltip' title='' data-original-title='删除标签'></i>"+
            "</li>"+
            "<a href='#' class='add-new-tag' data-toggle='modal'  data-target='#course-modal'><i  data-toggle='tooltip' data-original-title='添加部门' class=' icon-plus-sign'></i></a>"+
            "</ul>"+
            "</td>";
    }

    var allCourse;
    var uploadList = new Array();
    var uploadListDom=$(".wrapper").find(".upload-course-list");


    function refreshUploadCourse(){
        uploadListDom.find("li").each(function(index,liDom){
            uploadList[index]=$(liDom).data("upload-course");
        });
    }
    $(".upload-course-list").on("click","i.icon-trash",function(){
        $(".add-upload-course .all-course-list").append($(this).parent());
    });

    /*选择需要上传到的课程标签*/
    $(".add-upload-course .all-course-list").on("click","li",function(){
        $(".add-upload-course .add-course-list").append($(this));
    });
    /*取消选择*/
    $(".add-upload-course .add-course-list").on("click","li",function(){
        $(".add-upload-course .all-course-list").append($(this));
    });
    /*点击确认添加选择的标签*/
    $("#course-modal .btn-sava").click(function(){
        uploadListDom.find("a.add-new-tag").before($(".add-upload-course .add-course-list").children());
        $("#course-modal").modal("hide");
        refreshUploadCourse();
    });
    refreshUploadCourse();


});
</script>
                            <div class="modal fade" id="course-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">添加上传到的课程列表</h4>
                                        </div>

                                        <div class="modal-body add-upload-course">
                                            <div class="all-course">
                                                <h4>所有课程体系<small>(点击标签添加到列表)</small></h4>
                                                <ul class="list-inline all-course-list">
                                                    <li data-upload-course="1"><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                                    </li>
                                                    <li data-upload-course="3"><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                                    </li>
                                                    <!-- <a href="javascript:void(0)" class="add-new-tag" data-toggle="modal"  data-target="#myModal" ><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a> -->
                                                </ul>
                                            </div>
                                            <div class="add-course">
                                                <h4>已添加的课程体系:</h4>
                                                <ul class="list-inline add-course-list">
                                                    <li data-upload-course="1"><a href="#">安卓</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                                    </li>
                                                    <li data-upload-course="3"><a href="#">web开发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                                    </li>
                                                    <li data-upload-course="5"><a href="#">安卓研发部</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-sava">确认</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 翻页插件 -->
                            <%--<div class="row">--%>
                                <%--<div class="col-lg-6">--%>
                                    <%--<div class="dataTables_info">--%>
                                        <%--显示了1-5条记录，总共29条记录。--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="col-lg-6 text-right">--%>
                                    <%--<div class="dataTables_paginate paging_bootstrap pagination"  aria-label="Page navigation">--%>
                                        <%--<ul class="pagination">--%>
                                            <%--<li class="prev disabled"><a href="#">← Prev</a></li>--%>
                                            <%--<li class="active"><a href="#">1</a></li>--%>
                                            <%--<li><a href="#">2</a></li>--%>
                                            <%--<li><a href="#">3</a></li>--%>
                                            <%--<li><a href="#">4</a></li>--%>
                                            <%--<li><a href="#">5</a></li>--%>
                                            <%--<li class="next"><a href="#">Next → </a></li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%----%>

                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <div class="row role-operate">
        <div class="col-sm-12">
            <section class="panel">
                <header class="panel-heading">
                    <h3>课程体系管理</h3>
                </header>
                <div class="panel-body" style="display: block;">
                    <div class="adv-table editable-table ">

                        <div id="editable-sample_wrapper" class="dataTables_wrapper form-inline" role="grid">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div id="editable-sample_length" class="dataTables_length">
                                        <label>
                                            <select size="1" name="editable-sample_length" aria-controls="editable-sample" class="form-control xsmall">
                                                <option value="5" selected="selected">5</option>
                                                <option value="15">15</option>
                                                <option value="20">20</option>
                                                <option value="-1">All</option>
                                            </select> 条/页</label>
                                        <button id="add-new-user" class="btn btn-primary">
                                            添加课程体系<i class="icon-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="dataTables_filter text-right" id="editable-sample_filter">
                                        <label>搜索: <input type="text" aria-controls="editable-sample" class="form-control medium">
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered dataTable" id="editable-sample" aria-describedby="editable-sample_info">
                            <thead>
                            <tr>
                                <th style="min-width: 90px;">编号</th>
                                <th style="min-width: 80px;">课程名</th>
                                <th class="col-md-7 col-sm-8">文件集</th>
                                <th class="hidden-sm hidden-xs">创建时间</th>
                                <th class="hidden-sm hidden-xs">创建人</th>
                            </tr>
                            </thead>


                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                            <tr>
                                <td class="">1</td>
                                <td class="">Java课程</td>
                                <td class="tag-list">
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">视频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>

                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul>
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">音频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul><ul class="list-inline sub-list">
                                    <h5 style="display: inline-block;">ppt文件</h5>
                                    <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                </ul>
                                </td>
                                <td class=" "><a class="edit" href="javascript:;">2017-7-12</a></td>
                                <td class=" "><a class="edit" href="javascript:;">Jhon</a></td>
                            </tr>
                            <tr>
                                <td class="">1</td>
                                <td class="">Java课程</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">视频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul>
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">音频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul><ul class="list-inline sub-list">
                                    <h5 style="display: inline-block;">ppt文件</h5>
                                    <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                </ul>
                                </td>
                                <td class=" "><a class="edit" href="javascript:;">2017-7-12</a></td>
                                <td class=" "><a class="edit" href="javascript:;">Jhon</a></td>
                            </tr>
                            <tr>
                                <td class="">1</td>
                                <td class="">Java课程</td>
                                <td class="">
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">视频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul>
                                    <ul class="list-inline sub-list">
                                        <h5 style="display: inline-block;">音频文件</h5>
                                        <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                        </li>
                                        <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                    </ul><ul class="list-inline sub-list">
                                    <h5 style="display: inline-block;">ppt文件</h5>
                                    <li><a href="#">Java多线程</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">Java NIO</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <li><a href="#">图像识别</a><i class="icon-trash" data-toggle="tooltip" title="" data-original-title="删除标签"></i>
                                    </li>
                                    <a href="#" class="add-new-tag"><i  data-toggle="tooltip" data-original-title="添加课程" class=" icon-plus-sign"></i></a>
                                </ul>
                                </td>
                                <td class=" "><a class="edit" href="javascript:;">2017-7-12</a></td>
                                <td class=" "><a class="edit" href="javascript:;">Jhon</a></td>
                            </tr>
                            </tbody>
                            </table>
                            <!-- 翻页插件 -->
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="dataTables_info" id="editable-sample_info">
                                        显示了1-5条记录，总共29条记录。
                                    </div>
                                </div>
                                <div class="col-lg-6 text-right">
                                    <div class="dataTables_paginate paging_bootstrap pagination"  aria-label="Page navigation">
                                        <ul class="pagination">
                                            <li class="prev disabled"><a href="#">← Prev</a></li>
                                            <li class="active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li class="next"><a href="#">Next → </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
