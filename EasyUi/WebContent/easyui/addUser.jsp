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
	<form id="ff" method="post">   
	    <div>   
	        <label for="name">Name:</label>   
	        <input class="easyui-validatebox" type="text" name="name" data-options="required:true" />   
	    </div>
	    <div>   
	        <label for="name">Sal:</label>   
	        <input class="easyui-validatebox" type="text" name="sal" data-options="required:true" />   
	    </div>      
	    <div>   
	        <label for="email">Sex:</label>   
	        <input class="easyui-validatebox" type="radio" name="sex" >男</input>
	        <input class="easyui-validatebox" type="radio" name="sex" >女</input>      
	    </div>   
	</form>  
	<script type="text/javascript">
		var name = $("input[name='name']").val();
		var sal  = $("input[name='name']").val();
		$('#ff').form({    
		    url:"${pageContext.request.contextPath }/addUserServlet",    
		    onSubmit: function(){    
		        if    
		    },    
		    success:function(data){    
		        alert(data)    
		    }    
		});    
		// submit the form    
		$('#ff').submit();  

		
	</script>
</body>
</html>