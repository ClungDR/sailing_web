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
<script type="text/javascript">
    <%--工具js--%>
    Date.prototype.format = function(fmt) {
        var o = {
            "M+" : this.getMonth()+1,                 //月份
            "d+" : this.getDate(),                    //日
            "h+" : this.getHours(),                   //小时
            "m+" : this.getMinutes(),                 //分
            "s+" : this.getSeconds(),                 //秒
            "q+" : Math.floor((this.getMonth()+3)/3), //季度
            "S"  : this.getMilliseconds()             //毫秒
        };
        if(/(y+)/.test(fmt)) {
            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        }
        for(var k in o) {
            if(new RegExp("("+ k +")").test(fmt)){
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
            }
        }
        return fmt;
    }
</script>



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
    .navbar-nav li.nav-head-pic a{
        padding: 0;
    }
    .navbar-nav li a img{
        width: 50px;
        height: 50px;
        border-radius: 50%;
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
            <li class="nav-head-pic"><a href="#" onclick="" target="_blank">Memory&nbsp&nbsp<img src="${resPath}/images/headPic/default.jpg"/></a></li>
            <li><a href="#" onclick="" target="_blank">退出</a></li>
        </ul>
        </nav>
    </div>
</header>


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
    /*讨论区样式*/
    .video-discuss{
        height: 100%;
        overflow: hidden;
        border: 1px solid #b1b1b1;
        border-radius: 0px 10px 10px 0px;
    }
    .discuss-header{
        margin: 0;
        padding: 10px;
        width: 100%;
        text-align: center;
        border-bottom: 1px solid #b1b1b1;
    }
    .write-discuss{
        color: #7d7c7c;
        padding: 5px;
        border-bottom: 1px solid #b1b1b1;
    }
    .write-discuss p{
        margin-top: 10px;
        margin-bottom: 5px;
    }
    .write-discuss p strong{
        color: #423b3b;
    }
    .discuss-list-box{
        max-height: 300px;
        overflow-x: hidden;
        overflow-y:visible;
        margin-right: -27px;
        padding-right:20px;
    }
    .discuss-list-box ul{
        padding: 5px;
        list-style: none;
    }

    .discuss-list-box ul li p{
        word-wrap: break-word;
    }
    .discuss-user-info{
        font-size: 18px;
    }
    .discuss-user-info img{
        width: 30px;
        height: 30px;
        border-radius: 50%;
    }
    .discuss-content{
        border-left: 2px solid #d9d9d9;
        padding-left: 5px; word-wrap:break-word; word-break:normal;
        margin: 5px 0 10px 0;
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

        </script>
    </div>
    <div class="col-md-3 video-discuss">
        <h3 class="discuss-header"><i class="icon icon-questions-alt" style="font-size: 26px;padding-right: 5px;"></i>讨论区&nbsp&nbsp</h3>
        <div class="write-discuss">
            <p class="discuss-title" style="display: inline-block;">发表你的讨论：</p>
            <p class="error text-danger" style="display:none;">请输入讨论内容</p>
            <textarea class="form-control" id="discuss-input" rows="3" maxlength="100" placeholder="发表你的讨论内容..."></textarea>
            <div style="margin-top: 5px;">
                <p class="text-right" style="display: inline-block;">还可输入<strong class="discuss-length">100</strong>字</p>
                <button class="btn btn-success pull-right btn-write-discuss">发起讨论</button></div>
        </div>
        <div class="discuss-list-box">
            <ul>
                <li>
                    <div class="discuss-user-info"><a href="#" class="discuss-writer"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                    <p class="discuss-content">html的h1到h5标签的字体大小各是什么呀？</p>
                </li>
                <li>
                    <div class="discuss-user-info"><a href="#" class="discuss-writer"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                    <p  class="discuss-content">css中的position的定位，absolute和fixed有什么区别？</p>
                </li><li>
                <div class="discuss-user-info"><a href="#" class="discuss-writer"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="discuss-content">absolute相对于父元素定位，fixed相对于浏览器窗口定位</p>
            </li><li>
                <div class="discuss-user-info"><a href="#" class="discuss-writer"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="discuss-content">dasdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
            </li><li>
                <div class="discuss-user-info"><a href="#" class="discuss-writer"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="discuss-content">da class="discuss-content"sdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
            </li>
            </ul>
        </div>
    </div>
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


<style type="text/css">
    .content{
        margin-top: 30px;
    }
    .new-question{
        position: relative;
        margin-left: 48px;
    }

    .add-question .headPic{
        position: absolute;
        left: -48px;
    }
    .add-question .headPic img{
        width: 40px;
        height: 40px;
        border-radius: 50%;
    }

    .add-question .new-question textarea{
        padding: 10px 15px;
        width: 100%;
        height: 80px;
        font-size: 16px;
        border: 1px solid #dcdcdc;
        border-radius: 4px;
        background-color:#f8f8f8;
        resize: none;
        display: inline-block;
        vertical-align: top;
        outline-style: none;
    }
    .add-question .add-question-box{
        padding: 10px 10px 10px ;
    }

    /* 评论区的格式 */
    .question-list-box{
        margin-top:10px;
    }
    .question{

    }
    .question .headPic{
        float: left;
        margin: 24px 0 0 5px;
        position: relative;
    }
    .question .headPic img{
        width: 48px;
        height: 48px;
        border-radius: 50%
    }
    .question .con{
        position: relative;
        margin-left: 75px;
        padding: 22px 0 14px;
    }
    .question .question-header{
        font-size: 18px;
    }
    .question .question-content{
        font-size: 18px;
        padding: 5px 0 15px ;
    }
    .question .question-content .tool-box a{
        margin-right: 10px;
        color: #969696;
        display: inline-block;
        text-decoration: none;
    }
    .question .question-content .tool-box a:hover{
        color: #2d2929;
    }
    /*回复的样式*/
    .reply-list{
        border-left:2px solid #e1e1e1;
    }
    .reply-list .headPic{
        float: left;
        margin: 10px 0 0 5px;
        position: relative;
    }
    .reply-list .headPic img{
        width: 30px;
        height: 30px;
        border-radius: 50%
    }
    .reply-list .con{
        position: relative;
        margin-left: 50px;
        padding: 10px 0 0px;
    }
    .reply-list .reply-header{
        font-size: 16px;
    }
    .reply-list .reply-content{
        font-size: 16px;
        padding: 5px 0 5px ;
    }
    .reply-list .reply-content .tool-box a{
        margin-right: 10px;
        color: #969696;
        display: inline-block;
        text-decoration: none;
    }
    .reply-list .reply-content .tool-box a:hover{
        color: #2d2929;
    }
</style>

<script type="text/javascript">

</script>

<div class="container content">
    <h3>疑难解答</h3>
    <div class="col-md-9 question-box">
        <div class="add-question">
            <form class="new-question">
                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                <textarea placeholder="写下你的问题..."></textarea>
                <div class="add-question-box  text-right"><p class="pull-left text-danger error" style="display:none;font-size: 18px;"> </p><input type="button" class="add-question-btn btn btn-success" disabled="true" value="添加问题" /></div>
            </form>
        </div>

        <script type="text/javascript">
            window.onload=function(){
                /*播放器的初始化代码*/
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

//                var logcatbox = document.getElementsByName('logcatbox')[0];
                flvjs.LoggingControl.addLogListener(function(type, str) {
//                    logcatbox.value = ;
//                    logcatbox.scrollTop = logcatbox.scrollHeight;
                    console.log(str + '\n');
                });

                document.addEventListener('DOMContentLoaded', function () {

                });
                flv_load();
                /*讨论的js提交代码*/
                $(function(){
                    var discussListDom=$(".discuss-list-box ul");
                    var writeDisDom=$(".write-discuss");
                    var textDom=writeDisDom.children("textarea#discuss-input");
                    var restDom=writeDisDom.find("strong.discuss-length");
                    var uploadBtn=writeDisDom.find("button.btn-write-discuss");
                    var errorDom=writeDisDom.find(".error");
                    var text="";
                    textDom.on("input",function(){
                        text=textDom.val();
                        restDom.html(100-text.length);
                        errorDom.css("display","none");
                    });
                    uploadBtn.click(function(){
                        if(text==null||text.length==0){
                            errorDom.html("请输入讨论内容！").css("display","inline-block");
                            textDom.select();
                            return;
                        }
                        var params={content:text,videoId:1};
                        uploadBtn.attr("disabled",true);
                        $.ajax({
                            type: "POST",
                            url: basePath+"/video/add-discuss",
                            data: params,　　//这里上传的数据使用了formData 对象
                            success:function (data) {
                                text="";
                                textDom.val("");
                                uploadBtn.attr("disabled",false);
                                if(!(data instanceof Object)){
                                    data=$.parseJSON(data);
                                }
                                var liDom=$("<li></li>");

                                var message="<div class='discuss-user-info'><a href='#' class='discuss-writer'><img src='"+resPath+"/images/headPic/"+data.headPic+"'/>&nbsp&nbsp"+data.username+"</a><p class='pull-right'>"+data.discuss.discussTime.substring(5,16)+"</p></div>"
                                +"<p  class='discuss-content'>"+data.discuss.content+"</p>";
                                liDom.html(message);

                                discussListDom.prepend(liDom);
                                if(discussListDom.children().length>50){
                                    discussListDom.children("li:last-child").remove();
                                }

                            },
                            error:function () {
                                uploadBtn.attr("disabled",false);
                                errorDom.html("上传失败，请重试！").css("display","inline-block");
                            }
                        });
                    });
                });
                /*提问的js提交代码*/
                $(function(){
                    var formDom=$("form.new-question");
                    var textDom=formDom.children("textarea");
                    var submitBtn=formDom.find(".add-question-btn");
                    var errorDom=formDom.find("p.error");
                    var text="";
                    textDom.on("input",function () {
                        text=textDom.val();
                        errorDom.html("").css("display","none");
                        if(text!=null&&text.length!=0){
                            submitBtn.attr("disabled",false);
                        }
                    });

                    submitBtn.click(function () {
                        if(text==null||text.length==0){
                            textDom.select();
                            submitBtn.attr("disabled",true);
                            errorDom.html("请输入问题内容！").css("display","inline-block");
                            return;
                        }
                        var params={description:text,videoId:1};
                        submitBtn.attr("disabled",true);

                        $.ajax({
                            type: "POST",
                            url: basePath+"/video/add-question",
                            data: params,　　
                            success:function (data) {
                                textDom.val("");
                                submitBtn.attr("disabled",false);
                                console.log(JSON.stringify(data));
                                addQuestionDom(data);
//                                var
                            },
                            error:function () {
                                submitBtn.attr("disabled",false);
                                errorDom.html("上传失败，请重试！").css("display","inline-block");
                            }
                        });

                    });


                        });



                /*回复的js*/
//                $(".question-list-box").delegate("a.add-reply","click",function(){
//                    alert(111);
//                    return ;
//                });
                $("a.add-reply").on("click",function(){
                    alert(111);
                    return;
                });
            };

            function addQuestionDom(data){
                var questionDom=$("<div></div>");

                var html="<div class='question'>"+
                    "<a href='#' class='headPic'><img src='"+resPath+"/images/headPic/"+data.user.headPic+"'/></a>"+
                    "<div class='con'>"+
                    "<div class='question-header'>"+
                    "<a class='name' href='#'>"+((data.user.username==null)?data.user.id:data.user.username)+"</a>"+
                    "<p class='question-time pull-right'>"+data.question.createTime+"</p>"+
                    "</div>"+
                    "<div class='question-content'>"+
                    "<p>"+data.question.description+"</p>"+
                    "<div class='tool-box'>"+
                    "<a href='#'><i class='icon  icon-thumbs-up'></i>赞</a>"+
                    "<a href='#' class='add-reply'><i class='icon  icon-question-alt'></i>回复</a>"+
                    "</div></div>"+
                    "<div class='reply-box'><div class='reply-list'>"+
                    "</div></div></div></div>";
                console.log(html);
                questionDom.html(html);
                $(".question-list-box").prepend(questionDom);
            }
        </script>



<style type="text/css">
    .new-reply{
        margin-left: 50px;
    }
    .new-reply textarea{
        width:100%;
        margin: 0 0 10px 0;
    }
    .reply-box .btn{
        margin-left: 10px;
    }
</style>


        <div class="question-list-box">
            <div class="question">
                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                <div class="con">
                    <div class="question-header">
                        <a class="name" href="#">memory呵呵哒</a>
                        <p class="question-time pull-right">2015-11-23</p>
                    </div>
                    <div class="question-content">
                        <p>
                            css的position属性各有什么区别？
                        </p>
                        <div class="tool-box">
                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                            <a href="#" class="add-reply"><i class="icon  icon-question-alt"></i>回复</a>
                        </div>
                    </div>
                    <!-- 问题的解答 -->

                    <div class="reply-box">

                        <div class="reply-list">
                            <div class="new-reply" style="display: none;">
                                <form class="new-comment"><!---->
                                    <textarea class="form-control" id="reply-input" rows="3" maxlength="100" placeholder="写下你的评论..."></textarea>
                                    <div class="reply-box text-right">
                                        <a class="btn btn-warning" id="reply-cancel">取消回复</a>
                                        <a class="btn btn-success" id="reply-send">添加回复</a>
                                    </div>
                                </form>
                            </div>

                            <div class="reply">
                                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                                <div class="con">
                                    <div class="reply-header">
                                        <a class="name" href="#">小明</a>
                                        <p class="reply-time pull-right">2015-11-23</p>
                                    </div>
                                    <div class="reply-content">
                                        <p>
                                            absolute
                                            生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。
                                            元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                        </p><p>    fixed
                                        生成绝对定位的元素，相对于浏览器窗口进行定位。
                                        元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                    </p><p>  relative
                                        生成相对定位的元素，相对于其正常位置进行定位。
                                        因此，"left:20" 会向元素的 LEFT 位置添加 20 像素。
                                    </p><p>  static	默认值。没有定位，元素出现在正常的流中（忽略 top, bottom, left, right 或者 z-index 声明）。
                                    </p><p>   inherit	规定应该从父元素继承 position 属性的值。
                                    </p>
                                        <div class="tool-box">
                                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                                            <a href="#"><i class="icon  icon-question-alt"></i>回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="reply">
                                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                                <div class="con">
                                    <div class="reply-header">
                                        <a class="name" href="#">小明</a>
                                        <p class="reply-time pull-right">2015-11-23</p>
                                    </div>
                                    <div class="reply-content">
                                        <p>
                                            absolute
                                            生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。
                                            元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                        </p><p>    fixed
                                        生成绝对定位的元素，相对于浏览器窗口进行定位。
                                        元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                    </p><p>  relative
                                        生成相对定位的元素，相对于其正常位置进行定位。
                                        因此，"left:20" 会向元素的 LEFT 位置添加 20 像素。
                                    </p><p>  static	默认值。没有定位，元素出现在正常的流中（忽略 top, bottom, left, right 或者 z-index 声明）。
                                    </p><p>   inherit	规定应该从父元素继承 position 属性的值。
                                    </p>
                                        <div class="tool-box">
                                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                                            <a href="#"><i class="icon  icon-question-alt"></i>回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </div>

                    </div>



                </div>
            </div>

            <!--  -->

            <div class="question">
                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                <div class="con">
                    <div class="question-header">
                        <a class="name" href="#">memory呵呵哒</a>
                        <p class="question-time pull-right">2015-11-23</p>
                    </div>
                    <div class="question-content">
                        <p>
                            img标签的alt属性有什么用啊？
                        </p>
                        <div class="tool-box">
                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                            <a href="#" class="add-reply"><i class="icon  icon-question-alt"></i>回复</a>
                        </div>
                    </div>
                    <!-- 问题的解答 -->
                    <div class="reply-box">

                        <div class="reply-list">

                            <div class="reply">
                                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                                <div class="con">
                                    <div class="reply-header">
                                        <a class="name" href="#">小明</a>
                                        <p class="reply-time pull-right">2015-11-23</p>
                                    </div>
                                    <div class="reply-content">
                                        <p>
                                            absolute
                                            生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。
                                            元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                        </p><p>    fixed
                                        生成绝对定位的元素，相对于浏览器窗口进行定位。
                                        元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                    </p><p>  relative
                                        生成相对定位的元素，相对于其正常位置进行定位。
                                        因此，"left:20" 会向元素的 LEFT 位置添加 20 像素。
                                    </p><p>  static	默认值。没有定位，元素出现在正常的流中（忽略 top, bottom, left, right 或者 z-index 声明）。
                                    </p><p>   inherit	规定应该从父元素继承 position 属性的值。
                                    </p>
                                        <div class="tool-box">
                                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                                            <a href="#"><i class="icon  icon-question-alt"></i>回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="reply">
                                <a href="#" class="headPic"><img src="${resPath}/images/headPic/default.jpg"/></a>
                                <div class="con">
                                    <div class="reply-header">
                                        <a class="name" href="#">小明</a>
                                        <p class="reply-time pull-right">2015-11-23</p>
                                    </div>
                                    <div class="reply-content">
                                        <p>
                                            absolute
                                            生成绝对定位的元素，相对于 static 定位以外的第一个父元素进行定位。
                                            元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                        </p><p>    fixed
                                        生成绝对定位的元素，相对于浏览器窗口进行定位。
                                        元素的位置通过 "left", "top", "right" 以及 "bottom" 属性进行规定。
                                    </p><p>  relative
                                        生成相对定位的元素，相对于其正常位置进行定位。
                                        因此，"left:20" 会向元素的 LEFT 位置添加 20 像素。
                                    </p><p>  static	默认值。没有定位，元素出现在正常的流中（忽略 top, bottom, left, right 或者 z-index 声明）。
                                    </p><p>   inherit	规定应该从父元素继承 position 属性的值。
                                    </p>
                                        <div class="tool-box">
                                            <a href="#"><i class="icon  icon-thumbs-up"></i>赞</a>
                                            <a href="#"><i class="icon  icon-question-alt"></i>回复</a>
                                        </div>
                                    </div>
                                </div>
                            </div>



                        </div>

                    </div>



                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>