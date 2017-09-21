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
		<!-- <div id="dl" class="easyui-dialog" data-options="title:'My Dialog',width:500,height:300,iconCls:'icon-save'">1111</div> -->
		<input type="button" value="open" onclick="openFn()">
		<input type="button" value="close" onclick="closeFn()">
		<div id="dd"></div>  
		<script>
			$('#dd').dialog({    
			    title: 'My Dialog',    
			    width: 400,    
			    height: 200,    
			    closed: false,   //  初始化的时候该插件是否显示  true: 不显示  false:显示
			    modal: false,    // 是否模态  后面的内容是否能被点击
			   /*  content:"abcd/1234", */ //书写文本
			    href: "list.jsp",  		// 引入的是一个文件内容   
			    resizable:true
			});  
			
			
			function openFn()
			{
				$("#dd").dialog("open","open");
			}
			
			function closeFn()
			{
				$("#dd").dialog("close","close");
			}
		</script>
</body>
</html>