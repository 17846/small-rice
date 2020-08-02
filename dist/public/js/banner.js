define(["jquery"],function(){
	function banner(even){
		var timer = null;
		var count = 0;
		function rotation(){
			if(count==-1){
				count=4;
			}
			if(count==5){
				count = 0;
			}
			$('.banner .ul1 img').eq(count).stop().animate({opacity:1},1000);
			console.log($('.banner .ul1 img'));
			$('.banner .ul1 img').eq(count).parent().parent().siblings().children().children().stop().animate({opacity:0},300);
			$('.banner .ul2 li').eq(count).attr('class','btoActive');
			$('.banner .ul2 li').eq(count).siblings().attr('class','');
			
		}
		timer = setInterval(function(){
			count++;
			rotation();
		},5000);
		for(var i =0;i<$('.banner .ul2 li').length;i++){
			$('.banner .ul2 li').eq(i).click(function(){
				count=$(this).index();
				rotation();
			})
		}
		$('.banner').mouseenter(function(){
			clearInterval(timer);
		}).mouseleave(function(){
			timer = setInterval(function(){
				count++;
				rotation();
			},5000);
		})
		$('.banner .left').click(function(){
			count--;
			rotation();
		})
		$('.banner .right').click(function(){
			count++;
			rotation();
			return;
		})
	}
	return {
		banner:banner
	}
})