Ext.onReady(
	function() {
		new Ext.Panel({
			//renderTo:hello,
			applyTo:"hello",
			width:300,
			height:200,
			title:"Panel",
			html:"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!" +
					"��ӭ��Һ���һ��ѧϰExtJS!",
			autoScroll:true,
			collapsible:true,
			titleCollapse:true,
			tbar:[
				new Ext.Toolbar.Button({text:"������ť1",handler:function() {
					Ext.MessageBox.alert("����","�����˶�����ť1");					
				}}),
				{text:"������ť2"}
			],
			bbar:[
				{text:"�ײ���ť1"},
				{text:"�ײ���ť2"}
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
			y:100
		});
	}
);