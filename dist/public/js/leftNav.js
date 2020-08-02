define(["jquery"],function(){
	function leftNav(){
		$('.leftNav').mouseleave(function(){
			$('.thisShow').css('display','none');
			$('.leftNav .ul1 li').css('backgroundColor','rgba(0,0,0,0)')
		})
	}
	function content(){
		$.ajax({
			type:'post',
			url:'/leftnav',
			dataType:'',
			success(data){
				data = JSON.parse(data)
				let arr1 = []
				let arr2 = []
				let arr3 = []
				let arr4 = []
				let arr5 = []
				let arr6 = []
				let arr7 = []
				let arr8 = []
				let arr9 = []
				let arr10 = []
				for(let i=0;i<data.length;i++){
					if(data[i].tag == 1){
						arr1.push(data[i])
					}else if(data[i].tag == 2){
						arr2.push(data[i])
					}else if(data[i].tag == 3){
						arr3.push(data[i])
					}else if(data[i].tag == 4){
						arr4.push(data[i])
					}else if(data[i].tag == 5){
						arr5.push(data[i])
					}else if(data[i].tag == 6){
						arr6.push(data[i])
					}else if(data[i].tag == 7){
						arr7.push(data[i])
					}else if(data[i].tag == 8){
						arr8.push(data[i])
					}else if(data[i].tag == 9){
						arr9.push(data[i])
					}else if(data[i].tag == 10){
						arr10.push(data[i])
					}
				}
				let $li = $('.leftNav .ul1 li')
				let $li1 = $('.thisShow .thisUl1 li');
				let $li2 = $('.thisShow .thisUl2 li');
				let $li3 = $('.thisShow .thisUl3 li');
				let $li4 = $('.thisShow .thisUl4 li');
				show(0,arr1);
				show(1,arr2);
				show(2,arr3);
				show(3,arr4);
				show(4,arr5);
				show(5,arr6);
				show(6,arr7);
				show(7,arr8);
				show(8,arr9);
				show(9,arr10);
				for (let i=0;i<$('.thisShow ul li').length;i++){
					$('.thisShow ul li').eq(i).click(function () {
						let href = $(this).children().filter('span').data('href')
						if (href == 'javaScript:') {
							return
						}else {
							location.href=href
						}
					})
				}

				function show(i,arr){
					$('.leftNav .ul1 li').eq(i).mouseenter(function(){
						$('.thisShow li').html('')
						let a = Math.ceil(arr.length/6)
						$('#xmBanner .leftNav .thisShow').css('width',(a*247+3)+"px")
						for(let i =0;i<arr.length;i++){
							if(i<6){
								$li1.eq(i).html(`<img src="/public/img/leftNav/${arr[i].tag}/${arr[i].img}" alt=""><span data-href="${arr[i].href}">${arr[i].name}</span>`)
							}else if(i < 12){
								$li2.eq(i-6).html(`<img src="/public/img/leftNav/${arr[i].tag}/${arr[i].img}" alt=""><span data-href="${arr[i].href}">${arr[i].name}</span>`)
							}else if(i < 18){
								$li3.eq(i-12).html(`<img src="/public/img/leftNav/${arr[i].tag}/${arr[i].img}" alt=""><span data-href="${arr[i].href}">${arr[i].name}</span>`)
							}else if(i < 24){
								$li4.eq(i-18).html(`<img src="/public/img/leftNav/${arr[i].tag}/${arr[i].img}" alt=""><span data-href="${arr[i].href}">${arr[i].name}</span>`)
							}
						}
					})
				}
			},
			error(err){
				console.log(err)
			}
		})
	}
	return {
		leftnav:leftNav,
		content
	}
})