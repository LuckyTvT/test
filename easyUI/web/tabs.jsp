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
		<input type="button" value="add" onclick="addFn()"> 
		<div id="tabs" class="easyui-tabs" data-options="width:500,height:200">
			<div title="tab1">111</div>
			<div title="tab2" data-options="closable:true">222</div>
			<div title="tab3"  data-options="closable:true">333</div>
		</div>
		
		<script>
			function addFn()
			{
				//先判断有没有tab4(方法)
				var flg=$("#tabs").tabs("exists","tab4");
				if(flg)
				{
					//有:跳到tab4(方法)
					$("#tabs").tabs("select","tab4");
					
				}else
				{
					//没有:创建(方法)	
					$("#tabs").tabs("add",
							{
								title:"tab4",
								closable:true,
								content:4444
							})
				}
						
						
				
				
			}
		</script>
</body>
</html>