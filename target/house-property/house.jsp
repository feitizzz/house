<%--
  Created by IntelliJ IDEA.
  User: Tizzzjion
  Date: 2020/8/7
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>管理系统</title>

    <link rel="stylesheet" href="layui/css/layui.css">
    <script src="layui/layui.js"></script>
    <script src="js/jquery-1.8.3.js"></script>
</head>
<body>
<h1 style="text-align: center;margin-top: 50px">房产信息查询系统</h1>

<p style="margin-top: 30px">用户名：<span>${user.username}--</span><a href="login.html"> __退出</a></p>

<form class="layui-form" id="searchForm" style="margin-top: 20px">
    <div class="layui-form-item">
        <label class="layui-form-label">查询类型：</label>
        <div class="layui-input-inline" style="float: left">
            <select name="searchType">
                <option value="username" selected="">用户名</option>
                <option value="num">身份证号</option>
            </select>
        </div>
        <div class="layui-inline" style="float: left">
            <div class="layui-input-inline">
                <input type="text" name="title" id="title" class="layui-input" placeholder="请输入查询内容">
            </div>
        </div>
        <div class="layui-input-block" style="float: left">
            <button type="button" class="layui-btn" lay-filter="demo1" onclick="searchBtn()">查询</button>
        </div>
    </div>
</form>

<script>
    layui.use('table',window.searchBtn=function (){
        var all=$("#searchForm").serialize();
        var table = layui.table;
        table.render({
            elem: '#test'
            ,url:'/house/findAll?'+all
            ,title: '数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'序号',fixed: 'left', width:80}
                ,{field:'name', title:'项目名称', width:120}
                ,{field:'person', title:'产权人', width:80}
                ,{field:'numId', title:'身份证号', width:180}
                ,{field:'type', title:'房屋类型', width:110}
                ,{field:'area', title:'面积', width:80}
                ,{field:'time', title:'建造时间',templet:"<div>{{layui.util.toDateString(d.create_time, 'yyyy-MM-dd HH:mm:ss')}}</div> "}
                // ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
            ]]
            ,page: true
        });
    });
</script>

<table class="layui-hide" id="test" lay-filter="test" style="float: none"></table>


<%--<script type="text/html" id="barDemo">--%>
<%--    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>--%>
<%--    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>--%>
<%--</script>--%>


<%--<script src="layui/layui.js" charset="utf-8"></script>--%>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<%--<script>--%>
<%--    layui.use('table', function(){--%>
<%--        var table = layui.table;--%>

<%--        table.render({--%>
<%--            elem: '#test'--%>
<%--            ,url:'house/findAll'--%>
<%--            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板--%>
<%--            ,title: '用户数据表'--%>
<%--            ,cols: [[--%>
<%--                {type: 'checkbox', fixed: 'left'}--%>
<%--                ,{field:'id', title:'序号',fixed: 'left', width:80}--%>
<%--                ,{field:'name', title:'项目名称', width:120}--%>
<%--                ,{field:'person', title:'产权人', width:80}--%>
<%--                ,{field:'numId', title:'身份证号', width:180}--%>
<%--                ,{field:'type', title:'房屋类型', width:110}--%>
<%--                ,{field:'area', title:'面积', width:80}--%>
<%--                // ,{field:'time', title:'建造时间',templet:"<div>{{layui.util.toDateString(d.create_time, 'yyyy-MM-dd HH:mm:ss')}}</div> "}--%>
<%--                // ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}--%>
<%--            ]]--%>
<%--            ,page: true--%>
<%--        });--%>

<%--        //头工具栏事件--%>
<%--        table.on('toolbar(test)', function(obj){--%>
<%--            var checkStatus = table.checkStatus(obj.config.id);--%>
<%--            switch(obj.event){--%>
<%--                case 'getCheckData':--%>
<%--                    var data = checkStatus.data;--%>
<%--                    layer.alert(JSON.stringify(data));--%>
<%--                    break;--%>
<%--                case 'getCheckLength':--%>
<%--                    var data = checkStatus.data;--%>
<%--                    layer.msg('选中了：'+ data.length + ' 个');--%>
<%--                    break;--%>
<%--                case 'isAll':--%>
<%--                    layer.msg(checkStatus.isAll ? '全选': '未全选');--%>
<%--                    break;--%>

<%--                //自定义头工具栏右侧图标 - 提示--%>
<%--                case 'LAYTABLE_TIPS':--%>
<%--                    layer.alert('这是工具栏右侧自定义的一个图标按钮');--%>
<%--                    break;--%>
<%--            };--%>
<%--        });--%>

<%--        // //监听行工具事件--%>
<%--        // table.on('tool(test)', function(obj){--%>
<%--        //     var data = obj.data;--%>
<%--        //     //console.log(obj)--%>
<%--        //     if(obj.event === 'del'){--%>
<%--        //         layer.confirm('真的删除行么', function(index){--%>
<%--        //             obj.del();--%>
<%--        //             layer.close(index);--%>
<%--        //         });--%>
<%--        //     } else if(obj.event === 'edit'){--%>
<%--        //         layer.prompt({--%>
<%--        //             formType: 2--%>
<%--        //             ,value: data.email--%>
<%--        //         }, function(value, index){--%>
<%--        //             obj.update({--%>
<%--        //                 email: value--%>
<%--        //             });--%>
<%--        //             layer.close(index);--%>
<%--        //         });--%>
<%--        //     }--%>
<%--        // });--%>
<%--    });--%>
<%--</script>--%>

</body>
</html>
