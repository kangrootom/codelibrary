<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
  </head>
  
  <<body>
	this is list.jsp
	<hr/>
	<center>
	
		<form action="" method="post">
			
			<table border="1" align="center">
				<c:choose>
					<c:when test="${page.list != null }">
					
						<tr>
							<th><input type="checkbox" value="" id="main"/></th>
							<th>顾客编号</th>
							<th>顾客名</th>
							<th>顾客薪水</th>
							<th>顾客入职日期</th>
							<th>顾客部门</th>
						</tr>
						<c:forEach items="${page.list }" var="emp" varStatus="vs">
								
							<tr>	
									<td><input type="checkbox" name="cb" value="haha"/></td>
									<td>${vs.count}</td>
									<td>${emp.ename }</td>
									<td>${emp.esalary }</td>
									<td>${emp.ehiredate }</td>
									<td>${emp.dept.dname }</td>
									<td><input type="hidden" value="${emp.eid }" name="hide"/></td>
							</tr>
						</c:forEach>
							<tr> <td colspan="6"><input type="button" value="删除"/></td></tr>
					</c:when>
					<c:otherwise>
						<tr><td>暂无数据</td></tr>
					</c:otherwise>
				</c:choose>
			</table>
			</hr>
			
			
		</form>
	<c:if test="${page.totalCount>0 }">
				当前第${page.pageNo }页  &nbsp;&nbsp;&nbsp;&nbsp;共${page.totalPage }页  &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:doGoto(${page.pageNo-1 })"> 上一页</a>      <a href="javascript:doGoto(${page.pageNo+1 })"> 下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;跳转<input type="text" value="" onkeypress="javascript:if(event.keyCode==13){doGoto(this.value)}" />
			</c:if>
	</center>
	
  </body>
  	<script type="text/javascript">
  			var totalPage=${page.totalPage};
  			
  			function doGoto(page_no){
  				
  				//page_no = (typeof page_no)=='string'?parseInt(page_no):page_no;
  				if(page_no<1){
  					page_no=1;
  				}if(page_no>totalPage){
  					page_no=totalPage
  				}
  				window.location.href="${pageContext.request.contextPath}/emp?page_no="+page_no;
  			}
  			$(function(){
  				$("#main").change(function(){
  	  				$("input[name='cb']:checked").attr("disabled","disabled");
  	  				$("input[name='cb']:enabled").attr("checked","checked");
  	  				$("input[name-'cb']:disabled").removeAttr("disabled").removeAttr("checked");
  	  			});
  	  			$("input:button").click(function(){
  	  				var $inputs = $("input[name='cb']:checked");
  	  				var array = new Array();
  	  				$.each($inputs,function(index,element){
  	  					var $val = $(element).parents("tr").find("[name='hide']").val();
  	  					array[index] = $val;
  	  				});
  	  				/* $inputs.each(function(){
  	  					var $val = $(this).parents("tr").find("[name='hide']").val();
  	  					
  	  				}); */
  	  				
  	  				window.location.href="${pageContext.request.contextPath}/emp_delete.action?ids="+array;
  	  			});
  			});
  			
  	</script>
</html>
