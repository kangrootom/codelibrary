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
	<input type="button" value="警告框"/><br/>
	<input type="button" value="确认框"/><br/>
	<input type="button" value="输入框"/><br/>
	<input type="button" value="显示框"/><br/>
	<input type="button" value="进度条"/><br/>
	<script type="text/javascript">
		var getNum = new Function("return Math.floor(Math.random()*9)+1");
		$(":button").click(function(){
			var tip = $(this).val();
			tip = $.trim(tip);
			if("警告框" == tip){
				$.messager.alert("警告框", "继续鲁丽", "warning");
			}else if("确认框" == tip){
				$.messager.confirm("确认框", "确认关闭此对话框", function(value){
					alert(value);
				});
			}else if("输入框" == tip){
				$.messager.prompt("输入框", "请输入你期望的薪水", function(sal){
					if(typeof sal != 'number'){
						alert("请输入月薪");
					}else{
						if(sal<6000){
							alert("你的谦虚了");
						}else if(sal < 7000){
							alert("你加点油了");
						}else{
							alert("你很不错了");
						}
					}
				});
			}else if("显示框" == tip){
				$.messager.show({
					showType : "fade",
					showSpeed : 1000,
					width : 400,
					height : 400,
					title : "显示框",
					msg : "这是内容",
					timeout : 5000
				});
			}else if("进度条" == tip){
				$.messager.progress({
					title : "进度条",
					msg : "progress bar",
				});
				
				timeId = window.setInterval("update()", 500);
				
			} 
			var pb = $.messager.progress('bar');
			var value = $(pb).progressbar("getValue");
			var timeId = null;
			function update(){
				var num = getNum();
				if(value+num>100){
					$(pb).progressbar("setValue",100);
					 $.messager.progress('close');
					 window.clearInterval(timeId);
				}else{
					$(pb).progressbar("setValue",value+num);
				}
			}
		});
		
	</script>
</body>
</html>