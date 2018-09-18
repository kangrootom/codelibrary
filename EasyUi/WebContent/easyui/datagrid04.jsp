<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>用Servlet返回JSON文本动态创建DataGrid</title>
    	  <!-- 引入easyui的css文件 -->
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/default/easyui.css" type="text/css"></link>
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/icon.css" type="text/css"></link>
  	      <!-- 引入easyui的js文件，先引入jquery，再引入easyui -->  
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
  </head>
  <body>

	<table id="dg"></table>
	<script type="text/javascript">
		
		$("#dg").datagrid({
			url : "${pageContext.request.contextPath}/UserServlet?time="+new Date().getTime(),
			columns :  [[    
					        	{field:'id',title:'编号',width:100},    
					        	{field:'name',title:'姓名',width:100},    
					        	{field:'sal',title:'薪水',width:100},
					        	{field:'sex',title:'性别',width:100},
					        	{field:'content',title:'描述',width:400,height:400}
						]],
			fitColumns : true,
			singleSelect : true,
			pagination : true,
			pageSize : 2,
			pageList : [2,4]		    
		});
	</script>
	
  </body>
</html>
