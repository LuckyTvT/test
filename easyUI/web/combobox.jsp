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
		<select id="cc" class="easyui-combobox" name="dept" style="width:200px;">
			    <option value="aa">aitem1</option>
			    <option>bitem2</option>
			    <option>bitem3</option>
			    <option>ditem4</option>
			    <option>eitem5</option>
		</select>
		
		<input id="ss" name="dept" value="---请选择---">

		<script>
			$('#ss').combobox(
			{
			    url:'json.json',     // url: 服务器的地址(Servlet) ---servlet一定要返回json的数据
			    valueField:'cid',    //  <option value="valueField">   对应的是返回json数据的 key cid  cid=1 <option value="1">
			    textField:'cname'    // <option>textField</option>      对应的是返回json数据的 key cname cname="北京" <option>北京</option>
			});
		</script>

		
</body>
</html>