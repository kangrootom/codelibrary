<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	//获取当前年份
	Calendar cal = Calendar.getInstance();
	int curYear = cal.get(Calendar.YEAR);//当前年份
	request.setAttribute("curYear", curYear);
	
	List yearList = new LinkedList();
	for(int i = curYear; i > curYear-5 ; i--){
		yearList.add(i);
	}
	request.setAttribute("yearList", yearList);
	
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>年度投诉统计图</title>
  </head>
  <script type="text/javascript" src="${pageContext.request.contextPath }/common/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/fusioncharts/fusioncharts.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/fusioncharts/fusioncharts.charts.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/fusioncharts/themes/fusioncharts.theme.fint.js"></script>
  <script type="text/javascript">
  
  //加载完dom元素后，执行
  $(document).ready(doAnnualStatistic());
  
  //根据年份统计投诉数
  function doAnnualStatistic(){
	  //1、获取年份
	  var year = $("#year option:selected").val();
	  if(year == "" || year == undefined){
		  year = "${curYear}";//默认当前年份
	  }
	  //2、根据年份统计
	  $.ajax({
		  url:"${pageContext.request.contextPath }/ComplainServlet",
		  data:{"year":year},
		  type: "post",
		  dataType:"json",
		  success: function(data){
			  if(data != null && data != "" && data != undefined){
				  var revenueChart = new FusionCharts({
				        "type": "line",
				        "renderAt": "chartContainer",
				        "width": "600",
				        "height": "400",
				        "dataFormat": "json",
				        "dataSource":  {
				          "chart": {
				            "caption": year + " 年度投诉数统计图",
				            "xAxisName": "月  份",
				            "yAxisName": "投  诉  数",
				            "theme": "fint"
				         },
				         "data": data.chartData
				      }

				  });
				revenueChart.render();
			  } else {
				  alert("统计投诉数失败！");
			  }
		  },
		  error: function(){alert("统计投诉数失败！");}
	  });
	  
  }
 
  </script>
  <body>
  	<br>
    <div style="text-align:center;width:100%;">
    	<select id="year" onchange="doAnnualStatistic()">
    		<% for(int i=0;i<((List)request.getAttribute("yearList")).size();i++){ %>
    			<%if(i==0){ %>
    				<option value="<%=((List)request.getAttribute("yearList")).get(i)%>" selected="selected"><%=((List)request.getAttribute("yearList")).get(i)%></option>
    			<%}else{ %>
    				<option value="<%=((List)request.getAttribute("yearList")).get(i)%>"><%=((List)request.getAttribute("yearList")).get(i)%></option>
    			<%} %>>
    		<% } %>
    	</select>
    </div>
    <br>
    <div id="chartContainer" style="text-align:center;width:100%;"></div>
  </body>
</html>
