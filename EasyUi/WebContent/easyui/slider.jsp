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
	<div style="margin:100px">
			身高：<span id="tip"></span></p>
			<div id="sliderId" style="width:600px;height:400px">
			</div>
	</div>

	<script type="text/javascript">
		
		$("#sliderId").slider({
			mode:'v',
			min:150,
			max:190,
			value:150,
			rule:[150,'|',160,'|',170,'|',180,'|',190],
			showTip:true
		});
		$("#sliderId").slider({
			onChange : function(value){
				if(value==150){
					$("#tip").text("虚增").css({"color":"orange"});
				}else if(value==160){
					$("#tip").text("一般").css({"color":"purple"});
				}else if(value==170){
					$("#tip").text("合格").css({"color":"green"});
				}else if(value==180){
					$("#tip").text("卓越").css({"color":"blue"});
				}else if(value==190){
					$("#tip").text("优秀").css({"color":"dark-pink"});
				}
			}
		});
	</script>	
</body>
</html>