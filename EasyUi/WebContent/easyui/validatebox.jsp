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
	姓名：<input id="validateboxId" />
	<script type="text/javascript">
		$("#validateboxId").validatebox({
			required:true,
			validType:['length[1,6]','zhongwen']
		});
		//自定义规则:zhongwen
		$.extend($.fn.validatebox.defaults.rules, {    
		    //zhongwen规则名
		    zhongwen: {  
		    	//validator验证体  
		    	//value表示用户在文本框中输入的内容
		        validator: function(value){   
		        	//如果符合中文规则 
		        	if(/^[\u3220-\uFA29]*$/.test(value)){
			            return true;    
		        	}
		        }, 
		        //如果不符合中文规则，以下就是提示信息   
		        message: '姓名必须为中文'   
		    }    
		});  
	</script>
</body>
</html>