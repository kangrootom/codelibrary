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
	
	<form>
		<table border="2" align="center">
			<tr>
				<th>姓名：</th>
				<td><input id="nameID" type="text"/></td>
			</tr>
			<tr>
				<th>入职时间：</th>
				<td><input id="dateID" type="text"/></td>
			</tr>
		</table>
	</form>
	
	<script type="text/javascript">
		$("#nameID").validatebox({
			required : true,
			validType : ['length[1,6]','zhongwen']
		});
	</script>
	<script type="text/javascript">
		$.extend($.fn.validatebox.defaults.rules, {    
		    zhongwen: {  
		        validator: function(value){   
		        	if(/^[\u3220-\uFA29]*$/.test(value)){
			            return true;    
		        	}
		        }, 
		        message: '姓名必须为中文'   
		    }    
		});  
	</script>
	<script type="text/javascript">
		$("#dateID").datebox({
			required : true
		});
	</script>
</body>
</html>