<%--
  Created by IntelliJ IDEA.
  User: Karlo
  Date: 2017/7/1
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body>
    <h2>Basic Window</h2>
    <p>Window can be dragged freely on screen.</p>
    <div style="margin:20px 0;">
        <%--href="javascript:void(0)/;" 阻止页面跳转动作--%>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#w').window('open')">Open</a>
        <a href="javascript:;" class="easyui-linkbutton" onclick="$('#w').window('close')">Close</a>
    </div>
    <div id="w" class="easyui-window" title="Basic Window" data-options="iconCls:'icon-save',width:500,height:200,closed:true" >
        The window content.
    </div>
    <div id="dl" class="easyui-accordion" data-options="width:500,height:200">
        <div title="t1">1111</div>
        <div title="t2">2222</div>
        <div title="t3">3333</div>
    </div>
    <div id="cc" class="easyui-layout" data-options="fit:true">
        <div data-options="region:'north',title:'北',split:true" style="height:150px;padding:30px;text-align:center">
            <font style="font-size: 25px">X X X 后 台 管 理 系 统</font>
        </div>
        <div data-options="region:'west',title:'西',split:true" style="width:300px;">
            <!-- 折叠窗 -->
            <div id="dl" class="easyui-accordion" data-options="fit:true,border:1">
                <div title="java" style="padding:40px;">
                    <a href="#" style="font-size:30px" onclick="add()">查看商品信息</a>
                </div>
                <div title="UI">2222</div>
                <div title="C++">3333</div>
            </div>
        </div>
        <div data-options="region:'center'" >
            <!-- 选项卡 -->
            <div id="tabs" class="easyui-tabs" data-options="fit:true,border:0">
                <div title="欢迎页面">欢迎您登陆后台管理系统</div>
            </div>
        </div>
    </div>


    <%--<script>--%>
        <%--function add()--%>
        <%--{--%>
            <%--//先判断有没有tab4(方法)--%>
            <%--var flg=$("#tabs").tabs("exists","商品列表");--%>
            <%--if(flg)--%>
            <%--{--%>
                <%--//有:跳到tab4(方法)--%>
                <%--$("#tabs").tabs("select","商品列表");--%>
            <%--}else--%>
            <%--{--%>
                <%--//没有:创建(方法)--%>
                <%--$("#tabs").tabs("add",--%>
                    <%--{--%>
                        <%--title:"商品列表",--%>
                        <%--closable:true,--%>
                        <%--href:"list.jsp"--%>
                    <%--})--%>
            <%--}--%>
        <%--}--%>
    <%--</script>--%>
</body>
</html>
