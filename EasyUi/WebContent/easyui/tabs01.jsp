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
          <script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
          
</head>
<body>
	<div 
		id="tabsID" 
		class="easyui-tabs" 
		style="width:500px;height:250px;"
		data-options="plain:false,fit:false,border:true,tools:[
			{
				iconCls:'icon-add',
				handler:function(){
					alert('添加')
				}
			},
			{
				iconCls:'icon-save',
				handler:function(){
					alert('保存')
				}
			}
		],selected:-1">   
	    
	    <!-- 选项卡 -->
	    <div title="标题1" style="padding:20px">   
	        tab1<br/>
	    </div>   
	    <div title="标题2" data-options="closable:true" style="overflow:auto;padding:20px;">   
	        tab2    
	    </div>   
	    <div title="标题3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;">   
	        tab3    
	    </div>   
	</div>  
</body>
</html>