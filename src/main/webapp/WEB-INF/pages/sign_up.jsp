<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
    <script type="text/javascript" src="${resPath}/js/MD5.js"></script>
</head>

<style type="text/css">
    body{
        background-image:url("${resPath}/images/loginbk.jpg");
        background-repeat:no-repeat;
        background-size: cover;
        background-attachment: fixed;
    }

    .login-box{
        background:#f1f1f1;
        margin-top: 100px;
        padding: 20px;
        border-radius: 10px;
    }
    label{
        font-size: 16px;
        font-family: 楷体;
    }
    input[name='verify']{
        width: 70%;
        display: inline-block;
        margin-right: 5px;
    }
    img{
        height: 30px;
        vertical-align: middle;
    }

    .btn{
        font-size: 16px;
        font-family: 楷体;
        font-weight: 700;
    }
</style>

<body>
<div class="container">
    <div class="raw">
        <div class="col-md-4 col-md-offset-7 login-box">
            <form>
                <div class="form-group">
                    <label for="name-input">用户名</label>
                    <input type="text" class="form-control" id="name-input" name="username" placeholder="请输入用户名..." value="admin" />
                </div>
                <div class="form-group">
                    <label for="password-input">密码</label>
                    <input type="password" class="form-control" id="password-input" name="password" placeholder="请输入密码..." value="1234567" />
                </div>
                <div class="form-group">
                    <label for="password-sure">确认密码</label>
                    <input type="password" class="form-control" id="password-sure" name="password-sure" placeholder="请再次输入密码..." value="1234567" />
                </div>
                <div class="form-group">
                    <label for="verify-input">验证码</label>
                    <div>
                        <input type="text" class="form-control" id="verify-input" name="verify" placeholder="请输入验证码..."><img class="text-right" src="${basePath}/kaptchaImg"  onclick="this.src=basePath+'/kaptchaImg?d='+new Date().getTime();">
                    </div>

                </div>
                <div class="text-center">
                    <a class="btn btn-default col-md-3 col-md-offset-1" id="sign-up">注册</a>
                    <a class="btn btn-default col-md-3 col-md-offset-2" id="sign-in" href="${basePath}/showLoginForm">登录</a>
                </div>

            </form>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    $("#sign-up").click(function(){
        var username=$("input[name='username']").val();
        var password=$("input[name='password']").val();
        var pass_sure=$("input[name='password-sure']").val();
        var verify=$("input[name='verify']").val();
        if(password!=pass_sure){
            alert("两次输入的密码不一致！");
            $("input[name='password-sure']").val("").select();
            return ;
        }

        password=MD5(password);
        var params={
            username:username,
            password:password,
            verify:verify
        };

        $.ajax({
            type:"post",
            url:basePath+"/signUp",
            data:params,
            success:function(data){
                if(data!="success")
                    alert(data);
                else
                    window.location.href="/user/userCenter";
            },
            error:function () {
                alert("连接服务器出错，请重试！");
            }
        });

    });
</script>
</html>