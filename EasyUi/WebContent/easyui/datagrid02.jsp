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
</head>
<body>
	<table 
		style="width:400px;height:250px"
		border="2" 
		align="center" 
		class="easyui-datagrid"
		data-options="url:'${pageContext.request.contextPath }/data/datagrid_data.json',fitColumns:true,singleSelect:true">
		<thead>
			<tr>
				<th data-options="field:'id',width:50">编号</th>
				<th data-options="field:'name',width:50">姓名</th>
				<th data-options="field:'sal',width:50">薪水</th>
				<th data-options="field:'sex',width:50">性别</th>
			</tr>
		</thead>
	</table>
</body>
</html>