	<script type="text/javascript" >
	// 实现分页功能
	var jsCommonCp = 1 ;	//当前的页码
	var jsCommonLs = 5 ; //每页显示数据量
	var jsCommonPageSize ;	//总页数
	function createSplitBar(allRecorders){ //专门用于创建分页操作的
		clearBar();
		calcPageSize(allRecorders) ;

		if(jsCommonPageSize > 1){
			previousPage() ;
			addBar(1) ;
		}

		var seed = 3 ; //设置一个显示省略号的临界点--种子数，如果大于它则出现，否则不出现
		
		if(jsCommonCp > seed*2){
			addDetailPage() ; //增加省略号按钮
			var startPage = jsCommonCp - seed ;
			for(var x=startPage ; x<jsCommonCp + seed ; x++){
				if(x < jsCommonPageSize){
					addBar(x) ;
				}
			}
			if(jsCommonCp+2*seed < jsCommonPageSize){
				addDetailPage() ;
			}
		}else{
			for(var x = 2 ; x < jsCommonCp+seed ; x++){
				if(x < jsCommonPageSize)
					addBar(x) ;
			}
			if(jsCommonCp+seed < jsCommonPageSize){
				addDetailPage() ;
			}
		}
		addBar(jsCommonPageSize) ;
		if(jsCommonPageSize > 1){
			nextPage() ;
		}
	}

	function clearBar(){ //定义数据的清空操作
		$("#pagecontrol li").remove() ;
	}

	function addBar(index){ //用来生成分页功能的代码,即增加页面页码标签
		var liObj = $("<li></li>") ; //定义一个li元素节点对象
		var aObj = $("<a style='cursor:pointer;'>"+index+"</a>") ;
		if(jsCommonCp == index){
			liObj.addClass("active") ; //如果此页码正好为当前页则设置一个样式
		}else{
			aObj.on("click",function(){
				jsCommonCp = index ;
				loadData() ;
			}) ;
		}
		liObj.append(aObj) ;
		$("#pagecontrol").append(liObj) ;
	}

	function addDetailPage(){ //添加省略号按钮
		var liObj = $("<li><span>...</span></li>") ;
		$("#pagecontrol").append(liObj) ;
	}

	function previousPage(){ //在页面定义上一页按钮
		var liObj = $("<li></li>") ; //定义一个li元素节点对象
		var aObj = $("<a style='cursor:pointer;'>上一页</a>") ;
		if(jsCommonCp == 1){
			liObj.addClass("disabled") ; //如果此页码正好为当前页则设置一个样式
		}else{
			aObj.on("click",function(){
				if(jsCommonCp > 1){ //如果还存在有上一页
					jsCommonCp -- ;
					loadData() ;
				}
			}) ;
		}
		liObj.append(aObj) ;
		$("#pagecontrol").append(liObj) ;
	}

	function nextPage(){ //在页面定义下一页按钮
		var liObj = $("<li></li>") ; //定义一个li元素节点对象
		var aObj = $("<a style='cursor:pointer;'>下一页</a>") ;
		if(jsCommonCp == jsCommonPageSize){
			liObj.addClass("disabled") ; //如果此页码正好为当前页则设置一个样式
		}else{
			aObj.on("click",function(){
				if(jsCommonCp < jsCommonPageSize){ //如果还存在有下一页
					jsCommonCp ++;
					loadData() ;
				}
			}) ;
		}
		liObj.append(aObj) ;
		$("#pagecontrol").append(liObj) ;
	}

	function calcPageSize(allRecorders){ //计算总页数
		//alert("calcPageSize function") ;
		if(allRecorders == 0){
			jsCommonPageSize = 1 ;
		}else{
			//js与java不一样此时不会自动转换成整型数据，需要手动设置
			jsCommonPageSize = parseInt((allRecorders+jsCommonLs-1)/jsCommonLs) ;
		}
	}

	//触发全选的元素
	// 被全选的元素
	function checkboxSelectedAll(eleA,eleB){ //实现复选框全选操作
		eleA.on("click",function(){
			eleB.each(function(){
				this.checked = eleA.prop("checked") ; //把eleA元素的属性checked赋值给前面
			}) ;
		}) ;
	}
	// 删除按钮的选择器
	// ajax异步处理的链接
	// 所有被选上的复选框
	function deleteBtn(ele,cele,url){
		ele.on("click",function(){
			var selectedItem = "" ; //保存所有要删除的数据
			cele.each(function(){ //针对每一个满足选择要求的元素都调用一次定义的函数
				if(this.checked){ //如果当前的元素有tmd被选中，那么就要执行下列语句
					selectedItem += this.value+"|" ;
				}
			});
			if(selectedItem == ""){
				alert("对不起，你他妈还没有选择任何元素，请先选择？");
			}else{
				if(window.confirm("你丫真要删除所选择的数据吗？")){
				// 如果要删除就通过ajax调用后台实现数据删除的操作
					$.post(url,{"ids":selectedItem},function(obj){
						if(obj.trim("true")){
							$("#alertDiv").attr("class","alert alert-success") ;
							$("#alertText").text("删除成功") ;
							loadData() ; //重新刷新列表页
						}else{
							$("#alertDiv").attr("class","alert alert-danger") ;
							$("#alertText").text("删除失败") ;
						}
						$("#alertDiv").fadeIn(1000,function(){
							$("#alertDiv").fadeOut(3000) ;
						});
					},"text") ;
				}
			}
		});
	}
	</script>