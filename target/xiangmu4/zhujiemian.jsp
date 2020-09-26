<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-09-17
  Time: 10:31
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
    <link rel="stylesheet"  href="css/bootstrap-table.css" />
    <!--导入js-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/npm.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script src="js/bootstrap-table.js" ></script>
    <script src="js/bootstrap-table-zh-CN.js" ></script>
    <title>用户界面</title>

</head>
<body>
<div>
    <div>

        <div class="panel panel-danger">
            <div class="panel-heading">
               查询条件
            </div>
            <div class="panel-body">
                <div class="input-group">
                <span class="input-group-addon">用户名</span>
                <input type="text" class="form-control" name="ename" id="enames"  placeholder="请输入用户名"/>
                <div class="input-group-btn">
                    <button id="serach" class="btn btn-primary">查询</button>
                </div>
                </div>
            </div>

        </div>

        <div class="panel panel-warning">

            <div class="panel-body">
                <div class="col-*-12">

                    <div id="toolbar">
                        <div class="btn btn-primary" data-toggle="modal" data-target="#addModal">添加记录</div>
                    </div>

                    <table id="mytab" class="table table-hover"></table>

                    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">添加记录</h4>
                                </div>
                                <div class="modal-body">
                                    <form role="form" action="javascript:void(0)">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="uname" placeholder="请输入账号">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="password" placeholder="请输入密码">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="ename" placeholder="请输入姓名">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="head" placeholder="请输入头像">
                                        </div>
                                        <div class="form-group">
                                            <input type="radio"  value="男" name="sexs"  checked/>男
                                            <input type="radio"  value="女" name="sexs"  />女
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="brithday" placeholder="请输入出生日期">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="adress" placeholder="请输入地址">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tel" placeholder="请输入电话">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="email" placeholder="请输入邮箱">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    <button type="button" class="btn btn-primary" id="addRecord">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="updModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel1">修改记录</h4>
                                </div>
                                <div class="modal-body">
                                    <form role="form" action="javascript:void(0)">
                                        <input type="hidden" class="form-control" id="id">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="uname1" placeholder="请输入账号">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="password1" placeholder="请输入密码">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="ename1" placeholder="请输入姓名">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="head1" placeholder="请输入头像">
                                        </div>
                                        <div class="form-group">
                                                <input type="radio"  value="男" name="sex"  checked/>男
                                                <input type="radio"  value="女" name="sex"  />女
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="brithday1" placeholder="请输入出生日期">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="adress1" placeholder="请输入地址">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="tel1" placeholder="请输入电话">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="email1" placeholder="请输入邮箱">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    <button type="button" class="btn btn-primary" id="updRecord">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            </div>

        </div>
</div>
<script>
    $(function() {
        //根据窗口调整表格高度
        $(window).resize(function() {
            $('#mytab').bootstrapTable('resetView', {
                height: tableHeight()
            })
        })
        $('#mytab').bootstrapTable({
            url: "selectqueryallcount.do",//数据源
            striped: true,
            dataField: "rows",//服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total
            height: tableHeight(),//高度调整
            strictSearch: true,
            search: false,//是否搜索
            pagination: true,//是否分页
            pageSize: 3,//单页记录数
            pageList: [5, 10, 20, 50],//分页步进值
            sidePagination: "server",//服务端分页
            contentType: "application/x-www-form-urlencoded",//请求数据内容格式 默认是 application/json 自己根据格式自行服务端处理
            dataType: "json",//期待返回数据类型
            method: "post",//请求方式
            searchAlign: "left",//查询框对齐方式
            queryParams: function getParams(params) {
                var ename = $('#enames').val();
                return {
                    page: (params.offset / params.limit) + 1,
                    rows: params.limit,
                    ename:ename
                };
            },
            searchOnEnterKey: false,//回车搜索
            showRefresh: true,//刷新按钮
            buttonsAlign: "left",//按钮对齐方式
            toolbar: "#toolbar",//指定工具栏
            toolbarAlign: "right",//工具栏对齐方式
            columns: [
                {
                    title: "全选",
                    field: "select",
                    checkbox: true,
                    width: 20,//宽度
                    align: "center",//水平
                    valign: "middle"//垂直
                },
                {
                    title: 'ID',
                    field: 'id',
                    align: 'center',
                    valign: 'middle',
                },
                {
                    title: '姓名',
                    field: 'ename',
                    align: 'center',
                    valign: 'middle',
                },
                {
                    title: '用户名',
                    field: 'uname',
                    align: 'center'
                },
                {
                    title: '密码',
                    field: 'password',
                    align: 'center',
                },
                {
                    title: '头像',
                    field: 'head',
                    align: 'center',
                },
                {
                    title: '性别',
                    field: 'sex',
                    align: 'center',
                },
                {
                    title: '生日',
                    field: 'brithday',
                    align: 'center',
                },
                {
                    title: '地址',
                    field: 'adress',
                    align: 'center',
                },
                {
                    title: '电话',
                    field: 'tel',
                    align: 'center',
                },
                {
                    title: '邮箱',
                    field: 'email',
                    align: 'center',
                },
                {
                    title: '操作',
                    field: 'id',
                    align: 'center',
                    formatter:function(value,row,index){
                        var e = '<a href="#" mce_href="#" data-toggle="modal" data-target="#updModal" onclick="edit(\''+ row.id + '\')">编辑</a> ';
                        var d = '<a href="#" mce_href="#" onclick="del(\''+ row.id +'\')">删除</a> ';
                        return e+d;
                    }
                }
            ],

        });

    })
    //添加
    $("#addRecord").click(function(){
        var uname=$('#uname').val();
        var password=$('#password').val();
        var ename=$('#ename').val();
        var head=$('#head').val();
       var sex= $("input[name='sexs']:checked").val();
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
                    alert("添加成功!");
                    $("#addModal").modal("hide");
                    $('#mytab').bootstrapTable('refresh');
                }else {
                    alert("添加失败!");
                }
            }
        });
    });
    //编辑
    $("#updRecord").click(function(){
        var id=$('#id').val();
        var uname=$('#uname1').val();
        var password=$('#password1').val();
        var ename=$('#ename1').val();
        var head=$('#head1').val();
        var sex= $("input[name='sex']:checked").val();

        var brithday=$('#brithday1').val();
        var adress=$('#adress1').val();
        var tel=$('#tel1').val();
        var email=$('#email1').val();

        $.ajax({
            type: "post",  //post put get 等等
            dataType:"text",
            url:"updateEmployee.do",
            //编写登录功能时，要将异步设置为false（缺省为true）
            async:false,
            data: {  //要传入ashx文件的数据
                "id":id,
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

                if(data=="修改成功"){
                    alert(data);

                    $("#updModal").modal("hide");
                    $('#mytab').bootstrapTable('refresh');
                }else {
                    alert("修改失败!");
                }
            }
        });

    });


    function tableHeight() {
        return $(window).height() - 150;
    }

    function edit(did) {
        alert("这是编辑"+did)
        $.get("queryByid.do",{uid:did},function (data) {
            $("#id").val(data.msg.id);
            $("#ename1").val(data.msg.ename);
            $("#uname1").val(data.msg.uname);
            $("#password1").val(data.msg.password);
            $("#head1").val(data.msg.head);
            $("#brithday1").val(data.msg.brithday);
            $("#adress1").val(data.msg.adress);
            $("#tel1").val(data.msg.tel);
            $("#email1").val(data.msg.email);
            var ss = data.msg.sex;
            $("input[type='radio'][value="+ss+"]").prop("checked","checked");
        },"json");

    }

    function del(did) {
        var bool=confirm("确定要删除吗？");
        if(bool==true){
            $.ajax({
                type: "post",  //post put get 等等
                dataType:"text",
                url:"delemployee.do",
                //编写登录功能时，要将异步设置为false（缺省为true）
                async:false,
                data: {  //要传入ashx文件的数据
                    "uid": did,
                },
                success: function (data) {
                    if(data=="删除成功"){
                        alert(data);
                        //跳转主页

                        $('#mytab').bootstrapTable('refresh');
                    }else {
                        alert("删除失败!");
                    }
                }
            });
        }
    }

    //查询
    $("#serach").click(function () {
        $('#mytab').bootstrapTable('refresh');
    })

</script>

</body>
</html>
