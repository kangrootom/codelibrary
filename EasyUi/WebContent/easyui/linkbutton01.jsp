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
	<a 
		id="btn_add" 
		href="#" 
		class="easyui-linkbutton" 
		data-options="iconCls:'icon-add'">增加部门</a><p> 
	<a 
		id="btn_find" 
		href="#" 
		class="easyui-linkbutton" 
		data-options="iconCls:'icon-search'">查询部门</a><p> 
	<a 
		id="btn_update" 
		href="#" 
		class="easyui-linkbutton" 
		data-options="iconCls:'icon-edit'">修改部门</a><p> 
	<a 
		id="btn_delete" 
		href="#" 
		class="easyui-linkbutton" 
		data-options="iconCls:'icon-remove'">删除部门</a><p>
	
	
	
	
	
	<script type="text/javascript">
		//定位4个按钮
		$("a").click(function(){
			//获取你所单击的按钮的标题
			var title = $(this).text();
			//去空格
			title = $.trim(title);
			//显示
			alert(title);
		});
	</script>
</body>
</html>