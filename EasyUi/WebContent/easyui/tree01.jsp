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
	<ul id="treeId" class="easyui-tree">
		<li>
			<span>第一章</span>
			<ul>
				<li>
					<span>第一节</span>
					<ul>
						<li>
							<span>第一条</span>
						</li>
						<li>
							<span>第二条</span>
						</li>
					</ul>
				</li>
				<li>
					<span>第二节</span>
				</li>
			</ul>
		</li>
		<li>
			<span>第二章</span>
		</li>
	</ul>
	<script type="text/javascript">
		$(function(){
			$("#treeId").tree("collapseAll");
		});
	</script>
</body>
</html>