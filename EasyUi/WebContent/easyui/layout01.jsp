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
          <script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
          
</head>
<body>
	<div id="layoutId" class="easyui-layout" style="width:600;height:400px" 
	data-options="fit:true">
	
		<div data-options="region:'north',title:'NORTH'" style="height:100px"></div>
		<div data-options="region:'south',title:'SOUTH'" style="height:100px"></div>
		<div data-options="region:'east',title:'EAST'" style="width:100px"></div>
		<div data-options="region:'west',title:'WEST'" style="width:100px"></div>
		<div data-options="region:'center',title:'CENTER'" style="padding:5px;background:#eee;"></div>
	</div>
	<script type="text/javascript">
		$(function(){
			$("#layoutId").layout('collapse','north');
			window.setTimeout(function(){
				$("#layoutId").layout('collapse','south');
				$("#layoutId").layout('expand','north');
				window.setTimeout(function(){
					$("#layoutId").layout('expand','south');
				}, 3000);
			}, 3000);
		});
	</script>
</body>
</html>