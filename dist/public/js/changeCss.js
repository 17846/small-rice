define(["jquery"],function(){
	function change(node1,name,style,onn,node2){
		$("#xmBanner .leftNav .ul1 li").mouseenter(function(){
			$(this).children().css('color','white');
			$(this).siblings().children().css('color','#1a1a1a');
		})
		$("#xmBanner .leftNav").mouseleave(function(){
			$("#xmBanner .leftNav .ul1 li a").css('color','#1a1a1a');
			$("#xmBanner .leftNav .ul1 li .iconfont").css('color','#1a1a1a');
		})
		if(!node2){
			node2 = node1;
		}
		if(!onn){
			node1.css(name,style);
		}else{
			node1.on(onn,function(){
				node2.css(name,style);
				return false;
			})
		}
	}
	function events(node,events,name,style,style2){
		if(!style2){
			style2 = "";
		}
		for(var i = 0; i < node.length; i ++){
			node.eq(i).on(events,function(){
				$(this).css(name,style);
				$(this).siblings().css(name,style2);
			})
		}
	}
	
	return {
		change:change,
		event:events
	}
})