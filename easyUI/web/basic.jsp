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
	<!-- 
			easyui的组件有2种方式来引入:
						1 静态方式/css方式 (直接在标签体上写内容引入)
							  1 通过在标签体上的一个 class="easyui-*"将普通的html标签熏染成easy-ui的组件  *:代表组件名称
							  2 通过在标签体上的一个 data-options属性来设置组件的一些额外样式
	 -->
	<!-- <div  class="easyui-window"  data-options="iconCls:'icon-man',width:500,height:200,title:'窗口'" >
		The window content.
	</div> -->
	
	
	<!-- 
		easyui的组件有2种方式来引入:
				2 动态方式/js方式(需要写js代码来渲染)
	 -->
	 <input type="button" value="更改标题"  id="bt1"  onclick="changetitleFn()" />
	  <input type="button" value="更改大小" id="bt2"  onclick="changewhFn()"/>
	<div id="dl">123</div>
	<script>
		$("#dl").window
		(
			{
				/* 设置组件的属性样式 */
				width:500,
				height:200,
				title:"这是一个动态方式渲染的窗口",
				iconCls:"icon-man",
				
				/*设置组件的事件 */
				onBeforeClose:function()
							  {
									alert("面板即将被关闭");
							  }
				/* 事件名:事件输出内容 */
			}
		)
		
		function changetitleFn()
		{
			/*写更改我们window窗口标题的方法  */
			$("#dl").window("setTitle","chuangkou");
		}
		
		function changewhFn()
		{
			/*写更改我们window窗口大小的方法  */
			$("#dl").window("resize",
							{
								width:50,
								height:50
							});
		}
	</script>
	
</body>
</html>