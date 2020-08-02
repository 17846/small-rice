define(["jquery"],function(){
	function clock(){
		let arr = [{id:0,time:"00:00",next:10},{id:10,time:"10:00",next:14},{id:14,time:"14:00",next:20},{id:20,time:"20:00",next:22},{id:22,time:"22:00",next:24}]
		let date = new Date();
		let H = date.getHours();
		let M = date.getMinutes();
		let S = date.getSeconds();
		let end = new Date();
		for(let i = 0;i<arr.length;i++){
			if(arr[i].id <= H && H < arr[i].next){
				ab = i;
				break
			}
		}
		for(let i = 0;i<ab;i++){
			let a = arr.shift()
			arr.push(a)
		}
		for(let i = 0;i<arr.length;i++){
			if(arr[i].id <= H && H < arr[i].next){
				end.setHours(arr[i].next-1);
				break
			}
		}
		end.setMinutes(40);
		end.setSeconds(59);
		let total = (end.getHours()*60*60 + 40*60 + 59) - (H*60*60 + M*60 + S)
		let timer = null;
		let h = Math.floor(total/3600);
		let m = Math.floor((total%3600)/60);
		let s = total%60;
		if(h < 10){
			h = "0" + h
		}
		if(m < 10){
			m = "0" + m
		}
		if(s < 10){
			s = "0" + s
		}
		$('#xmBuy .showTime .etc').html(arr[0].time + " 场")
		if(total > 0){
			$('#xmBuy .showTime .count .hour').html(h)
			$('#xmBuy .showTime .count .minute').html(m)
			$('#xmBuy .showTime .count .secend').html(s)
		}else{
			$('#xmBuy .showTime .count .hour').html("00")
			$('#xmBuy .showTime .count .minute').html("00")
			$('#xmBuy .showTime .count .secend').html("00")
		}
		
		timer = setInterval(function(){
			total--;
			let h = Math.floor(total/3600);
			let m = Math.floor((total%3600)/60);
			let s = total%60;
			if(h < 10){
				h = "0" + h
			}
			if(m < 10){
				m = "0" + m
			}
			if(s < 10){
				s = "0" + s
			}
			$('#xmBuy .showTime .count .hour').html(h)
			$('#xmBuy .showTime .count .minute').html(m)
			$('#xmBuy .showTime .count .secend').html(s)
			if(total <= 0){
				clearInterval(timer);
				$('#xmBuy .showTime .count .hour').html("00")
				$('#xmBuy .showTime .count .minute').html("00")
				$('#xmBuy .showTime .count .secend').html("00")
			}
		},1000)
		new Promise((resolve,reject) => {
			$.ajax({
				type:'post',
				url:'/seckill/swipe',
				success(data){
					resolve(JSON.parse(data))
				}
			})
		})
		.then((data) => {
			let str = ``
			let border = ''
			for(let i = 0;i < data.length;i++){
				if(i % 5 == 0){
					border='one'
				}else if(i % 5 == 1){
					border='two'
				}else if(i % 5 == 2){
					border='three'
				}else if(i % 5 == 3){
					border='four'
				}else if(i % 5 == 4){
					border='five'
				}
				str += `
					<li class="${border}">
						<a href="/seckill" target="_blank">
						<img src="/public/img/seckill/${data[i].img}" alt="">
						<h3>
							${data[i].title}
						</h3>
						<p class="subtitle">
							${data[i].subtitle}
						</p>
						<p class="price">
							<span>${parseInt(data[i].newprice)}</span>元 <del>${data[i].oldprice}</del>
						</p>
						</a>
					</li>
				`
			}

			$('#box #xmBuy .swipe-slide ul').html(str)
			$('#box #xmBuy .swipe-slide ul').css('width',247*data.length)
			let $li = $('#box #xmBuy .swipe-slide ul li')
			let auto = null
			let tag = null
			if($li.css('left') == "0px"){
				$('#xmBuy .bto .icon-jiantou2').css({
					pointerEvents:'none'
				}).attr('id','end')
			}
			$('#xmBuy .bto .icon-arrow-right-copy-copy-copy').click(function () {
				$('#xmBuy .bto .icon-jiantou2').css({
					pointerEvents: 'auto'
				}).attr('id', '')
				auto = true
				tag = false
				slide()
			})
			$('#xmBuy .bto .icon-jiantou2').click(function () {
				$('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css({
					pointerEvents: 'auto'
				}).attr('id', '')
				auto = false
				tag = false
				slide()
			})
			let timer = null

			timer = setInterval(function () {
				$('#xmBuy .bto .icon-jiantou2').css({
					pointerEvents: 'auto'
				}).attr('id', '')
				auto = true

				tag = false
				if($('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css('pointerEvents') == 'none'){
					$li.css('left','0px')
					tag = true
					$('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css({
						pointerEvents: 'auto'
					}).attr('id', '')
				}
				slide()
			},10000)
			$('#xmBuy .bto').mouseenter(function () {
				clearInterval(timer)
			}).mouseleave(function () {
				timer = setInterval(function () {
					$('#xmBuy .bto .icon-jiantou2').css({
						pointerEvents: 'auto'
					}).attr('id', '')
					auto = true

					tag = false
					if($('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css('pointerEvents') == 'none'){
						$li.css('left','0px')
						tag = true
						$('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css({
							pointerEvents: 'auto'
						}).attr('id', '')
					}
					slide()
				},10000)
			})
			let left = 0;
			function slide() {
				if(auto){
					left += 988
				}else {
					left -= 988
				}
				if (tag){
					left = 0
				}
				if(left >= 247*(data.length-4) && auto){
					left = 247*(data.length-4)
					$('#xmBuy .bto .icon-arrow-right-copy-copy-copy').css('pointerEvents','none')
						.attr('id','end')
				}
				if(left <= 0 && !auto){
					left = 0
					$('#xmBuy .bto .icon-jiantou2').css('pointerEvents','none')
						.attr('id','end')
				}
				$li.css({left:(-left)+'px'})
			}
		})
		
	}
	return{
		clock
	}
})