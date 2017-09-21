<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<!-- <table class="easyui-datagrid">   
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
			</table>   -->
			
			
			<table id="dg"></table>
			<script>
			$('#dg').datagrid(
			{    
			    url:'${pageContext.request.contextPath}/al',     // serlvet的地址  返回的得是json数据

			    columns:
			    [[
                // title:页面要显示的标题
                // field: json返回的数据key  根据key在页面放入key对应的value值
                {field:'pid',title:'商品编号',width:100},
                {field:'pname',title:'商品名称',width:200},
                {field:'shop_price',title:'商品价格',width:100},
                {field:'pdate',title:'商品日期',width:100},
                {field:'pimage',title:'商品图片',width:200,formatter:function(value,row,index)
                {
                    // value:field的值  pimage
                    // row: 一行的内容值  {"market_price":1399,"pdate":"2015-11-02","pdesc":"小米 4c 标准版 全网通 白色 移动联通电信4G手机 双卡双待","pid":"1","pimage":"products/1/c_0001.jpg","pname":"小米 4c 标准版","shop_price":1299}
                    //index: 每一行内容的索引值(不用)
                    return "<img width=50px src=${pageContext.request.contextPath}/"+value+">";
                }
                }
            	]],
			    
			    fit:true,
			    pagination:true
			});  


			</script>


</body>
</html>