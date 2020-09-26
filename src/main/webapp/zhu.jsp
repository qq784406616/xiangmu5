<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020-09-22
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0" />
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/config.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrapstyle.css" type="text/css">
    <title>天天租车</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modal.js"></script>
    <script type="text/javascript" src="js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="js/jquery.ztree.excheck.js"></script>
</head>
<body>
   <%-- nav导航--%>
   <nav class="navbar navbar-inverse bdr-n z-ind">
       <div class="container-fluid">

           <div class="navbar-header">
               <a class="navbar-brand" href="#">后台管理平台</a>
           </div>

           <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav navbar-right">
                   <li class="dropdown">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown"  >admin
                           <span class="caret"></span></a>
                       <ul class="dropdown-menu">
                           <li><a href="#">设置</a></li>
                           <li><a href="#">个人中心</a></li>
                           <li onclick="logout()"><a href="#">退出</a></li>
                       </ul>
                   </li>
               </ul>
           </div>
       </div>
   </nav>

   <!-- 页面主体 -->
   <div class="dh mainbox">
       <!-- 左边菜单 -->
       <div class="navleft leftnav-bgc">
           <dl class="list_dl">
               <dt class="list_dt">
                   <span class="_after"></span>
                   <p>基础菜单</p>
                   <i class="list_dt_icon"></i>
               </dt>
               <dd class="list_dd">
                   <ul>
                       <li class="list_li">
                           <a class="list_a" href="zhu.jsp">菜单管理</a>
                       </li>
                       <li class="list_li">
                           <a class="list_a" href="zhu.jsp">增加编辑</a>
                       </li>
                       <li class="list_li">
                           <a class="list_a" href="zhu.jsp">角色管理</a>
                       </li>
                   </ul>
               </dd>
               
               <dt class="list_dt">
                   <span class="_after"></span>
                   <p>租车管理</p>
                   <i class="list_dt_icon"></i>
               </dt>
               <dd class="list_dd">
                   <ul>
                       <li class="list_li">租车</li>
                       <li class="list_li">收回</li>
                   </ul>
               </dd>
               <dt class="list_dt">
                   <span class="_after"></span>
                   <p>收费管理</p>
                   <i class="list_dt_icon"></i>
               </dt>
               <dd class="list_dd">
                   <ul>
                       <li class="list_li">查看详情</li>
                   </ul>
               </dd>
               <dt class="list_dt">
                   <span class="_after"></span>
                   <p>财务管理</p>
                   <i class="list_dt_icon"></i>
               </dt>
               <dd class="list_dd">
                   <ul>
                       <li class="list_li">查看财务</li>
                   </ul>
               </dd>
           </dl>
       </div>
       <!-- 右边主显示部分 -->
       <div class="main-rightbox">
           <div class="mainrightbox">
               <!-- 路径导航 -->
               <ol class="breadcrumb">
                   <li><a href="index.html">首页</a></li>
                   <li class="active">基础管理</li>
                   <li class="active">角色管理</li>
               </ol>
               <!-- 显示表格 -->
               <div class="main_box">
                   <blockquote>
                       <h4>菜单管理</h4>
                   </blockquote>
                   <div class="rows" style="height:100%;">
                       <div class="col-xs-3 " style="min-height:700px;border:1px solid #ddd;">
                           <ul id="fileTree" class="ztree"></ul>
                       </div>
                       <button type="button" class="btn btn-primary adduser" onclick="addfun()">添加</button>

                   </div>
                       </div>
                   </div>

               </div>

           </div>
       </div>
   </div>
   </div>

<script>
    function addfun(){
        window.location.href="login.jsp";
    }

    /**
     *  此方法为切换左边菜单的js文件
     */
    $(".list_dt").on("click", function() {
        $('.list_dd').stop();
        $(this).siblings("dt").removeAttr("id");
        if ($(this).attr("id") == "open") {
            $(this).removeAttr("id").siblings("dd").slideUp();
        } else {
            $(this).attr("id", "open").next().slideDown().siblings("dd").slideUp();
        }
    });

    /**
     * 树形插件方法
     *
     */
    var setting = {
        view: {
            selectedMulti: false
        },
        check: {
            enable: true
        },
        data: {
            simpleData: {
                enable: true
            }
        },
        edit: {
            enable: true
        }
    };

    var zNodes = [{
        id: 1,
        pId: 0,
        name: "基础管理",
        open: false
    }, {
        id: 101,
        pId: 1,
        name: "菜单管理"
    }, {
        id: 102,
        pId: 1,
        name: "用户列表"
    }, {
        id: 103,
        pId: 1,
        name: "角色管理"
    }, {
        id: 104,
        pId: 1,
        name: "权限管理"
    }, {
        id: 108,
        pId: 1,
        name: "公司管理"
    }, {
        id: 109,
        pId: 1,
        name: "测试菜单"
    }, {
        id: 110,
        pId: 1,
        name: "角色菜单"
    },

        {
            id: 2,
            pId: 0,
            name: "售货机管理",
            open: false
        }, {
            id: 201,
            pId: 2,
            name: "机器群组列表"
        }, {
            id: 206,
            pId: 2,
            name: "机器列表"
        },

        {
            id: 3,
            pId: 0,
            name: "群组管理",
            open: false
        }, {
            id: 301,
            pId: 3,
            name: "广告群组列表"
        },

        {
            id: 4,
            pId: 0,
            name: "会员管理",
            open: false
        }, {
            id: 401,
            pId: 4,
            name: "会员管理"
        }, {
            id: 402,
            pId: 4,
            name: "会员卡管理"
        }, {
            id: 403,
            pId: 4,
            name: "会员充值管理"
        }, {
            id: 404,
            pId: 5,
            name: "余额退款申请"
        },

        {
            id: 5,
            pId: 0,
            name: "活动商券管理",
            open: false
        }, {
            id: 501,
            pId: 5,
            name: "折扣活动管理"
        }, {
            id: 502,
            pId: 5,
            name: "立减活动管理"
        }, {
            id: 503,
            pId: 5,
            name: "代金券列表"
        }, {
            id: 504,
            pId: 5,
            name: "折扣券列表"
        }, {
            id: 505,
            pId: 5,
            name: "兑换券列表"
        }, {
            id: 506,
            pId: 5,
            name: "会员礼物管理"
        }, {
            id: 507,
            pId: 5,
            name: "活动机器管理"
        },

        {
            id: 6,
            pId: 0,
            name: "交易管理",
            open: false
        }, {
            id: 601,
            pId: 6,
            name: "订单列表"
        }
    ];

    $(document).ready(function() {
        $.fn.zTree.init($("#fileTree"), setting, zNodes);
    });
    /**
     * ====================================
     * 获取选中的节点
     * 参考文档  http://www.treejs.cn/v3/api.php
     * ====================================
     */
    function getdata(e, treeId, treeNode) {
        var treeObj = $.fn.zTree.getZTreeObj("fileTree"),
            nodes = treeObj.getCheckedNodes(true),
            v = "";
        for (var i = 0; i < nodes.length; i++) {
            v += nodes[i].name + ",";
            alert("ID:" + nodes[i].id + "name:" + nodes[i].name); //获取选中节点的值
        }
    }
</script>
</body>
</html>
