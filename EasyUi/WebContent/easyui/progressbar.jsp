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
	<div id="progressbarId" style="width:400px"></div>
	<input id="startID" type="button" value="动起来" style="width:111px;height:111px;font-size:33px"/>
	<script type="text/javascript">
		$("#progressbarId").progressbar({
			width:1300,
			height:100,
			value:0
		});
		var getNum = new Function("return Math.floor(Math.random()*9)+1");
		var timeId = null;
		function update(){
			var tem = $("#progressbarId").progressbar("getValue");
			var num = getNum();
			console.log(num);
			if(num+tem>100){
				$("#progressbarId").progressbar("setValue",100);
				
				window.clearInterval(timeId);
				
				$("#startID").removeAttr("disabled");
			}else{
				$("#progressbarId").progressbar("setValue",num+tem);
			}
		}
		$("#startID").click(function(){
			$("#progressbarId").progressbar("setValue",0);
			timeId = window.setInterval("update()", 300);
			$(this).attr("disabled","disabled");
		});
	</script>
</body>
</html>