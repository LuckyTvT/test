<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/demo.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body>
		<div id="cc" class="easyui-layout" data-options="fit:true">   
		    <div data-options="region:'north',title:'北',split:true" style="height:150px;padding:30px;text-align:center">
		    		<font style="font-size: 25px">X X X 后 台 管 理 系 统</font>
		    </div>     
		    <div data-options="region:'west',title:'西',split:true" style="width:300px;">
		    		<!-- 折叠窗 -->
		    		<div id="dl" class="easyui-accordion" data-options="fit:true,border:0">
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
		
		
		<script>
				function add()
				{
					//先判断有没有tab4(方法)
					var flg=$("#tabs").tabs("exists","商品列表");
					if(flg)
					{
						//有:跳到tab4(方法)
						$("#tabs").tabs("select","商品列表");
					}else
					{
						//没有:创建(方法)	
						$("#tabs").tabs("add",
								{
									title:"商品列表",
									closable:true,
									href:"list.jsp"
								})
					}
				}
		</script>
</body>
</html>