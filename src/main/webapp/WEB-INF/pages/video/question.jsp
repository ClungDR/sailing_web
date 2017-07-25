<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
<style type="text/css">
    .new-reply{
        margin-left: 50px;
    }
    .new-reply textarea{
        width:100%;
        margin: 0 0 10px 0;
    }
    .reply-tool-box .btn{
        margin-left: 10px;
    }
</style>
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

        <div class="question-list-box">

        </div>
    </div>
</div>
<script type="text/javascript">
    /*提问的js提交代码*/
    $(function(){
        var questionList=$(".question-list-box");
        var formDom=$("form.new-question");
        var textDom=formDom.children("textarea");
        var submitBtn=formDom.find(".add-question-btn");
        var errorDom=formDom.find("p.error");
        var text="";
        /*监听问题输入框控件*/
        textDom.on("input",function () {
            text=textDom.val();
            errorDom.html("").css("display","none");
            if(text!=null&&text.length!=0){
                submitBtn.attr("disabled",false);
            }
        });
        /*问题上传控件*/
        submitBtn.click(function () {
            if(text==null||text.length==0){
                textDom.select();
                submitBtn.attr("disabled",true);
                errorDom.html("请输入问题内容！").css("display","inline-block");
                return;
            }
            var params={description:text,videoId:"${video.id}"};
            submitBtn.attr("disabled",true);

            $.ajax({
                type: "POST",
                url: basePath+"/question/addQuestion",
                data: params,
                success:function (data) {
                    textDom.val("");
                    submitBtn.attr("disabled",false);
                    addQuestionDom(data);
                },
                error:function () {
                    submitBtn.attr("disabled",false);
                    errorDom.html("上传失败，请重试！").css("display","inline-block");
                }
            });
        });

        /*监听回复控件，实现回复输入框的显示与隐藏*/
        questionList.delegate("a.add-reply","click",function(){
            var newReply=$(this).closest(".con").find(".new-reply");
            newReply.slideToggle(600);
        });
        /*监听取消控件，隐藏回复框*/
        questionList.delegate("a#reply-cancel","click",function(){
            var newReply=$(this).closest(".con").find(".new-reply");
            newReply.slideUp(600);
        });
        /*监听输入框*/
        questionList.delegate("textarea","input",function(){
            var text=$(this).val();
            var formDom=$(this).closest("form.new-comment");
            formDom.find(".error-reply").html("").css("display","none");
            if(text!=null&&text.length!=0)
                formDom.find("a#reply-send").attr("disabled",false);
        });
        /*监听发送控件。发送数据，并处理返回的数据显示到页面*/
        questionList.delegate("a#reply-send","click",function(){
            var formDom=$(this).closest("form.new-comment");
            var textDom=formDom.find("textarea");
            var text=textDom.val();
            if(text==null||text.length==0){
                formDom.find(".error-reply").text("请输入回复内容！").css("display","inline");
                textDom.select();
                formDom.find("a#reply-send").attr("disabled",true);
            }

            var questionId=$(this).closest(".question").data("question-id");
            var params={
                questionId:questionId,
                content:text
            };
            $.ajax({
                type:"post",
                url:basePath+"/question/addAnswer",
                data:params,
                success:function(data){
                    if(data.length==0||data==null){
                        formDom.find(".error-reply").text("服务器返回数据错误！").css("display","inline");
                        return;
                    }
                    addReply(data,formDom.closest(".reply-list"));
                    textDom.val("");

                },
                error:function () {
                    formDom.find(".error-reply").text("上传失败，请重试！").css("display","inline");
                }
            });


        });

    });

    //添加问题
    function addQuestionDom(data){
        var questionDom=$("<div class='question'></div>");
        questionDom.attr("data-question-id",data.question.id);

        var html="<a href='#' class='headPic'><img src='"+resPath+"/images/headPic/"+data.user.headPic+"'/></a>"+
            "<div class='con'>"+
            "<div class='question-header'>"+
            "<a class='name' href='#'>"+((data.user.username==null)?data.user.id:data.user.username)+"</a>"+
            "<p class='question-time pull-right'>"+data.question.createTime+"</p>"+
            "</div>"+
            "<div class='question-content'>"+
            "<p>"+data.question.description+"</p>"+
            "<div class='tool-box'>"+
            "<a href='#'><i class='icon  icon-thumbs-up'></i>赞</a>"+
            "<a href='javascript:void(0)' class='add-reply'><i class='icon  icon-question-alt'></i>回复</a>"+
            "</div></div>"+
            "<div class='reply-box'><div class='reply-list'>"+
            "<div class='new-reply' style='display: none;'>"+
            "<form class='new-comment'>"+
            "<textarea class='form-control' id='reply-input' rows='3' maxlength='100' placeholder='写下你的评论...'></textarea>"+
            "<div class='reply-tool-box text-right'>"+
            "<p class='pull-left text-danger error-reply' style='margin:0;font-size: 18px;'></p>"+
            "<a class='btn btn-warning' id='reply-cancel'>取消回复</a>"+
            "<a class='btn btn-success' id='reply-send' disabled='ture'>添加回复</a>"+
            "</div></form></div>"+
            "</div></div></div>";
        questionDom.html(html);
        $(".question-list-box").prepend(questionDom);
    };
    //添加回复
    function addReply(data,parentDom){
        var replyDom=$("<div class='reply'></div>");
        var html="<a href='#' class='headPic'><img src='"+resPath+"/images/headPic/"+data.user.headPic+"'/></a>"+
            "   <div class='con'>"+
            "   <div class='reply-header'>"+
            "   <a class='name' href='#'>"+((data.user.username==null)?data.user.id:data.user.username)+"</a>"+
            "   <p class='reply-time pull-right'>"+data.answer.createTime+"</p>"+
            "   </div>"+
            "   <div class='reply-content'>"+data.answer.content+" <div class='tool-box'>"+
            "   <a href='#'><i class='icon  icon-thumbs-up'></i>赞</a>"+
            "<a href='javascript:void(0)'><i class='icon  icon-question-alt'></i>回复</a>"+
            "</div></div></div>";
        replyDom.html(html);
        $(parentDom).find(".new-reply").after(replyDom);


    };


    function ajaxLoadQuestion(){
        $.ajax({
            type:"post",
            url:basePath+"/question/questionWrapUser",
            data:{videoId:"${video.id}"},
            success:function(data){
                if(data!=null&&data!=undefined)
                    ExportQuestion(data);
            },
            error:function(){
                console.log("获取问答数据失败!");
            }
        });
    };

    function ExportQuestion(data){
        var questionWraps=data.questionWraps;
        var users=data.users;

        questionWraps.sort(function(p,q){
            p=p.question.createTime;
            q=q.question.createTime;
            return compareDate(p,q);
        });
        questionWraps.forEach(function(data){
            var question=data.question;
            var replys=data.answers;
            var user=getUserById(question.userId,users);
            addQuestionDom({
                question:question,
                user:user
            });

            if(replys.length==0)return;
            replys.forEach(function (re){
                var user=getUserById(re.userId,users);
                var parentDom=$(".question[data-question-id="+re.questionId+"]");
                addReply({
                    answer:re,
                    user:user
                },parentDom);
            });

        });

    };
    ajaxLoadQuestion();

    var getUserById=function(id,users){
        for(i=0;i<users.length;i++){
            if(users[i].id==id){
                var user=users[i];
                return user;
            }
        }
    }



    function compareDate(p,q) {
        p=new Date(p);
        q=new Date(q);
        return p>q?1:-1;
    };

</script>