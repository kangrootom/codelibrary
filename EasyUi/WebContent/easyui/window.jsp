<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<!-- 引入easyui的css文件 -->
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/default/easyui.css" type="text/css"></link>
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/icon.css" type="text/css"></link>
  	  <!-- 引入easyui的js文件，先引入jquery，再引入easyui -->  
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
          
</head>
<body>
	<input type="button" value="打开窗口1" id="open1"/>
	<input type="button" value="关闭窗口1" id="close1"/>
	
	<div style="margin:600px"></div>
		
	<div id="window1"></div>
		
	<script type="text/javascript">
		//定位打开窗口1按钮，同时添加单击事件
		$("#open1").click(function(){
			//打开窗口1
			$("#window1").window({
				title : "窗口1",
				width : 840,
				height : 150,
				left : 200,
				top : 100,
				minimizable : false,
				maximizable : false,
				collapsible : false,
				closable : false,
				draggable : false,
				resizable : true,
				href : "progressbar.jsp"
				//content:"哈哈"
			});
		});
	</script>
	
	<script type="text/javascript">
		//定位关闭窗口1按钮，同时添加单击事件
		$("#close1").click(function(){
			//关闭窗口1
			$("#window1").window("close");
		});
	</script>
</body>
</html>