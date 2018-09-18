<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一个EasyUI程序</title>
	  <!-- 引入easyui的css文件 -->
          <link rel="stylesheet" href="themes/default/easyui.css" type="text/css"></link>
          <link rel="stylesheet" href="themes/icon.css" type="text/css"></link>
  	  <!-- 引入easyui的js文件，先引入jquery，再引入easyui -->  
          <script type="text/javascript" src="js/jquery.min.js"></script>
          <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body>
	<div id="p" class="easyui-panel" style="width:500px;height:200px;padding:10px"
	title="折叠面板" iconCls="icon-save" collapsible="true" closable="true" minimizable="true"
	maximizable="true">
	
		可折叠的功能面板</br>	
		可折叠的功能面板</br>
		可折叠的功能面板</br>
	
	</div>
	
</body>
</html>