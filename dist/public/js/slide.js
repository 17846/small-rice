define(["jquery"],function(){
	function slide(node,slideNode,time,bolean){
		if(bolean === undefined){
			bolean = true;
		}
		if(!bolean){
			node.mouseenter(function(){
				slideNode.stop().slideDown(time);
			});
		}else{
			node.mouseenter(function(){
				slideNode.stop().slideDown(time);
			}).mouseleave(function(){
				slideNode.stop().slideUp(time);
			})
		}
	}
	function slideUp(){
		$('.topNav .ul1').mouseleave(function(){
			if($('.slidAdv').css('display') == 'none'){
				return;
			}else{
				
				$('.slidAdv').stop().slideUp(300);
				
			}
		})
		$('.topNav .ul1 li:eq(7),.topNav .ul1 li:eq(8)').mouseenter(function(){
			$('.slidAdv').stop().slideUp(300);
		})
	}
	return{
		sli:slide,
		slideup:slideUp
	}
})