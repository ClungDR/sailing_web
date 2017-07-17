<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${resPath}/css/jquery.Jcrop.min.css">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
    <script type="text/javascript" src="${resPath}/js/MD5.js"></script>
    <script type="text/javascript" src="${resPath}/js/jquery.Jcrop.min.js"></script>

</head>

<style type="text/css">
    .navbar{
        margin-bottom: 0;
    }
    .navbar-brand{
        font-size: inherit;
    }
    .navbar-nav{
        padding-top: 15px;
    }
    .navbar-nav li a{
        font-size: 18px;
    }

</style>

<body>
<header class="navbar navbar-static-top bs-docs-nav" id="top">
    <div class="container">
        <h1 class="navbar-header">
            <a href="../" class="navbar-brand">视频学习</a>
        </h1>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" onclick="" target="_blank">我的消息</a></li>
            <li><a href="#" onclick="" target="_blank">我的收藏</a></li>
            <li><a href="#" onclick="" target="_blank">历史记录</a></li>
            <li><a href="#" onclick="" target="_blank">Memory</a></li>
            <li><a href="#" onclick="" target="_blank">退出</a></li>
        </ul>
        </nav>
    </div>
</header>

<style type="text/css">
    .container.user-info{
        margin-top: 40px;
    }

    .container.user-info label{
        font-size: 18px;
    }

    .headPic-box .headimg-box{
        padding: 40px;
        height: 270px;
        overflow:hidden;
        border:1px solid #e1e1e1;
        border-radius: 10px;
    }

    .headPic-box .headimg-box label{
        color:#717171;
    }
    .headPic-box .headimg-box img.original{
        border-radius: 50%;
    }

    .headPic-box .upload-trigger{
        width: 160px;
        height: 160px;
        border-radius: 50%;
        line-height: 160px;
        background: #ececec;
        margin:0;
        padding: 0;
    }
    .headPic-box .upload-trigger p{
        word-break: break-all;
        font-size: 24px;
    }

    .headPic-box .pic-info{
        margin-top: 10px;
    }
    .headPic-box .upload-headPic input{
        display: none;
    }
    /*裁剪头像样式*/
    .headPic-cut-box{
        margin-top: 15px;
    }
    .headPic-cut-box .img-cut-box{
        width: 100%;
    }
    .headPic-cut-box .submit-box{
        margin-top: 15px;
    }
    .headPic-cut-box .submit-box .btn{
        width: 150px;
        font-size: 1.15em;
        letter-spacing: 2px;
    }
</style>

<div class="container user-info">
    <div class="col-md-6 col-md-offset-2">
        <div class="headPic-box">
            <p><label>头像</label></p>
            <div class="headimg-box">
                <div class="col-md-6 text-center">
                    <img class="original" src="${resPath}/images/headPic/default.jpg">
                    <p class="pic-info"><label><strong>当前头像</strong></label></p>
                </div>
                <div class="col-md-6 text-center">
                    <div class="upload-headPic text-center">
                        <label for="headPic" class="upload-trigger"><p>点击上传图片</p></label>
                        <input type="file" id="headPic" name="headPic" accept="image/jpeg" maxlength="" />
                    </div>
                    <p class="pic-info"><label for="headPic"><strong>上传头像</strong></label></p>
                </div>
            </div>
        </div>

        <div class="headPic-cut-box">
            <p><label>裁剪头像</label></p>
            <div class="img-cut-box">
                <!-- <img class="img-responsive" id="cut-target" src="resources/images/loginbk.jpg"> -->
                <img class="img-responsive center-block" id="cut-target" src="${resPath}/images/headPic/default.jpg">
            </div>
            <div class="text-center submit-box"><button class="btn btn-success" id="cut-submit">确定裁剪</button></div>
        </div>

        <script type="text/javascript">
            jQuery(function($){
                var jcrop_api=null;
                var x1=0,x2=0,y1=0,y2=0,w=0,h=0;
                $('#cut-target').Jcrop({
                    onChange:   showCoords,
                    onSelect:   showCoords,
                    onRelease:  clearCoords,
                    aspectRatio:1
                },function(){
                    jcrop_api = this;
                });

                $('#coords').on('change','input',function(e){
                    jcrop_api.setSelect([x1,y1,x2,y2]);
                });

                function showCoords(c)
                {
                    x1=c.x;
                    y1=c.y;
                    x2=c.x2;
                    y2=c.y2;
                    w=c.w;
                    h=c.h;
                    console.log(x1+","+y1+","+x2+","+y2+","+w+","+h);
                };

                function clearCoords()
                {
                    $('#coords input').val('');
                };
                $("#cut-submit").on("click",function(){
                    if(w<10){
                        alert("图片尺寸过小！");
                        return;
                    }
                    var cutInfo={
                        x1:x1,
                        x2:x2,
                        y1:y1,
                        y2:y2,
                        w:w
                    };
                    alert(JSON.stringify(cutInfo));
                });
            });
        </script>

        <script type="text/javascript">
            $(function(){
                $("input[name='headPic']").on("change",function(e){
                    var files=e.currentTarget.files;
                    var file=files[0];
                    // alert(JSON.stringify(file));
                    alert(file.name+"==="+file.size+"==="+file.type);
                    if(file.size/1024/1024>2){
                        alert("文件大小不能大于2M");
                        return ;
                    }
                    sendHeadPic(file);
                });

                function sendHeadPic(file){
                    var fd = new FormData();
                    fd.append("doc",file);
                    $.ajax({
                        type: "POST",
                        url: basePath+"/user/headPic/upload",
                        data: fd,　　//这里上传的数据使用了formData 对象
                        processData : false,
                        //必须false才会自动加上正确的Content-Type
                        contentType : false ,
                        //这里我们先拿到jQuery产生的 XMLHttpRequest对象，为其增加 progress 事件绑定，然后再返回交给ajax使用
                        xhr: function(){
                            var xhr = $.ajaxSettings.xhr();
                            if(onprogress && xhr.upload) {
                                xhr.upload.addEventListener("progress" , onprogress, false);
                                return xhr;
                            }
                        },
                        success:function(data){
                            alert(data);
                            $("#cut-target").attr("src",data);
                        }
                    });
                }
                /**
                 * 侦查附件上传情况 ,这个方法大概0.05-0.1秒执行一次
                 */
                function onprogress(evt){
                    var loaded = evt.loaded;     //已经上传大小情况
                    var tot = evt.total;      //附件总大小
                    var per = Math.floor(100*loaded/tot);  //已经上传的百分比
                    console.log(per);
                    // 　　$("#son").html( per +"%" );
                    //  $("#son").css("width" , per +"%");
                }

            });



        </script>

        <!--
            <form class="form-horizontal">
            <div class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
              <label for="exampleInputFile">File input</label>
              <input type="file" id="exampleInputFile">
              <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox"> Check me out
              </label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form> -->
    </div>

</div>

<style type="text/css">
    #box{width:460px;height:180px;background:#888;text-align:center;border:1px solid #ccc;margin:100px auto;line-height: 180px;color:#fff}
</style>


<div id="box">
    <h1>文件拖放到此区域，进行上传....</h1>
</div>


<script type="text/javascript">

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


    function tzupload(){
        var fileboxDom = document.getElementById("box");
        fileboxDom.addEventListener("dragenter",function(e){
            fileboxDom.style.background="green";
        },false);

        fileboxDom.addEventListener("dragleave",function(e){
            fileboxDom.style.background="";
        },false);

        fileboxDom.addEventListener("drop",function(e){
            fileboxDom.style.background="";
            //file是一个文件列表
            var files = e.dataTransfer.files;
            //取第一张图片
            console.log("图片数量："+files.length);

            for(var i=0;i<files.length;i++){
                console.log(files[i].name+"=="+files[i].size+"=="+files[i].type);
            }


            var file =files[0];
            //文件的名称
            var name = file.name;
            var imgPath=files.path;
            alert(imgPath);
            //file.name:文件名称
            //file.size:文件大小
            //file.type:文件类型
            if(name.indexOf("jpg")==-1){
                alert("请选择图片....");
                return;
            }

            // 由于浏览器的安全策略，Chrome浏览器及Chrome内核的浏览器是不可能获取文件在本地的真实路径的
            // 采取先上传然后读取网络路径的方法
            //
            fileboxDom.style.display="none";
            var imgDom=$("<img/>");
            imgDom.attr("id","target");
            imgDom.attr("src",path);
            alert(imgDom.html());
            //没错通过ajax
            // var xhr = new XMLHttpRequest();
            // xhr.open("post","http://localhost/tzupload/up/file.html",true);
            // xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
            // //设置文件数据
            // var fd = new FormData();
            // fd.append("doc",file);
            // xhr.upload.addEventListener("progress",function(evt){
            //   if(evt.lengthComputable){
            //   var percent = event.loaded / event.total;
            // }
            // },true);
            // xhr.send(fd);
            // xhr.onreadystatechange = function(){
            //   if(xhr.readyState==4 && xhr.status == 200){
            //     var data = $.trim(xhr.responseText);
            //     alert(data);
            //   }
            // };
        }, false);
    };

    tzupload();
</script>

</body>
</html>