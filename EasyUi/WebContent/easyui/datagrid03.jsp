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
<!-- 
		pagination表示分页栏
		pageSize表示每个显示多少条记录
		pageList表示可供选择的条数
	-->
	<table id="tb" class="easyui-datagrid">
	</table>
	<script type="text/javascript">
		$("#tb").datagrid({
			url:"${pageContext.request.contextPath}/data/datagrid_data.json",
			columns:[[
			          
			        	{field:'id',title:'编号',width:100},
			        	{field:'name',title:'姓名',width:100},
			        	{field:'sal',title:'性别',width:100},
			        	{field:'sex',title:'薪水',width:100}
			        ]],
			fitColumns:true,
			singleSelect:true,
			pagination:true,
			pageSize:2,
			pageList:[2,3,4]
		});
	</script>
</body>
</html>