<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js"></script>
<style type="text/css">
	.c{
		border: 1px solid gray;
	}
</style>
</head>
<body>
<div class="container">
	<div class="row">
	  <div class="col-md-8 c">
	  	<div class="row">
	  		<div class="col-md-4 col-md-offset-4 c">第二层8个格子</div>
	  		<div class="col-md-2 col-md-offset-2 c">第二层4个格子</div>
	  	</div>
	  </div>
	  <div class="col-md-4 c">.col-md-4</div>
	</div>
</div>
</body>
</html>