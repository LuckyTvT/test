<%--
  Created by IntelliJ IDEA.
  User: Karlo
  Date: 2017/7/1
  Time: 16:53
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
    <script>
        $(function () {
            $("#show").click(function () {
                var trigger = $("#tabs").tabs("exists","新的标题");
                if(trigger){
                    $("#tabs").tabs("select","新的标题");
                    $.messager.show({
                        title:'通知',
                        msg:'你已经创建了同名标签了',
                        timeout:3000,
                        showType:'slide'
                    })

                }else{
                    $("#tabs").tabs("add", {
                        title: "新的标题",
//                      content: '新建的便签内容',
                        closable: true,
                        href:"list.jsp",
                        iconCls: 'icon-man'
                    })
                }
            })
        })
    </script>
</head>
<body class="easyui-layout">

    <div data-options="region:'north',split:true,height:150" style="text-align: center;width:300px">

            <img style="position:absolute;left:0px;top:0px;width:100%;height:100%;z-Index:1;" src="http://i0.hdslb.com/bfs/archive/91f48aa285d511bc68ac314d35fc2a3134137a32.png@.webp" />
            <font style="position:relative;z-Index:2;font-size: 30px">图片盗自bilibili</font>

    </div>
    <div data-options="region:'west',split:true,height:150" style="width:300px;">
        <div class="easyui-accordion" data-options="fit:true,border:1">
            <div title="111"><a href="javascript:;" id="show">这是个神奇的超链接</a></div>
            <div title="111">显示2</div>
            <div title="111">显示3</div>
        </div>
    </div>
    <div data-options="region:'center'" >
        <div class="easyui-tabs" data-options="fit:true" id="tabs">
            <div title="这是第一个标签"></div>
        </div>
    </div>

    <%--<div id="dd" class="easyui-layout" data-options="fit:true">--%>
        <%--<div data-options="region:'north',title:'北',split:true" style="height:150px;padding:30px;text-align:center">--%>
            <%--<font style="font-size: 25px">X X X 后 台 管 理 系 统</font>--%>
        <%--</div>--%>
        <%--<div data-options="region:'west',title:'西',split:true" style="width:300px;">--%>
            <%--<!-- 折叠窗 -->--%>
            <%--<div id="dl" class="easyui-accordion" data-options="fit:true,border:1">--%>
                <%--<div title="java" style="padding:40px;">--%>
                    <%--<a href="#" style="font-size:30px" onclick="add()">查看商品信息</a>--%>
                <%--</div>--%>
                <%--<div title="UI">2222</div>--%>
                <%--<div title="C++">3333</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div data-options="region:'center'" >--%>
            <%--<!-- 选项卡 -->--%>
            <%--<div id="tabs" class="easyui-tabs" data-options="fit:true,border:0">--%>
                <%--<div title="欢迎页面">欢迎您登陆后台管理系统</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
</body>
</html>
