<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
/*讨论区样式*/
.video-right{
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
.discuss-header{
font-size: 16px;
color: #919191;
}
.discuss-header a{
padding: 0 5px 0 5px;
text-decoration: none;
cursor: pointer;
color: #449d44;
transition: all 0.5s;
}
.discuss-header a:hover{
font-size: 18px;
}
.discuss-header .active{
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
    <h3 class="discuss-header"><a class="btn-show-discuss"><span class="active"><i class="icon icon-comments-alt"></i>讨论</span></a><a class="btn-show-note"><span><i class=" icon-pencil"></i>笔记</span></a></h3>
    <div class="discuss-box">

        <div class="write-box" >
            <p class="write-title" style="display: inline-block;">发表你的讨论：</p>
            <p class="error text-danger error-discuss" style="display:none;">请输入讨论内容</p>
            <textarea class="form-control" id="discuss-input" rows="3" maxlength="100" placeholder="发表你的讨论内容..."></textarea>
            <div style="margin-top: 5px;">
                <p class="text-right" style="display: inline-block;">还可输入<strong class="discuss-length">100</strong>字</p>
                <button class="btn btn-success pull-right btn-write-box">发起讨论</button></div>
        </div>
        <div class="content-list-box">
            <ul id="discuss-list">
                <li>
                    <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
                    <p class="back-content">dasdasdasdadasdadasdassdasdadadasdhasdhasdadlassddasdasdasddasdadasd大华三dasdasdadasdasd路多哈的好伐啦大神多垃圾三六九等大三几点啦就是大</p>
                </li>
                <li>
                    <div class="content-user-info"><a href="#" class="writer-name"><img src="${resPath}/images/headPic/default.jpg"/>&nbsp&nbspmemory</a><p class="pull-right">7月2日</p></div>
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
    <div class="note-box"   style="display: none;">

        <div class="write-box">
            <p class="write-title" style="display: inline-block;">记录笔记：</p>
            <p class="error text-danger error-note" style="display:none;">请输入笔记内容</p>
            <textarea class="form-control" id="note-input" rows="3" maxlength="500" placeholder="输入笔记内容..."></textarea>
            <div style="margin-top: 5px;">
                <p class="text-right" style="display: inline-block;">还可输入<strong class="discuss-length">500</strong>字</p>
                <button class="btn btn-success pull-right btn-write-box">保存笔记</button></div>
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
    /*讨论的js提交代码*/
    $(function(){
        var discussListDom=$(".discuss-box .discuss-list-box ul");
        var writeDisDom=$(".discuss-box .write-discuss");
        var textDom=writeDisDom.children("textarea#discuss-input");
        var restDom=writeDisDom.find("strong.discuss-length");
        var uploadBtn=writeDisDom.find("button.btn-write-discuss");
        var errorDom=writeDisDom.find(".error-discuss");
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
                url: basePath+"/discuss/add-discuss",
                data: params,　　//这里上传的数据使用了formData 对象
                success:function (data) {
                    text="";
                    textDom.val("");
                    uploadBtn.attr("disabled",false);
                    if(!(data instanceof Object)){
                        data=$.parseJSON(data);
                    }
                    addDiscuss(data,discussListDom);
                },
                error:function () {
                    uploadBtn.attr("disabled",false);
                    errorDom.html("上传失败，请重试！").css("display","inline-block");
                }
            });
        });

    });

    /*讨论的加载代码*/
    $(function(){
        /*讨论的异步加载代码*/
        function ajaxLoadDiscuss() {
            $.ajax({
                type:"post",
                url:basePath+"/discuss/discussUserWrap",
                data:{videoId:1},
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

</script>