<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>增加部门</title>
    
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
				<th>部门名</th>
				<td><input type="text" name="department"/></td>
			</tr>
			<tr>
				<th>部门负责人</th>
				<td><input type="text" name="leader"/></td>
			</tr>
			<tr>
				<th>部门职责</th>
				<td>
					<textarea rows="5" cols="33">
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="提交"/>
				</td>
			</tr>
		</table>	
	</form>		

  </body>
</html>








