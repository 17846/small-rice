define(["jquery"],function(){
	function logOut(){
		let $a = $('.person li a');
		$a.eq(4).click(function(){
			$.ajax({
				type:'get',
				url:'/logout',
				success:function(data){
					$('.alter1').css('display','none');
					$('.alter0').css('display','block');
					history.go(0)
				},
				error:function(err){
					console.log(err)
				}
			})
		})
	}
	return{
		logOut
	}
})