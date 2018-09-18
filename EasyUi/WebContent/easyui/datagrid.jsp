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
	<table border="2" align="center" class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id'">编号</th>
				<th data-options="field:'name'">姓名</th>
				<th data-options="field:'sal'">薪水</th>
				<th data-options="field:'sex'">性别</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>哈哈</td>
				<td>6000</td>
				<td>男</td>
			</tr>
			<tr>
				<td>2</td>
				<td>呵呵</td>
				<td>7000</td>
				<td>男</td>
			</tr>
			<tr>
				<td>3</td>
				<td>嘻嘻</td>
				<td>8000</td>
				<td>女</td>
			</tr>
		</tbody>
	</table>
</body>
</html>