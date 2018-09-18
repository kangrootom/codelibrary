<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath() ;
String basePath = request.getScheme()+"://"+request.getServerName()
+":"+request.getServerPort()+"/"+path ;
String insertUrl = basePath+"/pages/news/NewsServlet/insert" ;
%>
<html>
<head>
<base href="<%=basePath%>" />
<title>bootstrap综合应用</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1" >
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--首先定义导航条-->
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="panel panel-success">
<div class="panel-heading">
<strong>增加新闻</strong>
</div>
<div class="panel-body">
<!-- 定义bootstrap样式的form表单 -->
<form action="<%=insertUrl%>" method="post" id="myForm" class="form-horizontal">
<fieldset>
<legend><label>新闻增加</label></legend>
<div class="form-group" id="titleDiv" >
<!-- 用label元素便于鼠标点击实现联动效果同时要设置for="title"才有效果 -->
<label class="col-md-3 control-label" for="title">标题:</label>
<div class="col-md-5">
<input id="title" name="title" type="text" value="test_title" placeholder="请输入标题" class="form-control">
</div>
<div class="col-md-4" id="titleSpan"></div>
</div>
<div class="form-group" id="contentDiv" >
<!-- 用label元素便于鼠标点击实现联动效果同时要设置for="content"才有效果 -->
<label class="col-md-3 control-label" for="content">新闻内容:</label>
<div class="col-md-5">
<textarea id="content" name="content" placeholder="请输入内容" class="form-control">test_content</textarea>
</div>
<div class="col-md-4" id="contentSpan"></div>
</div>
<!-- 定义两个按钮 -->
<div class="form-group">
<div class="col-md-5 col-md-offset-3" >
<button type="submit" class="btn btn-info">发布</button>
<button type="reset" class="btn btn-info">重置</button>
</div>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
