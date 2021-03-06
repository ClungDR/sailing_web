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

</head>

<style>
    .mainContainer {
        display: block;
        width: 1024px;
        margin-left: auto;
        margin-right: auto;
    }

    .urlInput {
        display: block;
        width: 100%;
        margin-left: auto;
        margin-right: auto;
        margin-top: 8px;
        margin-bottom: 8px;
    }

    .centeredVideo {
        display: block;
        width: 100%;
        height: 576px;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: auto;
    }

    .controls {
        display: block;
        width: 100%;
        text-align: left;
        margin-left: auto;
        margin-right: auto;
        margin-top: 8px;
        margin-bottom: 10px;
    }

    .logcatBox {
        border-color: #CCCCCC;
        font-size: 11px;
        font-family: Menlo, Consolas, monospace;
        display: block;
        width: 100%;
        text-align: left;
        margin-left: auto;
        margin-right: auto;
    }
</style>
</head>

<body>

<div class="mainContainer">
    <input name="urlinput" class="urlInput" type="text" value="${resPath}/data/video/test.flv"/>
    <video name="videoElement" class="centeredVideo" controls autoplay width="1024" height="576">
        Your browser is too old which doesn't support HTML5 video.
    </video>
    <div class="controls">
        <button onclick="flv_load()">Load</button>
        <button onclick="flv_start()">Start</button>
        <button onclick="flv_pause()">Pause</button>
        <button onclick="flv_destroy()">Destroy</button>
        <input style="width:100px" type="text" name="seekpoint"/>
        <button onclick="flv_seekto()">SeekTo</button>
    </div>
    <textarea name="logcatbox" class="logcatBox" rows="10" readonly></textarea>
</div>



<script>
    function flv_load() {
        console.log('isSupported: ' + flvjs.isSupported());

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
            url:resPath+"/data/video/out_meta.flv"
        }, {
            enableWorker: false,
            lazyLoad:false,
            lazyLoadMaxDuration: 3 * 60,
            seekType: 'range'
        });
        player.attachMediaElement(element);
        player.load();
    }

    function flv_start() {
        player.play();
    }

    function flv_pause() {
        player.pause();
    }

    function flv_destroy() {
        player.pause();
        player.unload();
        player.detachMediaElement();
        player.destroy();
        player = null;
    }

    function flv_seekto() {
        var input = document.getElementsByName('seekpoint')[0];
        player.currentTime = parseFloat(input.value);
    }

    function getUrlParam(key, defaultValue) {
        var pageUrl = window.location.search.substring(1);
        var pairs = pageUrl.split('&');
        for (var i = 0; i < pairs.length; i++) {
            var keyAndValue = pairs[i].split('=');
            if (keyAndValue[0] === key) {
                return keyAndValue[1];
            }
        }
        return defaultValue;
    }

    var urlInputBox = document.getElementsByName('urlinput')[0];
    var url = decodeURIComponent(getUrlParam('src', urlInputBox.value));
    urlInputBox.value = url;

    var logcatbox = document.getElementsByName('logcatbox')[0];
    flvjs.LoggingControl.addLogListener(function(type, str) {
        logcatbox.value = logcatbox.value + str + '\n';
        logcatbox.scrollTop = logcatbox.scrollHeight;
    });

    document.addEventListener('DOMContentLoaded', function () {
        flv_load();
    });
</script>

</body>

</html>