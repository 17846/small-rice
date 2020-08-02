define(["jquery"],function(){
	function changeColor(){
		let arr1 = [];
		let arr2 = [];
		let arr3 = [];
		let arr4 = [];
		let arr5 = [];
		$.ajax({
			type:'post',
			url:'/seckill/list',
			success(data){
				data = JSON.parse(data)
				for(let i=0;i<data.length;i++){
					if(data[i].tag == 0){
						arr1.push(data[i]);
					}else if(data[i].tag == 10){
						arr2.push(data[i]);
					}else if(data[i].tag == 14){
						arr3.push(data[i]);
					}else if(data[i].tag == 20){
						arr4.push(data[i]);
					}else if(data[i].tag == 22){
						arr5.push(data[i]);
					}
				}
			}
		})
		new Promise((resolve,reject) => {
			$.ajax({
				type:'get',
				url:'/islogin',
				success:function(data){
					resolve(data);
				}
			})
		})
		.then((res) => {
			let Arr = [];
			let H = new Date().getHours();
			if(H>=0 && H <10){
				Arr = [arr1,arr2,arr3,arr4,arr5];
			}else if(H>=10 && H<14){
				Arr = [arr2,arr3,arr4,arr5,arr1];
			}else if(H>=14 && H<20){
				Arr = [arr3,arr4,arr5,arr1,arr2];
			}else if(H>=20 && H<22){
				Arr = [arr4,arr5,arr1,arr2,arr3];
			}else if(H>=22 && H<24){
				Arr = [arr5,arr1,arr2,arr3,arr4];
			}
			for(let i = 0;i<5;i++){
				$('#seckill .box .message .ul1 li').eq(i).click(function(){
					$(this).attr("class",'active');
					$(this).siblings().attr("class",'');
					let arr = Arr[i];
					let str =``;
					for(let j= 0;j<arr.length;j++){
						if(res != "false" && i==0){
							str += `
								<li>
									<a href="${arr[j].href}">
									<img src="/public/img/seckill/${arr[j].img}">
									<div class="right">
										<span class="title">${arr[j].title}</span>
										<span class="subtitle">${arr[j].subtitle}</span>
										<span class="price">
											<e>${arr[j].newprice}</e>元<del>${arr[j].oldprice}</del>
										</span>
										<a href="${arr[j].href}">
											<button type="button" class="now">立即抢购</button>
										</a>						
										</div>
									</a>
								</li>
							`;
						}else if(res != "false" && i!==0){
							str += `
								<li>
									<a href="javaScript:">
									<img src="/public/img/seckill/${arr[j].img}">
									<div class="right">
										<span class="title">${arr[j].title}</span>
										<span class="subtitle">${arr[j].subtitle}</span>
										<span class="price">
											<e>${arr[j].newprice}</e>元<del>${arr[j].oldprice}</del>
										</span>
										<a href="#">
											<button type="button" class="after">提醒我</button>
										</a>						
										</div>
									</a>
								</li>
							`;
						}else{
							str += `
								<li>
									<a href="javaScript:">
									<img src="/public/img/seckill/${arr[j].img}">
									<div class="right">
										<span class="title">${arr[j].title}</span>
										<span class="subtitle">${arr[j].subtitle}</span>
										<span class="price">
											<e>${arr[j].newprice}</e>元<del>${arr[j].oldprice}</del>
										</span>
										<a href="/pass/login">
											<button type="button">登录后抢购</button>
										</a>						
										</div>
									</a>
								</li>
							`;
						}
						
					}
					$('#seckill .box').css('height',(Math.ceil(arr.length/3)*203+435)+'px');
					$('#seckill .box .list').css('height',(Math.ceil(arr.length/3)*203)+'px');
					$('#seckill .box .list .ul2').html(str);
				})
			}
		})
		
		
		setTimeout(function(){
			$('#seckill .box .message .ul1 .active').click();
		},30)
		$(document).scroll(function(){
			if($(document).scrollTop() > 260){
				$('#seckill .box .message').css({position:"fixed",top:0});
			}else{
				$('#seckill .box .message').css({position:"relative",top:"103px"});
			}
		})
		
	}
	return {
		changeColor
	}
})
