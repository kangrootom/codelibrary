<script type="text/javascript" >
$(function(){
	loadData() ;
}) ;

// 读取JSP页面所返回的数	据
function loadData(){ //数据读取的函数定义
	$.post("pages/news/NewsServlet/list",{"cp":jsCommonCp,"ls":jsCommonLs},function(obj){
		$("#newsTable tr:gt(0)").remove() ;
		createSplitBar(obj.allCount) ;
		for(var i= 0 ;i<obj.selectedNews.length ;i++){
			addRow(obj.selectedNews[i].nid,obj.selectedNews[i].title,obj.selectedNews[i].content,obj.selectedNews[i].pubdate);
		}
		checkboxSelectedAll($("#selectedAll"),$("input[id='nid']"));
		deleteBtn($("#delBtn"),$("input[id='nid']"),"pages/news/NewsServlet/delete");
	},"json") ;
}

//增加表格行
function addRow(nid,title,content,pubdate){
	var str = "<tr><td class='text-center'><input type='checkbox'"+
		"id='nid' name='nid' value='"+nid+"'></td>"+
			"<td class='text-center' id='title-'"+nid+">"+title+"</td>"+
				"<td class='text-center' id='pubdate-'"+nid+">"+pubdate+"</td>"+
					"<td class='text-left' id='content-'"+nid+">"+content+"</td>"+
						"<td id='btn-'"+nid+"><btn id='updateBtn-"+nid+"' data-toggle='modal' data-target='#newsInfo' "+
							"class='btn btn-info'><span class='glyphicon glyphicon-pencil'>"+
								"</span> 修改</btn></td></tr>";
	$("#newsTable").append($(str)) ;
	$("#updateBtn-"+nid).on("click",function(){
		$("#snid").text(nid) ;
		$("#title").val(title) ;
		$("#content").val(content) ;
	}) ;
}

function updateNews(){
	var nid = $("#snid").text();
	var title = $("#title").val() ;
	var content = $("#content").val() ;
	$.post("pages/news/NewsServlet/update",{"nid":nid,"title":title,"content":content},function(obj){
		if(obj.trim() == "true"){
			$("#alertDiv").attr("class","alert alert-success") ;
			$("#alertText").text("修改成功！") ;
			//后台数据修改成功后，那么前台列表页相应的数据肯定要同步更新
			$("#title-"+nid).text(title) ;
			$("#content-"+nid).text(content) ;
		}else{ //表示修改失败
			$("#alertDiv").attr("class","alert alert-danger") ;
			$("#alertText").text("修改失败！") ;
		}
	},"text") ;
	//更新完毕后需要自动关闭模态窗口
	$("#newsInfo").modal("hide") ;
	//同时更新的状态信息也逐渐消失
	$("#alertDiv").fadeIn(1000,function(){
		$("#alertDiv").fadeOut(3000) ;
	});
}

$("#updateBtn-"+nid).on("click",function(){
	$("#snid").text(nid) ;
	$("#title").val(title) ;
	$("#content").val(content) ;
});

</script
