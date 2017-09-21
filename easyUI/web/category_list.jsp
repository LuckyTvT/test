<%--
  Created by IntelliJ IDEA.
  User: Karlo
  Date: 2017/7/12
  Time: 15:55
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
            $("#dg").datagrid({
                url:"${pageContext.request.contextPath}/category?todo=searchCategory",
                columns:[[
                    {field:'code',title:'111',width:100},
                    {field:'name',title:'222',width:100},
                    {field:'price',title:'333',width:100,align:'right'}
                ]]
            })
        })
    </script>
</head>
<body>
    <talbe class="easyui-datagrid" id="dg">

    </talbe>
    商品列表页面
</body>
</html>
