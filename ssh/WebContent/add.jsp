<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath }/datepicker/WdatePicker.js"></script>
<body>
		<form action="" method="post">
			
			<table border="1" align="center">
						<tr>
							<th>顾客名</th>
							<th>顾客薪水</th>
							<th>顾客入职日期</th>
							<th>顾客部门</th>
						</tr>
								
						<tr>	
							<td><input name="emp.ename" type="text" value=""/></td>
							<td><input name="emp.esalary" type="text" value=""/></td>
							<td><input name="emp.ehiredate" type="text" value="" readonly="readonly" onfocus="WdatePicker('skin':'whyGreen','dateFmt':'yyyy-MM-dd');"/></td>
							<td><select name="emp.dept></select></td>
						</tr>
						<tr> <td colspan="6"><input type="button" value="添加"/></td></tr>
			</table>
			</hr>
		</form>
</body>
</html>