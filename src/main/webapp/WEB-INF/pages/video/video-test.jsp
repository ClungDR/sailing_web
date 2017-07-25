<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    .info{
        margin-top:10px;
        margin-bottom: 30px;
    }
    .info .v-title{
        padding: 0;
        text-overflow: ellipsis;
        font-weight: normal;
        white-space: nowrap;
    }

    .info .subinfo{
        color: #99a2aa;
        display: inline-block;
    }
    .info span{
        font-size: 16px;
        margin-right: 15px;
    }

</style>

<div class="container info">
    <div class="v-title col-md-9"><h3>初识Html5和CSS</h3>
        <div class="v-title-info subinfo">
            <span><i>上传时间：2017-03-27 18:41</i></span>
            <span class="v-title-line"><i class=" icon-film"></i>&nbsp&nbsp<span id="dianji">53</span></span>
            <span class="v-title-line v-stow fav_btn"><i class=" icon-star-empty"></i>&nbsp&nbsp<span id="stow_count">35</span></span>
        </div>
    </div>
</div>

<style type="text/css">
    .video-container{
        padding: 0;
        height: 500px;
    }

    .video-player{
        height: 100%;
        padding: 0px;
        background: #000000;
    }

</style>
<div class="container video-container">
    <div class="col-md-9 video-player">
        <input name="urlinput" class="urlInput" style="display: none" type="text" value="${resPath}/data/video/test.flv"/>
        <video name="videoElement" class="centeredVideo" controls autoplay width="100%" height="500">
            Your browser is too old which doesn't support HTML5 video.
        </video>
        <script type="text/javascript">
            /*视频播放器的初始化代码*/
            window.onload=function(){
                /*播放器的初始化代码*/
                var videoPath="${video.path}";
                function flv_load() {
                    var element = document.getElementsByName('videoElement')[0];
                    if (typeof player !== "undefined") {
                        if (player != null) {
                            player.unload();
                            player.detachMediaElement();
                            player.destroy();
                            player = null;
                        }
                    }
                    player = flvjs.createPlayer({
                        type:"flv",
                        url:resPath+"/data/video/${video.path}"
                    }, {
                        enableWorker: false,
//                lazyLoad:false,
                        lazyLoadMaxDuration: 3 * 60,
                        seekType: 'range'
                    });
                    player.attachMediaElement(element);
                    player.load();
                }

                flv_load();
            };
        </script>
    </div>
    <%--评论的页面--%>
    <%@include file="../common/disscuss-note.jsp"%>

</div>


<style type="text/css">
    .recommend-area{
        margin-top: 30px;

    }
    .recommend-area .rm-list-wrap{
        width: 870px;
        border-bottom:1px solid #e5e9ef;
        border-top:1px solid #e5e9ef;
    }
    .recommend-area ul{
        padding: 0;
        list-style: none;
    }
    .recommend-area ul li{
        display: inline-block;
        vertical-align: top;
        width: 20%;
        padding: 5px;
    }
    .recommend-area ul li img{
        border-radius: 5px;
        width: 100%;
    }
    .recommend-area ul li a{
        color:#474d50;
        text-decoration: none;
        font-size: 14px;
    }
    .recommend-area ul li a:hover{
        color:#00679a;
    }
    .recommend-area ul li p{
        word-break: break-all;
        margin-top: 5px;
    }
</style>

<!-- 智能推荐 -->
<div class="recommend-area container">
    <h4>看过该视频的人还看过</h4>
    <div class="rm-list-wrap">
        <ul class="rm-list">
            <li>
                <a href="#"><img src="${resPath}/data/video/poster/1.jpg"/>
                    <p>html标签</p>
                </a>
            </li><li>
            <a href="#"><img src="${resPath}/data/video/poster/2.jpg"/>
                <p>浮动元素</p>
            </a>
        </li><li>
            <a href="#"><img src="${resPath}/data/video/poster/3.jpg"/>
                <p>块级元素与行级元素</p>
            </a>
        </li><li>
            <a href="#"><img src="${resPath}/data/video/poster/4.jpg"/>
                <p>html中的canvas与svg</p>
            </a>
        </li><li>
            <a href="#"><img src="${resPath}/data/video/poster/1.jpg"/>
                <p>css字体与背景</p>
            </a>
        </li>
        </ul>
    </div>
</div>
<%--初始化播放器页面--%>

<%--调用问题的页面--%>
<%@include file="/WEB-INF/pages/video/question.jsp"%>

</body>
</html>