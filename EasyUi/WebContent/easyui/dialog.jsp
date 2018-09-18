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
	<div id="dialogId"></div>
	<p></p>
	<button id="bt1" >打开</button>
	<button id="bt2" >关闭</button>
	<script type="text/javascript">
		$("#bt1").click(function(){
			$("#dialogId").dialog({
				width : 200,
				height : 300,
				left : 300,
				top : 300,
				maximizable : false,
				minimizable : false,
				closable : true,
				collapsible : false,
				draggable : false,
				resizable : false,
				toolbar : [
					{
					text : '编辑',
					iconCls : 'icon-add',
					handler : function(){
						alert('编辑');
					}
				}, {
					text : '帮助',
					iconCls : 'icon-help',
					handler : function(){
						alert('帮助');
					}
				}          
				],
				buttons : [
				{
					text : '保存',
					handler : function(){
						alert('保存');
					}
				},
				{
					text : '关闭',
					handler : function(){
						$("#dialogId").dialog("close");
					}
				}
			    ],
			    //modal : true,
			    href : "form.jsp"
			});
		});
		$("#bt2").click(function(){
			$("#dialogId").dialog("close");
		});
	</script>
</body>
</html>