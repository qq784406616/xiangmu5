<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-09-16
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />

    <!--导入css-->
    <link rel="stylesheet" href="css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet"  href="css1/bootstrap.min.css" />
    <link rel="stylesheet"  href="css/bootstrapValidator.css" />
    <!--导入js-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/npm.js"></script>
    <script src="js/bootstrapValidator.js"></script>

    <title>天天租车登录界面</title>

    <style type="text/css">
        html,body {
            height: 100%;
        }
        .box {
            filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
            background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
            background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
            background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
            background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
            background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

            margin: 0 auto;
            position: relative;
            width: 100%;
            height: 100%;
        }
        .login-box {
            width: 100%;
            max-width:500px;
            height: 400px;
            position: absolute;
            top: 50%;

            margin-top: -200px;
            /*设置负值，为要定位子盒子的一半高度*/

        }
        @media screen and (min-width:520px){
            .login-box {
                left: 50%;
                /*设置负值，为要定位子盒子的一半宽度*/
                margin-left: -250px;
            }
        }

        .form {
            width: 100%;
            max-width:520px;
            height: 275px;
            margin: 25px auto 0px auto;
            padding-top: 25px;
        }
        .login-content {
            height: 310px;
            width: 100%;
            max-width:520px;
            background-color: rgba(255, 250, 2550, .6);
            float: left;
        }


        .input-group {
            margin: 0px 0px 30px 0px !important;
        }
        .form-control,
        .input-group {
            height: 40px;
        }

        .form-group {
            margin-bottom: 0px !important;
        }
        .login-title {
            padding: 20px 10px;
            background-color: rgba(0, 0, 0, .6);
        }
        .login-title h1 {
            margin-top: 10px !important;
        }
        .login-title small {
            color: #fff;
        }

        .link p {
            line-height: 20px;
            margin-top: 16px;
        }
        .btn-sm {
            padding: 8px 24px !important;
            font-size: 16px !important;
        }
    </style>

</head>
<body>
<div class="box">
    <div class="login-box">
        <div class="login-title text-center">
            <h1><small>登录</small></h1>
        </div>
        <div class="login-content ">
            <div class="form">
                <!--表单form-->
               <form id="login_form"  method="post"  >
                    <div class="form-group has-feedback">
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="text" id="uname" name="uname" class="form-control" placeholder="用户名">
                            </div>
                        </div>
                    </div>
                    <div class="form-group has-feedback" >
                        <div class="col-xs-12  ">
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" id="password" name="password" class="form-control" placeholder="密码">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-6 link">
                            <div class="checkbox icheck"></div>
                            <label>
                                <input type="checkbox" name="rememberMe" id="checkbox">
                                记住用户
                            </label>
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-4 col-xs-offset-4">
                            <button type="button" id="btn"  class="btn btn-sm btn-info" onclick="login()"><span class="glyphicon glyphicon-off"></span> 登录</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-6 link">
                            <p class="text-center remove-margin"><small>忘记密码？</small> <a href="javascript:void(0)" ><small>找回</small></a>
                            </p>
                        </div>
                        <div class="col-xs-6 link">
                            <p class="text-center remove-margin"><small>还没注册?</small> <a href="javascript:void(0)" onclick="register()"><small>注册</small></a>
                            </p>
                        </div>
                    </div>
               </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    function register() {
        //跳转到注册界面register.jsp进行注册
         window.open("register.jsp", "_blank");
   }

   function login() {
    //登录逻辑
    if(checkb.checked){
        localStorage.setItem('user',user.value);
        localStorage.setItem('pass',pass.value);
    }else{
        localStorage.setItem('user','');
        localStorage.setItem('pass','');
    }
          //登录逻辑
           //jQuery写法
           var uname = $('#uname').val();
           var password = $('#password').val();
    $.ajax({
          type: "post",  //post put get 等等
          dataType:"text",
          url:"login.do",
          //编写登录功能时，要将异步设置为false（缺省为true）
         async:false,
            data: {  //要传入ashx文件的数据
                 "uname": uname,
                 "password":password
             },
            success: function (data) {

             if(data=="登录成功"){
                 alert(data);
                //跳转主页
                window.location="zhujiemian.jsp";
            }else {
                 alert("账号或密码错误!");
             }
               }
               });
    }



    // 记住密码
    var user = document.getElementById('uname');
    pass = document.getElementById('password');
    checkb = document.getElementById('checkbox');
    localUser = localStorage.getItem('user') || '';//获取user的值并保存
    localPass = localStorage.getItem('pass') || '';//获取password的值并保存
    user.value = localUser;
    pass.value = localPass;
    if(localUser !== '' && localPass !== ''){
        checkb.setAttribute('checked','');
    }
</script>


</body>
</html>
