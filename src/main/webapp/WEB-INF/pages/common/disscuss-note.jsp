<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
/*讨论区样式*/
.video-right{
height: 100%;
overflow: hidden;
border: 1px solid #b1b1b1;
border-radius: 0px 10px 10px 0px;
}
.disc-note-box{
margin: 0;
padding: 10px;
width: 100%;
text-align: center;
border-bottom: 1px solid #b1b1b1;
}
.disc-note-box{
font-size: 16px;
color: #919191;
}
.disc-note-box a{
padding: 0 5px 0 5px;
text-decoration: none;
cursor: pointer;
color: #449d44;
transition: all 0.5s;
}
.disc-note-box a:hover{
font-size: 18px;
}
.disc-note-box .active{
font-size: 24px;
color: #277739;
}

.write-box{
color: #7d7c7c;
padding: 5px;
border-bottom: 1px solid #b1b1b1;
}
.write-box .btn{
    background: #09a269;
}
.write-box .btn:hover{
    background-color: #00905a;
}
.write-box p{
margin-top: 10px;
margin-bottom: 5px;
}
.write-box p strong{
color: #423b3b;
}
.write-box .error{
   float: right;
}
.content-list-box{
max-height: 300px;
overflow-x: hidden;
overflow-y:visible;
margin-right: -27px;
padding-right:20px;
}
.content-list-box ul{
padding: 5px;
list-style: none;
}

.content-list-box ul li p{
word-wrap: break-word;
}
.content-user-info{
font-size: 16px;
}
.content-user-info img{
width: 30px;
height: 30px;
border-radius: 50%;
margin-right: 10px;
}
.back-content{
border-left: 2px solid #d9d9d9;
padding-left: 5px;
}

</style>

<%--切换评论和笔记--%>
<script type="text/javascript">
    $(function(){
        $(".btn-show-discuss").on("click",function(){
            $(".note-box").fadeOut(200);
            $(".discuss-box").fadeIn(800);
            $(this).find("span").addClass("active");
            $(".btn-show-note").find("span").removeClass("active");
        });
        $(".btn-show-note").on("click",function(){
            $(".discuss-box").fadeOut(200);
            $(".note-box").fadeIn(800);
            $(this).find("span").addClass("active");
            $(".btn-show-discuss").find("span").removeClass("active");
        });
    });
</script>

<div class="col-md-3 video-right">
    <h3 class="disc-note-box"><a class="btn-show-discuss"><span class="active"><i class="icon icon-comments-alt"></i>讨论</span></a><a class="btn-show-note"><span><i class=" icon-pencil"></i>笔记</span></a></h3>
    <div class="discuss-box sub-box">
        <div class="write-box" >
            <p class="write-title" style="display: inline-block;">发表你的讨论：</p>
            <p class="error text-danger" style="display:none;">请输入讨论内容</p>
            <textarea class="form-control" id="discuss-input" rows="3" maxlength="100" placeholder="发表你的讨论内容..."></textarea>
            <div style="margin-top: 5px;">
                <p class="text-right" style="display: inline-block;">还可输入<strong class="discuss-length">100</strong>字</p>
                <button class="btn btn-success pull-right btn-write-box">发起讨论</button></div>
        </div>
        <div class="content-list-box">
            <ul id="discuss-list">

            </ul>
        </div>
    </div>
    <div class="note-box sub-box"   style="display: none;">

        <div class="write-box">
            <p class="write-title" style="display: inline-block;">记录笔记：</p>
            <p class="error text-danger" style="display:none;">请输入笔记内容</p>
            <textarea class="form-control" id="note-input" rows="3" maxlength="500" placeholder="输入笔记内容..."></textarea>
            <div style="margin-top: 5px;" class="text-right">
                <button class="btn btn-success btn-write-box">保存笔记</button></div>
        </div>
        <div class="content-list-box">
            <ul>
                <li>
                    <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>memory</a><p class="pull-right">7月2日</p></div>
                    <p class="back-content">这个是笔记框点啦就是大</p>
                </li>
                <li>
                    <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>memory</a><p class="pull-right">7月2日</p></div>
                    <p  class="back-content">dasdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
                </li><li>
                <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="back-content">dasdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
            </li><li>
                <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="back-content">dasdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
            </li><li>
                <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                <p class="back-content">da class="back-content"sdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
            </li>
            </ul>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(function(){
        $(".video-right").on("input","textarea",function(){
            $(this).parent().find(".discuss-length").text(100-$(this).val().length);
            $(this).parent().find("p.error").css("display","none");
            if($(this).val().length==100){
                $(this).parent().find("p.error").html("讨论最多输入100字").fadeIn(600);
            }
        });
        $(".video-right").on("click",".btn",function () {
            var parentDom=$(this).closest(".write-box");
            var text=parentDom.find("textarea").val();
            if(text.length==0){
                parentDom.find("p.error").html("请输入内容！").fadeIn(600);
                parentDom.find("textarea").select();
                return;
            }
            var params;
            var url;
            var isDiscuss=false;
            if($(this).html()=="发起讨论"){
                params={content:text,videoId:"${video.id}"};
                url="/discuss/addDiscuss";
                isDiscuss=true;
            }else{
                params={content:text,fileId:"${video.id}",fileType:1};
                url="/note/addNote";
                isDiscuss=false;
            }
            var ulDom=$(this).closest(".sub-box").find("ul");
            $.ajax({
                type:"post",
                url:basePath+url,
                data:params,
                success:function (data) {
                    parentDom.find("textarea").text("");
                    console.log(user);
                    addMessage(isDiscuss,data,ulDom);
                },
                error:function () {
                    parentDom.find("p.error").html("上传数据失败！").fadeIn(600);
                }
            });


        });
        function addMessage(isDiscuss,data,parentDom){
            var liDom=$("<li></li>");
            var message="";
            if(isDiscuss){
                message="<div class='content-user-info'><a href='#' class='writer-name'><img src='"+resPath+"/images/headPic/"+data.user.headPic+"'/>&nbsp&nbsp"+data.user.username+"</a><p class='pull-right'>"+data.discuss.discussTime.substring(11,16)+"</p></div>"+
                    "<p class='back-content'>"+data.discuss.content+"</p>";}
            else{
                message="<div class='content-user-info'><a href='#' class='writer-name'><img src='"+resPath+"/images/headPic/"+user.headPic+"'/>&nbsp&nbsp"+user.username+"</a><p class='pull-right'>"+data.createTime.substring(11,16)+"</p></div>"+
                    "<p class='back-content'>"+data.content+"</p>";}
            liDom.html(message);
            parentDom.prepend(liDom);
        };
    });

    /*讨论的加载代码*/
    $(function(){
        /*讨论的异步加载代码*/
        function ajaxLoadDiscuss() {
            $.ajax({
                type:"post",
                url:basePath+"/discuss/discussUserWrap",
                data:{videoId:"${video.id}"},
                success:parseDiscuss,
                error:function () {
                    console.log("获取讨论列表失败");
                }
            });
        };
        /*解析讨论的返回结果*/
        function parseDiscuss(data) {
            var discusses=data.discusses;
            var users=data.users;
            var discussListDom=$("ul#discuss-list");
            discusses.forEach(function (dis) {
                var user=getUserByDisId(dis.userId,users);
                addDiscuss({discuss:dis,user:user},discussListDom);
            });
        };
        /*根据id获取用户信息，用于显示用户的头像和名称*/
        var getUserByDisId=function(id,users){
            for(i=0;i<users.length;i++){
                if(users[i].id==id){
                    var user=users[i];
                    return user;
                }
            }
        }
        /*添加discuss到列表代码*/
        function addDiscuss(data,discussListDom) {
            var liDom=$("<li></li>");
            var message="<div class='content-user-info'><a href='#' class='writer-name'><img src='"+resPath+"/images/headPic/"+data.user.headPic+"'/>&nbsp&nbsp"+data.user.username+"</a><p class='pull-right'>"+data.discuss.discussTime.substring(11,16)+"</p></div>"
                +"<p  class='back-content'>"+data.discuss.content+"</p>";
            liDom.html(message);
            discussListDom.prepend(liDom);
            if(discussListDom.children().length>50){
                discussListDom.children("li:last-child").remove();
            }
        };
        ajaxLoadDiscuss();
    });

    /*笔记的加载代码*/
    $(function(){
        /*笔记的异步加载代码*/
        function ajaxLoadNote() {
            $.ajax({
                type:"post",
                url:basePath+"/note/getAllByFile",
                data:{fileId:"${video.id}",fileType:1},
                success:function (data) {
                    parseNote(data,$(".note-box").find("ul"));
                },
                error:function () {
                    console.log("获取讨论列表失败");
                }
            });
        };
        /*解析讨论的返回结果*/
        function parseNote(data,parentDom) {
            data.forEach(function (note) {
                var liDom=$("<li></li>");
                var message="<div class='content-user-info'><a href='#' class='writer-name'><img src='"+resPath+"/images/headPic/"+user.headPic+"'/>&nbsp&nbsp"+user.username+"</a><p class='pull-right'>"+note.createTime.substring(11,16)+"</p></div>"
                    +"<p  class='back-content'>"+note.content+"</p>";
                liDom.html(message);
                parentDom.prepend(liDom);
            });

        };

        ajaxLoadNote();
    });

</script>