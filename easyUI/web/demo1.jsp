<%--
  Created by IntelliJ IDEA.
  User: Karlo
  Date: 2017/7/12
  Time: 9:32
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

//          点击触发事件，如果标签已打开，则选中，若未打开，则创建新标签
            $("#addTab").click(function () {
                var trigger = $("#tabs").tabs("exists","商品分类信息");
                if(trigger){
                    $("#tabs").tabs("select","商品分类信息");
                }else{
                    $("#tabs").tabs('add',{
                        title: '商品分类信息',
                        closable:true,
//                      直接引入写好的页面
                        href:"category_list.jsp"

                    });
                }

            })
        })

    </script>
</head>
<body>
<div id="cc" class="easyui-layout" data-options="fit:true" style="width:600px;height:400px;">
    <div data-options="region:'north',split:true" style="height:200px;text-align: center;padding-top: 50px" >
        <font style="font-size: 45px">商城后台首页</font>
    </div>
    <div data-options="region:'west',split:true" style="width:300px;border:0px">
        <div id="aa" class="easyui-accordion" data-options="fit:true" style="width:300px;height:200px;border:0px">
            <div title="Title1">
                <ul id="category_tree" class="easyui-tree">
                    <li>
                        <span>商品分类管理</span>
                        <ul>
                            <li>
                                <span ><a href="javascript:;" id="addTab"> 商品分类列表</a></span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>商品信息管理</span>
                        <ul>
                            <li>
                                <span>商品信息列表</span>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div title="Title2">
                content2
            </div>
            <div title="Title3">
                content3
            </div>
        </div>

    </div>

    <div data-options="region:'center',fit:true" style="background:#eee;">

        <div id="tabs" class="easyui-tabs"  data-options="fit:true" style="width:500px;height:250px;">
            <div title="Tab1" id="dg" style="padding:5px;" data-options="fit:true">
                <table class="easyui-datagrid"  >
                    <thead>
                    <tr>
                        <th data-options="field:'code'">编码</th>
                        <th data-options="field:'name'">名称</th>
                        <th data-options="field:'price'">价格</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>001</td><td>name1</td><td>2323</td>
                    </tr>
                    <tr>
                        <td>002</td><td>name2</td><td>4612</td>
                    </tr>
                    </tbody>
                </table>

                <div id="pp" class="easyui-pagination" data-options="total:2000,pageSize:10" style="background:#efefef;border:1px solid #ccc;"></div>
            </div>
        </div>
        <%--<div>--%>
            <%--columns:[[--%>
            <%--{field:'itemid',title:'Item ID',rowspan:2,width:80,sortable:true},--%>
            <%--{field:'productid',title:'Product ID',rowspan:2,width:80,sortable:true},--%>
            <%--{title:'Item Details',colspan:4}--%>
            <%--],[--%>
            <%--{field:'listprice',title:'List Price',width:80,align:'right',sortable:true},--%>
            <%--{field:'unitcost',title:'Unit Cost',width:80,align:'right',sortable:true},--%>
            <%--{field:'attr1',title:'Attribute',width:100},--%>
            <%--{field:'status',title:'Status',width:60}--%>
            <%--]]--%>
        <%--</div>--%>

    </div>


</div>
</body>
</html>
