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
	<!-- 静态方式创建pagination 
	<div 
		id="paginationID" 
		class="easyui-pagination" 
		data-options="total:2000,pageSize:10" 
		style="background:#efefef;border:1px solid #ccc;"></div> 
	-->
	<div id="paginationId" style="background:#efefef;border:1px solid #ccc;width:800px">
	
	</div>
	<script type="text/javascript">
	//total表示总记录数
	//pageSize表示每页显示多少条记录
	//pageNumber表示当前页号
	//pageList表示可供选择的每页显示多少条记录，pageSize变量的值必须属性pageList集合中的值之一
		$("#paginationId").pagination({
			total:100,
			pageSize:10,
			pageNumber:1,
			pageList:[10,20],
			layout:['list','sep','first','prev','manual','next','last','links']
		});
		$("#paginationId").pagination({
			
			"onSelectPage":function(pageSize,pageNumber){
				alert("pageSize:"+pageSize);
				alert("pageNumber:"+pageNumber);
			}
		});
	</script>
</body>
</html>