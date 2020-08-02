define(["jquery"],function(){
		function islogin(){
			$.ajax({
				type:'get',
				url:'/islogin',
				success:function(data){
						if(data != 'false'){
							$('.alter0').css('display','none');
							$('.alter1').css('display','block');
							$('.alter1 .haha').html(JSON.parse(data))
							if ($('#box .product .productDetail .button .jiagou')){
								$('#box .product .productDetail .button .jiagou').html("加入购物车").attr('href','javaScript:').attr('id','islogin')
							}
							$('#toTop ul li a').eq(3).attr('href','/buy/cart')
						}else{
							$('.alter1').css('display','none');
							$('.alter0').css('display','block');
							if ($('#box .product .productDetail .button .jiagou')){
								$('#box .product .productDetail .button .jiagou').html("登录后购买").attr('href','/pass/login').attr('id','')
							}
							$('#xmHeader .container .gouwuche .shangpin').html('<center>登录后查看购物车 <a href="/pass/login" style="color: #FF6700;margin-left: 15px;display: inline-block;float: none">立即登录</a></center>')
							$('#toTop ul li a').eq(3).attr('href','javaScript:')
						}
				},
				error:function(err){
					console.log(err)
				}
			})
		}
		return{
			statu:islogin
		}
})