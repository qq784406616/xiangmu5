<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-09-16
  Time: 16:55
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
    <link rel="stylesheet" type="text/css" href="css1/bootstrap.min.css" />
    <link rel="stylesheet"  href="css/bootstrapValidator.css" />
    <!--导入js-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/npm.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <title>天天租车注册界面</title>
    <style type="text/css">
        form{
            width:480px;
        }

    </style>
</head>
<body>
<!-- 注册表单 -->
<form id="register_from" style="margin-left:500px;margin-top:60px;" role="form">
    <div class="form-group col-md-6" >
        <label for="uname" stype="display:inline;" class="control-label "  >账户：</label>
        <input type="text" name="uname" class="form-control" id="uname" style="display:inline;width:200px;" autocomplete="off" autofocus />
    </div>
    <div class="form-group col-md-6">
        <label for="password" style="display:inline;"  class="control-label ">密码：</label>
        <input type="text" name="password" class="form-control" id="password" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="ename" style="display:inline;">姓名：</label>
        <input type="text" name="ename" class="form-control" id="ename" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="head" style="display:inline;">头像：</label>
        <input type="text" name="head" class="form-control" id="head" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="sex" style="display:inline;">性别：</label>
        <input type="text" name="sex" class="form-control" id="sex" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="brithday" style="display:inline;">出生日期：</label>
        <input type="text" name="brithday" class="form-control" id="brithday" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="adress" style="display:inline;">住址：</label>
        <input type="text" name="adress" class="form-control" id="adress" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="tel" style="display:inline;">电话：</label>
        <input type="text" name="tel" class="form-control" id="tel" style="display:inline;width:200px;" autocomplete="off" />
    </div>

    <div class="form-group col-md-6">
        <label for="email" style="display:inline;">邮箱：</label>
        <input type="text" name="email" class="form-control" id="email" style="display:inline;width:200px;" autocomplete="off" />
    </div>
    <div class="form-group col-md-6">
    <button type="submit" class="btn btn-primary" onclick="register()">确认注册</button>
    </div>
</form>

<script>
    $(function () {
    $("#register_from").bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            uname: {
                message: '用户名验证失败',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 18,
                        message: '用户名长度必须在6到18位之间'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: '用户名只能包含大写、小写、数字和下划线'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空'
                    },
                    emailAddress: {
                        message: '邮箱地址格式有误'
                    }
                }
            },
            ename: {
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    }
                }
            },
            password: {
                message: '密码验证失败',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    }
                }
            }
        }
    });
    });
    function register() {
        //提交验证
        $("#register_from").bootstrapValidator('validate');
        //获取验证结果，如果成功，执行下面代码
        if ($("#register_from").data('bootstrapValidator').isValid()) {
            alert("yes");//验证成功后的操作，如ajax


        var uname=$('#uname').val();
        var password=$('#password').val();
        var ename=$('#ename').val();
        var head=$('#head').val();
        var sex=$('#sex').val();
        var brithday=$('#brithday').val();
        var adress=$('#adress').val();
        var tel=$('#tel').val();
        var email=$('#email').val();

        $.ajax({
            type: "post",  //post put get 等等
            dataType:"text",
            url:"register.do",
            //编写登录功能时，要将异步设置为false（缺省为true）
            async:false,
            data: {  //要传入ashx文件的数据
                "uname": uname,
                "password":password,
                "ename":ename,
                "head":head,
                "sex":sex,
                "brithday":brithday,
                "adress":adress,
                "tel":tel,
                "email":email
            },
            success: function (data) {

                if(data=="注册成功"){
                    alert(data);
                    //跳转主页
                    window.location="login.jsp";
                }else {
                    alert("注册失败!");
                }
            }
        });
        }
    }
</script>

</body>
</html>
