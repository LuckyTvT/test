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
		<script>
		/* $.messager.alert('警告111','1111','info',function(){
			$.messager.alert('要删除了');
		});   */
		
		/* $.messager.confirm('确认111','您确认想要删除记录吗222？',function(r){    
		    if (r){    
		        alert('确认删除');    
		    }    
		});   */
		
			$.messager.show({
				title:'我的消息111',
				msg:'消息将在5秒后关闭2222',
				timeout:2000,
				showType:'fade'
			});

		</script>
</body>
</html>