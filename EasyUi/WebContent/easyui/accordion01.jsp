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
	<div id="accordionId" class="easyui-accordion" style="width:300px;height:400px;"
	data-options="fit:false,multiple:false,selected:-1,animate:false,border:true">
		<div title="新增" data-options="iconCls:'icon-add'" style="padding:10px">
			北京
		</div>
		<div title="查询" data-options="iconCls:'icon-search'" style="padding:10px">
			上海
		</div>
		<div title="编辑" data-options="iconCls:'icon-edit'" style="padding:10px">
			深圳
		</div>
		<div title="删除" data-options="iconCls:'icon-del',collapsible:true" style="padding:10px">
			广州
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			$("#accordionId").accordion("add",{
				"title" : "查询",
				"iconCls" : "icon-add",
				"content" : "武汉",
				"selected" : false
			});
			window.setTimeout(function(){
				$("#accordionId").accordion("remove",0);
				$("#accordionId").accordion("unselect",0);
				//面板3选中
				$("#accordionId").accordion("select",2);
			}, 3000);
		});
	</script>
</body>
</html>