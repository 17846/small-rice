define(["jquery"],function(){
	function topnav(){
		let width = $(window).width();
		if(width >= 1250 && width <1589 ){
			$('#toTop').css("display","block");
			$('#toTop').css("right",((width-1226)/2-$('#toTop').width())+"px");
		}else if(width >= 1589){
			$('#toTop').css("display","none");
		}
		$(window).resize(function(){
			let width = $(window).width();
			if(width >= 1250 && width <1589){
				$('#toTop').css("display","block");
				$('#toTop').css("right",((width-1226)/2-$('#toTop').width())+"px");
			}else if(width >= 1589){
				$('#toTop').css("display","none");
			}else if(width < 1250){
				$('#toTop').css("display","block");
				$('#toTop').css("right",'0px');
			}
		})
		if($(document).scrollTop() > 1200){
			$("#toTop ul li").eq(5).css("display","block");
			$("#toTop2 ul li").eq(5).css("display","block");
		}
		$(document).scroll(function(){
			if($(document).scrollTop() > 1200){
				$("#toTop ul li").eq(5).css("display","block");
				$("#toTop2 ul li").eq(5).css("display","block");
			}else{
				$("#toTop ul li").eq(5).css("display","none");
				$("#toTop2 ul li").eq(5).css("display","none");
			}	 
		})
		let $lis = $("#toTop2 ul li");
		let str = ``;
		for(let i = 0; i<$lis.length ; i++){
			$lis.eq(i).mouseenter(function(){
				str = `#toTop2 ul li:eq(${i}) img:eq(0)`;
				$(str).attr('src',`../img/on${i}.png`);
			}).mouseleave(function(){
				str = `#toTop2 ul li:eq(${i}) img:eq(0)`;
				$(str).attr('src',`../img/no${i}.png`);
			})
		}
	}
	return{
		totop:topnav
	}
})