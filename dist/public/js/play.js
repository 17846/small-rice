define(["jquery"],function(){
	function play(){
		let p = $('.imdiv');
		for(let i = 0 ; i < p.length ; i++){
			p.eq(i).mouseenter(function(){
				$('.play').eq(i).css({
					backgroundColor:"#fd7c0a",
					borderColor:"#fd7c0a"
				});
			}).mouseleave(function(){
				$('.play').eq(i).css({
					backgroundColor:"rgba(0,0,0,0)",
					borderColor:"#ffffff"
				});
			})
		}
	}
	return {
		play:play
	}
})