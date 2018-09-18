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
	商品数量:
	<input id="ss" style="width:80px;"> 
	<script type="text/javascript">
		$("#ss").numberspinner({
			min : 0,
			max : 100,
			value : 1
		});
	</script>
	<p/>
	你一共购买了<span id="num">1</span>个商品
		
		
	<script type="text/javascript">
		$("#ss").numberspinner({
			onSpinUp : function(){
				//获取数字微调的当前值
				var value = $("#ss").numberspinner("getValue");
				//将当前值设置到span标签中
				$("#num").text(value).css("color","red");
			},
			onSpinDown : function(){
				//获取数字微调的当前值
				var value = $("#ss").numberspinner("getValue");
				//将当前值设置到span标签中
				$("#num").text(value).css("color","red");
			}
		});
	</script>
	
	
	<script type="text/javascript">
		$("#ss").keyup(function(xxx){
			//将浏览器产生的事件对象设置到myevent变量中
			var myevent = xxx;
			//获取按键的unicode编码
			var code = myevent.keyCode;
			//如果按钮是回车
			if(code == 13){
				//获取数字微调的当前值，因为$(this)此时表示的是文本框，直接获取value属性值即可
				var value = $(this).val();
				if(!isNaN(value)){
					if(value>100){
						//将当前值设置到span标签中
						$("#num").text(100).css("color","red");
						$("#ss").val(100);
					}else if(value <0){
						$("#num").text(0).css("color","red");
						$("#ss").val(0);
					}else{
						//将当前值设置到span标签中
						$("#num").text(value).css("color","red");	
					}
				}else{
					alert("请输入数字");
					$("#num").text("").css("color","red");	
				}
			}
		});
	</script>
</body>
</html>