<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
    <tr>        
        <td>用户ID</td>
        <td>用户名</td>
        <td>登录密码</td>
    </tr>
    <!-- 使用struts2标签库中的iterator将所有数据遍历循环显示出来 -->
    <s:iterator value="#adminList" status="st">
        <tr>    
            <td><s:property value="aid"></s:property></td>
            <td><s:property value="aname"></s:property></td>
            <td><s:property value="apwd"></s:property></td>
        </tr>
    </s:iterator>
    <!-- 判断查询出来等于0，就显示“没有查找到数据” -->
    <s:if test="adminList.size()==0">
        <tr>                    
            <td colspan="3">没有查找到数据</td>
        </tr>
    </s:if>
</table>
</body>
</html>