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
        background-image:url("resources/images/loginbk.jpg");
        background-repeat:no-repeat;
        background-size: cover;
        background-attachment: fixed;
    }
    .container-fluid{
        padding: 100px;
    }

    .introduction{
        padding:0px 50px 0 100px;
    }

    .bg-blur{
        width: 500px;
        height: 300px;
        background: #111;
        opacity: 0.5;
        filter: blur(15px);
    }
    .text{
        position: absolute;
        top: 0;
        color: #65cea7;
        padding-left:10px;;
    }
    .text small{
        color: #65cea7;
    }
    .text h1{
        font-size: 50px;
        color: #22e69d;
    }


    .text h3 i{
        padding-right: 15px;
    }
    .login-box{
        background:#f1f1f1;
        margin-top: 40px;
        padding: 20px;
        border-radius: 10px;
        width: 383px;
    }

    .input-group{
        padding: 5px;
        height: 50px;
        width: 100%;
    }
    .input-group span{
        width: 40px;
        font-size: 18px;
        color:#65cea7;
    }
    .input-group input{
        height: 100%;

    }
    .verify-box{
        width: 100%;
        height: 50px;
    }
    .verify-box .input-group{
        float: left;
        width: 70%;
    }

    .verify-box .img-box{
        float: right;
        width: 30%;
        height: 40px;
        padding: 5px 5px 0 0;
    }
    .tool-box{
        margin-top: 14px;
    }

    .btn{
        font-size: 16px;
        letter-spacing: 0.25em;
    }

    #sign-in{
        background: #008e59;
        color: #fff;
        font-size: 16px;
        letter-spacing: 0.25em;
    }
    #sign-in:hover{
        background: #006b43;
    }

    #sign-up{
        border-color: #008e59;
        color: #008e59;
    }


</style>

<body>
<div class="container-fluid">
    <div class="raw">
        <div class="col-md-7 introduction">
            <div class="bg-blur"></div>
            <div class="text">
                <h1>远航教育<small>智能的企业级学平台</small></h1>
                <h3><i class=" icon-lightbulb"></i>智能的课程推荐</h3>
                <h3><i class="icon-lock"></i>安全的权限管理</h3>
                <h3><i class=" icon-pencil"></i>便捷的学习工具</h3>
            </div>
        </div>
        <div class="col-md-4 login-box">
            <form>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon-user"></i></span>
                    <input type="text" class="form-control"  name="id" placeholder="请输入用户编号..." value="2017010001" />
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon-lock"></i></span>
                    <input type="password" class="form-control" id="password-input" name="password" placeholder="请输入密码..." value="1234567" />
                </div>

                <div class="verify-box">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="icon-key"></i></span>
                        <input type="text" class="form-control" id="verify-input" name="verify" placeholder="请输入验证码...">
                    </div>
                    <div class="img-box"><img class="img-responsive" src="${basePath}/kaptchaImg" onclick="this.src=basePath+'/kaptchaImg?d='+new Date().getTime();"> </div>
                </div>

                <div class="text-center tool-box">
                    <a class="btn btn-default col-md-3 col-md-offset-2" id="sign-in">登录</a>
                    <a class="btn btn-default col-md-3 col-md-offset-1" id="sign-up" href="https://www.baidu.com/">注册</a>
                </div>

            </form>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
    $("#sign-in").click(function(){
        var id=$("input[name='id']").val();
        var password=$("input[name='password']").val();
        var verify=$("input[name='verify']").val();

        password=MD5(password);
        var params={
            id:id,
            password:password,
            verify:verify
        };


        $.ajax({
            type:"post",
            url:basePath+"/login",
            data:params,
            success:function(data){
                if(data!="success")
                    alert(data);
                else
                    window.location.href="/user/userCenter";
            }
        });

    });
</script>
</html>