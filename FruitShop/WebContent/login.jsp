<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/datepicker/WdatePicker.js"></script>
<link href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body >
  <div class="container-fluid" style="background:#e6e6e6;height: 600px;overflow: auto;">
    <div class="bg-info">
    <div class="bg-primary" style="height: 80px">
      <div>
        <h1 class="text-center" style="font-size: 60px;color: #a2e6f2;line-height: 1em;">**超市系统欢迎您</h1>
      </div>
    </div>    
    <div style="border: 1px solid black;">
      <form action="${pageContext.request.contextPath}/login.action" method="post" >
        <div class="form-group">
          <div class="input-group ">
            <div class="input-group-addon">用戶名</div>
            <div class="">
              <input id="aname" name="admin.aname" type="text" placeholder="请输入用户名" class="form-control"/>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="input-group">
            <div class="input-group-addon">密  碼</div>
            <div class="">
              <input id="apwd" name="admin.apwd" type="password" placeholder="请输入密碼" class="form-control"/>
            </div>
          </div>
        </div>
        <hr/>
        <div class="form-group text-center">
          <input type="submit" class="btn btn-info btn-md" value="登录"/>
          <input type="button" class="btn btn-info btn-md" value="注册" onclick="regist()" />
        </div>
      </form>
    </div>
    </div>
  </div>
  <script type="text/javascript">
     
      function regist(){
          alert("wha");
          window.location.href="${pageContext.request.contextPath}/admin_reg.action";
        }

  </script>
</body>
</html>