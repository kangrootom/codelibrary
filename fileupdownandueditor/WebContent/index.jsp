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
	<center><h2>this is index.jsp</h2></center>
	<center><h2>跳转到<a href="${pageContext.request.contextPath }/items/queryItems.action">商品列表</a></center>
	<center><h2>跳转到<a href="${pageContext.request.contextPath }/modal.jsp">模态对话框</a></center>
	<center><button id="bt1">getJson</button></center>
</body>
<script type="text/javascript">
	$("#bt1").click(function(){
		alert("wha");
		$.ajax({
			url:"${pageContext.request.contextPath }/items/getJson.action",
			method:"POST",
			data:{id:1},
			success:function(ajax){
				alert(JSON.stringify(ajax));
				var $span = $("<span/>").text("name"+ajax.name+"price:"+ajax.price).css("color","green");
				$("body").append($span);
			}
		});
	});
</script>
</html>