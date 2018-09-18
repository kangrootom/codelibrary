<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
				#overlay{
		position:absolute;
		width:100%;
		height:100%;
		background:#000;
		filter:alpha(opacity=50);
		display:none;
		}
		#tooltip{
		position:absolute;
		width:700px;
		height:380px;
		background:#000;
		border:4px solid #000;
		margin: 102px 0 0 102px;
		display:none;
		}
		
		div.footer {
		position: absolute;
		
		cursor:pointer;
		width: 49px;
		bottom: 3px;
		right: 3px;
		border-radius: 3px;
		/*background:#6699ff;*/
		padding:0 2px;
		}
		div.picture{
		background-repeat:repeat;
		position: absolute;
		height: 300px;
		left: 0px;
		width: 690px;
		border: 3px double #00000F;
		
		}
		
		button {
		border-radius:5px;
		background:#11AfAF;
		border:5px double #003F48;
		}
</style>
		<!-- 引入easyui的css文件 -->
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/default/easyui.css" type="text/css"></link>
          <link rel="stylesheet" href="${pageContext.request.contextPath }/themes/icon.css" type="text/css"></link>
  	  <!-- 引入easyui的js文件，先引入jquery，再引入easyui -->  
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.easyui.min.js"></script>
          <script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui-lang-zh_CN.js"></script>
           <script type="text/javascript">
     $(document).ready(function () {
         $("#addnew").css({
             "cursor": "pointer"  
         });

         $("#close").click(function () {
             $("html").css({
                 "overflow": "auto" 
             });
             $("#overlay").css({
                 "display": "none"
             });
             $("#tooltip").css({
                 "display": "none"
             });
         });
         $("#addnew").click(function () {
             var y = document.documentElement.scrollTop;  
             var x = document.documentElement.scrollLeft; 
             var px = document.body.clientWidth;
             var py = document.body.clientHeight;
             $("html").css({
                 "height": "100%",
                 "overflow": "hidden"   
             });
             $("#overlay").css({
                 "display": "block",
                 "top": y,
                 "left": x,
                 "opacity":0.8
             });
             $("#tooltip").css({
                 "display": "block",
                 "top": 100,
                 "left": 200
             });
         });
     })
</script>
</head>
<body>
<button id="test1" style="position:absolute;top: 20;left: 140px;" >overlay之前的任何元素被覆盖</button>
<div id="overlay"></div>

<div id="tooltip">
<div class="picture">
    <img src="http://pic1.win4000.com/wallpaper/3/547599abe31d5.jpg" width="690" height="300">
</div>
<div class="footer">    
        <button id="close">关闭</button> 
</div>  
</div>
<button id="test2" style="position:absolute;top: 60px;left: 140px" >overlay之后的position:absolute元素不会被覆盖</button>
<button id="addnew"  style="position:absolute;top: 100px; left: 140px ;"><big> 锁定</big></button>
</body>
</html>