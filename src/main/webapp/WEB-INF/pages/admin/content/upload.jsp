<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript">
    Date.prototype.Format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份
            "d+": this.getDate(), //日
            "h+": this.getHours(), //小时
            "m+": this.getMinutes(), //分
            "s+": this.getSeconds(), //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds() //毫秒
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }
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
        文件管理
    </h2>
    <ul class="breadcrumb">
        <li>
            <a href="#">文件管理</a>
        </li>
        <li class="active">文件上传</li>
    </ul>
</div>

<style type="text/css">
    .wrapper {
        padding: 15px;
    }
    .file-center{
        background: #fff;
        padding:15px;
    }
    .wrapper .file-upload{
        background: #20ce8e;
        color: #fff;
        width: 200px;
        height: 100px;
        margin: 0 auto;
        border-radius: 100px;
        transition: all 1s;
    }
    .wrapper .file-upload:hover{
        background: #019860;
    }
    .wrapper .file-upload h2{
        line-height: 100px;
        text-align: center;
        margin: 0;
        padding:0;
    }

    .upload-to{
        text-align: left;
    }
    .upload-to h4{
        display: inline-block;
    }
    .upload-to .upload-course-list{
        display: inline-block;
    }
    .upload-to a{
        color: #089e67;
    }
    .upload-to .upload-course-list{
        margin: 0;
        padding:0;
    }
    .upload-to .upload-course-list li{
        background: #e1e1e1;
        padding: 0 10px 0 10px;
        border-radius: 10px;
        margin-top: 5px;
        margin-left: 5px;
    }
    .upload-to .upload-course-list li i{
        padding:0 5px 0 5px;
        font-size: 16px;
        cursor: pointer;
        color: #d41818;
    }
    .upload-to .upload-course-list li i:hover{
        color: #ab0000;
    }
</style>

<script type="text/javascript">
    /*选择上传的课程体系的标签*/
    var allCourse;
    var uploadList = new Array();
    $(function(){
        var uploadListDom=$(".wrapper").find(".upload-course-list");
        var allListDom=$(".add-upload-course .all-course-list");
        var addListDom=$(".add-upload-course .add-course-list");

        /*异步获取所有的课程列表*/
        function getAllCourses() {
            $.ajax({
                type:"post",
                url:basePath+"/admin/getAllCourses",
                success:function (data) {
                    return data;
                },
                error:function () {
                    alert("获取课程体系信息失败！");
                }
            });
        }
        function getCourseOrgan() {
            $.ajax({
                type:"post",
                url:basePath+"/admin/getCourseOrgan",
                success:function (data) {
                    return data;
                },
                error:function () {
                    alert("获取课程体系信息失败！");
                }
            });
        }
        function getAllOrganization() {

        }
        function ajaxRequest(relativeUrl,data) {
            $.ajax({
                type:"post",
                url:basePath+relativeUrl,
                data:data,
                success:function (data) {
                    return data;
                },
                error:function () {
                    alert("获取课程体系信息失败！");
                }
            });
        }


        function parseCourses(courses) {
            if(courses==null||courses.size==0)return;
            courses.forEach(function (course) {
                var liDom=$("<li data-upload-course="+course.id+"></li>");
                var message="<a>"+course.description+"</a><i class='icon-trash' data-toggle='tooltip' data-original-title='删除标签'></i>"
                liDom.html(message);
                allListDom.append(liDom);
            });
            refreshToolTip();
        }
        /*重新获取所有的课程列表*/
        function refreshUploadCourse(){
            uploadListDom.find("li").each(function(index,liDom){
                uploadList[index]=$(liDom).data("upload-course");
            });
            console.log(uploadList);
        }
        uploadListDom.on("click","i.icon-trash",function(){
            allListDom.append($(this).parent());
        });
        /*选择需要上传到的课程标签*/
        allListDom.on("click","li",function(){
            addListDom.append($(this));
        });
        /*取消选择*/
        addListDom.on("click","li",function(){
            allListDom.append($(this));
        });
        /*点击确认添加选择的标签*/
        $("#course-modal .btn-sava").click(function(){
            uploadListDom.find("a.add-new-tag").before(addListDom.children());
            $("#course-modal").modal("hide");
            refreshUploadCourse();
        });
    });
</script>
<div class="wrapper">
    <!-- file upload begin -->
    <div class="col-md-12 file-center text-center">
        <div class="upload-to">
            <h4>上传到:</h4>
            <ul class="list-inline upload-course-list">

                <a class="add-new-tag" data-toggle="modal"  data-target="#course-modal"><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a>
            </ul>
        </div>

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

                                <!-- <a href="javascript:void(0)" class="add-new-tag" data-toggle="modal"  data-target="#myModal" ><i  data-toggle="tooltip" data-original-title="添加部门" class=" icon-plus-sign"></i></a> -->
                            </ul>
                        </div>
                        <div class="add-course">
                            <h4>已添加的课程体系:</h4>
                            <ul class="list-inline add-course-list">

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


        <div class="file-upload" id="upload-box">
            <label for="file-loader"><h2><i class=" icon-cloud-upload" style="margin-right: 10px;"></i>上传文件</h2></label>
            <input type="file" name="file-upload" accept=".mp4,.flv,.ppt,.pptx,.xls,xlsx,.mp3,.wav" id="file-loader" style="display: none;"/>
        </div>
        <h4>拖拽文件到上方也可上传</h4>


        <%--文件上传进度--%>

        <style type="text/css">
            .upload-progress{
                padding: 10px 20px 20px 20px;
                border-top: 1px solid #e1e1e1;
            }
            .upload-progress h3{
                padding:0 0 10px 0;
                margin: 0;

            }
            .upload-progress h3 i{
                font-size: 28px;
            }
            .myprogress{
                text-align: left;
            }
            .myprogress h4 i{
                padding-right: 10px;
                font-size: 20px;
            }
            .myprogress .bg-load{
                width: 100%;
                background: #cac9c9;
                height: 10px;
                border-radius: 5px;
            }
            .myprogress .load{
                height: 100%;
                width:0%;
                background: #65cea7;
                border-radius: 5px;
                text-align: right;
            }
            .myprogress .load span{
                position: relative;
                top:-17px;
            }
            .success-list{
                text-align: left;
                font-size: 16px;
            }
            .success-list i{
                font-size: 18px;
                cursor: pointer;
                color: #d41818;
            }
        </style>
        <div class="upload-progress">
            <h3><i class="icon-spinner"></i>上传进度</h3>
            <h3 style="color: #b1b1b1;margin: 10px auto;" class="no-file-upload">暂无上传任务</h3>

        </div>

        <div class="upload-success">
            <h3><i class="icon-cloud"></i>上传成功</h3>
            <table class="table table-striped table-hover success-list">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>文件名</th>
                    <th>完成时间</th>
                    <th>耗时</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

    </div>
    <!-- file upload end -->
</div>


<script type="text/javascript">
    // 阻止浏览器默认行为
    //鼠标拖离事件
    document.ondragleave = function(e){
        e.preventDefault();//阻止浏览器的默认行为
    };

    //拖放后事件
    document.ondrop = function(e){
        e.preventDefault();//阻止浏览器的默认行为
    };
    //鼠标拖动按下去的时候
    document.ondragover = function(e){
        e.preventDefault();
    };
    //鼠标拖动按下去的时候
    document.ondragenter = function(e){
        e.preventDefault();
    };

    $(function(){
        // 监听拖拽文件事件
        function fileupload(){
            var fileboxDom = document.getElementById("upload-box");
            fileboxDom.addEventListener("dragenter",function(e){
                fileboxDom.style.background="#019860";
            },false);

            fileboxDom.addEventListener("dragleave",function(e){
                fileboxDom.style.background="#20ce8e";
            },false);

            fileboxDom.addEventListener("drop",function(e){
                fileboxDom.style.background="#20ce8e";
                //file是一个文件列表
                var files = e.dataTransfer.files;
                for(i=0;i<files.length;i++){
                    console.log(files[i].name+"==="+files[i].size+"=="+files[i].type);
                }

                var file =files[0];
                //文件的名称
                var name = file.name;

                ajaxUploadMultiFile(files);

            }, false);
        };



        $("#file-loader").on("change",function(e){
            var file=this.files[0];
            ajaxUploadFile(file);
        });
        function ajaxUploadMultiFile(files) {
            for(i=0;i<files.length;i++){
                var icon=getFileType(files[i].name);
                if(icon=="error")continue;
                var progressDom=$("<div class='myprogress' data-file='"+i+"'></div>");
                var message="<h4><i class='"+icon+"'></i>"+files[i].name+"</h4>"+
                    "<div class='bg-load'>"+
                    "<div class='load' style='width: 0%;transition: all 0.8s;'>"+
                    "<span>0%</span>"+
                    "</div></div>";
                progressDom.html(message);
                $(".upload-progress").append(progressDom);
            }
            for(i=0;i<files.length;i++){
                if(getFileType(files[i].name)=="error")continue;
                ajaxUploadFile(files[i],i);
            }
        }
        function getFileType(filename){
            var extension=filename.substring(filename.lastIndexOf(".")).toLowerCase();
            if(extension==".mp3")return "icon-headphones";
            if(extension==".mp4"||extension==".flv")return "icon-film";
            if(extension==".ppt"||extension==".pptx")return "icon-file-alt";
            return "error";
        }



        //异步上传文件
        function ajaxUploadFile(file,i){
            var formDate=new FormData();
            formDate.append("doc",file);
            formDate.append("courseIds",JSON.stringify(uploadList));
            console.log(uploadList);
            console.log(file.name+"==="+file.size+"+++"+file.type);
            var beginTime=new Date();
            $.ajax({
                type:"post",
                url:basePath+"/admin/file/fileUpload",
                data:formDate,// 告诉jQuery不要去处理发送的数据
                processData : false,
                // 告诉jQuery不要去设置Content-Type请求头
                contentType : false,
                xhr: function(){ //获取ajaxSettings中的xhr对象，为它的upload属性绑定progress事件的处理函数
                    myXhr = $.ajaxSettings.xhr();
                    if(myXhr.upload){ //检查upload属性是否存在
                        //绑定progress事件的回调函数
                        $(".upload-progress").find(".no-file-upload").css("display","none");
                        myXhr.upload.addEventListener('progress',progressHandlingFunction, false);
                    }
                    return myXhr; //xhr对象返回给jQuery使用
                },
                success:function (data) {
                    $(".upload-progress").find(".myprogress[data-file='"+i+"']").remove();
                    if($(".upload-progress").find(".myprogress").length==0){
                        $(".upload-progress").find(".no-file-upload").slideDown(800);
                    }
                    addFinishMessage(data,beginTime);
                },
                error:function(){
                    alert("错误");
                }
            });
            function progressHandlingFunction(e) {
                if(e.lengthComputable){
                    var percent = parseInt((event.loaded / event.total)*100)+"%";
                    $(".upload-progress").find(".myprogress[data-file='"+i+"']").find(".load").css("width",percent).children().html(percent);
                }
            }
        };
        fileupload();

        function addFinishMessage(data,beginTime){
            var tbodyDom=$(".upload-success").find("table").find("tbody");

            var trDom=$("<tr></tr>");
            var fm="<th scope='row'>"+data.id+"</th>"+
                "<td>"+data.name+"</td>"+
                "<td>"+data.uploadTime+"</td>"+
                "<td>"+((new Date()-beginTime)/1000).toFixed(2)+"s</td>"+
                "<td><i class='icon-trash'  data-toggle='tooltip' title='删除此条记录'></i></td>";
            trDom.html(fm);
            tbodyDom.prepend(trDom);
        }

        function dateFormate(oDate) {
            return oDate.getFullYear()+"-"+
                oDate.getMonth()+"-"+
                oDate.getDate()+" "+
                oDate.getHours()+":"+
                oDate.getMinutes()+":"+
                oDate.getSeconds();

        }

    });
</script>
<script type="text/javascript">
function refreshToolTip() {
    $('[data-toggle="tooltip"]').tooltip()
}
refreshToolTip();
</script>