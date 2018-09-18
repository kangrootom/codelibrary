<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一个EasyUI程序</title>
	  <!-- 引入easyui的css文件 -->
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/default/easyui.css" type="text/css"></link>
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/icon.css" type="text/css"></link>
  	  <!-- 引入easyui的js文件，先引入jquery，再引入easyui -->  
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
</head>
<body>
		<div id="p" style="padding:10px;">    
		    <p>panel content.</p>    
		    <p>panel content.</p>    
		</div>    
<script type="text/javascript">
	
	$(function(){
		$('#p').panel({    
			  width:500,    
			  height:150,
			  title: 'My Panel',    
			  tools: [{    
			    iconCls:'icon-add',    
			    handler:function(){alert('new')}    
			  },{    
			    iconCls:'icon-save',    
			    handler:function(){alert('save')}    
			  }]    
		});  
	});
</script> 
</body>
</html>