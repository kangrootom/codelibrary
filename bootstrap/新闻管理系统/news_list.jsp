<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath() ;
	String basePath = request.getScheme()+"://"+request.getServerName()
	+":"+request.getServerPort()+"/"+path ;
%>
<html>
<head>
<base href="<%=basePath%>" />
<title>bootstrap综合应用</title>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1" >
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div class="container">
		<!-- 定义表格 -->
		<!-- bordered:表格带有边框线条、hover：鼠标移动时表格行的颜色改变、striped表格行的颜色隔行变换 -->
		<table class="table table-bordered tabel-hover table-striped" id="newsTable">
			<tr>
				<td class="text-center"><input type="checkbox" id="selectedAll" name="selectedAll"></td>
				<td class="text-center"><strong>标题</strong></td>
				<td class="text-center"><strong>发布日期</strong></td>
				<td class="text-center"><strong>内容</strong></td>
				<td class="text-center"><strong>操作</strong></td>
			</tr>
		</table>
		<button class="btn btn-info" id="delBtn"><span class="glyphicon glyphicon-trash"></span> 删除</button>
	
	<div id="dividedPage" class="text-right">
		<ul class="pagination pagination-sm" id="pagecontrol"></ul>
	</div>
	
	<%--用来显示后台数据更新的状态--%>
	<div class="alert alert-info" style="display: none;" id="alertDiv">
		<button class="colse">&times;</button>
		<span id="alertText"></span>
	</div>

	<%--定义模态窗口--%>
	<div class="modal" id="newsInfo">
		<div class="modal-dialog" style="width: 600px">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">新闻数据编辑</h4>
				</div>
				<div class="modal-body">
					<form method="post" id="myForm" class="form-horizontal">
						<fieldset>
							<legend><label>新闻编辑</label></legend>
							<div class="form-group" id="snidDiv" >
								<label class="col-md-3 control-label" for="title">编号:</label>
								<div class="col-md-5">
									<span id="snid"></span>
								</div>
								<div class="col-md-4" id="snidSpan"></div>
							</div>
							<div class="form-group" id="titleDiv" >
								<!-- 用label元素便于鼠标点击实现联动效果同时要设置for="title"才有效果 -->
								<label class="col-md-3 control-label" for="title">标题:</label>
								<div class="col-md-5">
									<input id="title" name="title" type="text" value="test_title" placeholder="请输入标题" class="form-control">
								</div>
								<div class="col-md-4" id="titleSpan"></div>
							</div>
							<div class="form-group" id="contentDiv" >
								<!-- 用label元素便于鼠标点击实现联动效果同时要设置for="content"才有效果 -->
								<label class="col-md-3 control-label" for="content">新闻内容:</label>
								<div class="col-md-5">
									<textarea id="content" name="content" placeholder="请输入内容" class="form-control">		test_content
									</textarea>
								</div>
								<div class="col-md-4" id="contentSpan"></div>
							</div>
							<!-- 定义两个按钮 -->
							<div class="form-group">
								<div class="col-md-5 col-md-offset-3" >
								<button type="submit" class="btn btn-info" id="updateBtn">修改</button>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="modal-footer">
				<button class="btn btn-success" data-dismiss="modal">关闭界面</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>