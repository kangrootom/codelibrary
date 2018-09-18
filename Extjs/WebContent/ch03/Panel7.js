Ext.onReady(
	function() {
		var panel = new Ext.Panel({
			//renderTo:hello,
			applyTo:"hello",
			width:300,
			height:200,
			title:"Panel",
			autoScroll:true,
			collapsible:true,
			titleCollapse:true,
			tbar:[
				new Ext.Toolbar.Button({text:"顶部按钮1",handler:function() {
					Ext.MessageBox.alert("单击","单击了顶部按钮1");					
				}}),
				{text:"顶部按钮2"}
			],
			bbar:[
				{text:"底部按钮1"},
				{text:"底部按钮2"}
			],
			draggable:{
				insertProxy: false,
				onDrag:function(e) {
					var pel = this.proxy.getEl();
            		this.x = pel.getLeft(true);
            		this.y = pel.getTop(true);
            		var s = this.panel.getEl().shadow;
            		if (s) {
                		s.realign(this.x, this.y, pel.getWidth(), pel.getHeight());
            		}
				},
				endDrag: function(e) {
					this.panel.setPosition(this.x, this.y);
				}
			},
			floating:true,
			x:100,
			y:100,
			tools:[
				{id:"save",handler:function() {
					Ext.MessageBox.alert("保存","保存文件");					
				}},
				{id:"help"},
				{id:"close",handler:function() {
					panel.hide();
				}}
			],
			contentEl:"content"
		});
	}
);