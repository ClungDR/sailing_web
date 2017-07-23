<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
</head>

<body>
<%@include file="/WEB-INF/pages/common/header.jsp"%>

<style type="text/css">
    .main-content{
        margin-top: 50px;
        padding: 0px 100px 0 100px;
        height: 500px;
    }

    .player-container{
        height: 100%;
        padding-top: 40px;
        color:#818181;
        padding-bottom: 60px;
        overflow:hidden;

    }
    .play-list{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }

    .play-list button{
        border-color: #09a269;
        color: #09a269;
    }
    .play-list button:hover{
        background-color: #09a269;
        color: #fff;
    }
    .audio-list{
        color: #09a269;
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
    .player-tool .control{
        line-height: 60px;
    }
    .player-tool .control div{
        vertical-align: middle;
    }
    .player-tool .control  .btn-center{
        position: relative;
        left: -3px;
    }
    .player-tool .control span{
        font-size: 24px;
        cursor: pointer;
        margin-right: 20px;
    }
    .player-tool .control span{
        width:45px;
        height: 45px;
        display: block;
        margin-top: 7px;
        line-height: 45px;
        text-align: center;
        border: 2px solid #111;
        border-radius: 50%;

        border-color: #09a269;
        color: #09a269;
    }
    .player-tool .control span#btn-play{
        width:60px;
        height: 60px;
        display: block;
        margin-top: 0px;
        line-height: 60px;
        text-align: center;
        border-radius: 50%;
        position: relative;
        left: -5px;
    }

    .player-tool #btn-backword i{
        position: relative;
        top: -3px;
        left: -3px;
    }
    .player-tool #btn-play i{
        position: relative;
        top: -2px;
        left: 3px;
    }
    .player-tool #btn-forward i{
        position: relative;
        top: -3px;
        left:3px;
    }
    .audio-length{
        width:100%;
        height: 2px;
        background: #ddd;
        cursor: pointer;
    }

    .audio-play{
        height: 2px;
        width: 0;
        background: #09a269;
        position: relative;
        top: -2px;
    }
    .audio-play i{
        position: relative;
        color: #09a269;
        top: -9px;
        left: 100%;
    }
</style>

<div class="container-fluid main-content">
    <div class="col-md-9 player-container">
        <div class="play-list">
            <div class="list-tools">
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-default"><i class="icon-heart-empty"></i>收藏</button>
                    <button type="button" class="btn btn-default"><i class="icon-plus"></i>添加到</button>
                    <button type="button" class="btn btn-default"><i class="icon-arrow-down"></i>下载</button>
                    <button type="button" class="btn btn-default"><i class="icon-trash"></i>删除</button>
                    <button type="button" class="btn btn-default"><i class="icon-heart-empty"></i>清空列表</button>
                </div>
            </div>
            <div class="audio-list" data-example-id="simple-table">
                <table class="table">
                    <h3>播放列表</h3>
                    <thead>
                    <tr>
                        <th>音频名</th>
                        <th>种类</th>
                        <th>时长</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>

        <div class="player-tool col-md-12">
            <audio src="#"></audio>
            <div class="control col-md-4">
                <div class="col-md-4 col-sm-4"><span id="btn-backword"><i class="icon-backward"></i></span></div>
                <div class="col-md-4 col-sm-4 btn-center"><span id="btn-play"><i class="icon-play icon-large"></i></span></div>
                <div class="col-md-4 col-sm-4"><span id="btn-forward"><i class="icon-forward"></i></span></div>

            </div><div class="progress-box col-md-8">
            <div style="margin-bottom: 5px;font-size: 18px;"><span>图像识别</span><span class="pull-right"><span id="audio-now">0:00</span>/<span id="audio-duration">0:00</span></span></div>
            <div class="progress-info">
                <div class="audio-length"></div>
                <div class="audio-play"><i class="icon-circle"></i></div>

            </div>
        </div>
            <script type="text/javascript">
                var audioList=new Array();
                window.onload=function(){
                    $.ajax({
                        type:"post",
                        url:basePath+"/audio/getAudioList",
                        data:{userId:"2017010001"},
                        success:function(data){
                            audioList=data;
                            parseAudioList(data);
                        },
                        error:function () {
                            alert("获取播放列表失败");
                        }
                    });


                    var audio=document.getElementsByTagName("audio")[0];

                    function play(){
                        audio.play();
                        $("#audio-duration").html(formateTime(audio.duration));
                        $("#btn-play i").removeClass("icon-play").addClass(" icon-pause").css("left",0);
                    }
                    function pause(){
                        audio.pause();
                        $("#btn-play i").removeClass("icon-pause").addClass(" icon-play").css("left",3);
                    }
                    function seekTo(persent){
                        audio.currentTime=audio.duration*persent;
                        audio.play();
                    }

                    function next(){
                        audio.pause();
                        $(".audio-list .table").find("li.active").next();
                        audio.onvCanPlay(play());
                    }
                    function jumpTo(src) {
                        audio.pause();
                        audio.src=src;
                        audio.onvCanPlay(play());
                    }
                    $("#btn-backword").on("click",function(){
                        alert(111);
                    });
                    $("#btn-play").on("click",function(){
                        if(audio.paused){
                            play();
                        }else{
                            pause();
                        }
                    });
                    $("#btn-forward").on("click",function(){
                        next();
                    });
                    audio.addEventListener("timeupdate",function(){
                        var persent=audio.currentTime/audio.duration*100;
                        $(".audio-play").css("width",persent+"%");
                        $("#audio-now").html(formateTime(audio.currentTime));
                    });
                    $(".audio-list table").on("dblclick","td",function(){
                        var audioId=$(this).closest("tr").data("audio-id");
                        $(this).closest("tr").addClass("active").siblings().removeClass("active");
                        audioList.forEach(function (audio) {
                            if(audio.id==audioId){
                                jumpTo(resPath+"/data/audio/"+audio.path);
                            }
                        });
                    });



                    function formateTime(num){
                        var min=parseInt(num/60);
                        var sec=parseInt(num%60);
                        if(sec<10){
                            sec="0"+sec;
                        }
                        return min+":"+sec;
                    }

                };
            function parseAudioList(data) {
                var tbodyDom= $(".audio-list").find("tbody");
                data.forEach(function (audio) {
                    addAudioToList(audio,tbodyDom);
                });
            };
            function addAudioToList(audio,parentDom) {
                var trDom=$("<tr data-audio-id='"+audio.id+"'></tr>");
                var message="<td>"+audio.name+"</td>"+
                    "<td>the Bird</td>"+
                "<td>@twitter</td>";
                trDom.html(message);
                parentDom.append(trDom);
            }


            </script>


        </div>


    </div>

    <%@include file="/WEB-INF/pages/common/disscuss-note.jsp"%>
    <style type="text/css">
        .video-right{
            border:none;
        }
    </style>


</div>

<%@include file="/WEB-INF/pages/video/question.jsp"%>


</body>
</html>
