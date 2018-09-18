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
	密码：<input id="pwd" name="pwd" type="password" class="easyui-validatebox" data-options="required:true" />   
	重新输入密码：<input id="rpwd" name="rpwd" type="password" class="easyui-validatebox"     
    required="required" validType="equals['#pwd']" />  
 
	<script type="text/javascript">
		$.extend($.fn.validatebox.defaults.rules, {    
		    equals: {    
		        validator: function(value,param){    
		            return value == $(param[0]).val();    
		        },    
		        message: 'Field do not match.'   
		    }    
		});  

	</script>
	
	邮箱：<input id="emailID"/><p/>

	<script type="text/javascript">
		$("#emailID").validatebox({
			required : true,
			validType : ['length[1,30]','email']
		});
	</script>
	
	
	
	
	
	密码：<input id="passwordID"/><p/>

	<script type="text/javascript">
		$("#passwordID").validatebox({
			required : true,
			validType : ['length[6,6]','english']
		});
	</script>
	<script type="text/javascript">
		$.extend($.fn.validatebox.defaults.rules, {    
		    english: {  
		        validator: function(value){   
		        	if(/^[a-zA-Z]*$/.test(value)){
			            return true;    
		        	}
		        },
			    message: '密码必须为英文'   
		    }
		});  
	</script>
	
	

	
</body>
</html>