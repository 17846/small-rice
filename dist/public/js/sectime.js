define(["jquery"],function(){
	function clock(){
		let arr = [{id:0,time:"00:00",next:10},{id:10,time:"10:00",next:14},{id:14,time:"14:00",next:20},{id:20,time:"20:00",next:22},{id:22,time:"22:00",next:24}]
		let date = new Date();
		let H = date.getHours();
		let M = date.getMinutes();
		let S = date.getSeconds();
		let end = new Date();
		var ab = 0
		for(let i = 0;i<arr.length;i++){
			if(arr[i].id <= H && H < arr[i].next){
				if(M > 41 && H == arr[i].next - 1){
					ab = i +1;
					if(i+1 == arr.length){
						ab = 0
					}
					break
				}else{
					ab = i;
					break
				}
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
		for(let i = 0;i<arr.length;i++){
			$('#seckill .box .message .ul1 li .time').eq(i).html(arr[i].time)
			if(i>0){
				if(arr[i].id < H){
					$('#seckill .box .message .ul1 li .open').eq(i-1).html("明日开始")
				}else{
					$('#seckill .box .message .ul1 li .open').eq(i-1).html("即将开始")
				}
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
		if(total > 0){
			$('#seckill .box .message .ul1 .clock').html(h+':'+m+':'+s)
		}else{
			let total2 = (60 - M)*60
			$('#seckill .box .message .ul1 .buying').html('即将开始')
			$('#seckill .box .message .ul1 .clock').html('00:19:00')
			$('#seckill .box .message .ul1 e').html('距开始')
			let timer2 = setInterval(function(){
				total2--;
				$('#seckill .box .message .ul1 .clock').html('00:'+Math.floor(total2/60)+':'+total2%60)
				if(total2 < 0){
					history.go(0)
				}
			},1000)
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
			$('#seckill .box .message .ul1 .clock').html(h+':'+m+':'+s)
			if(total <= 0){
				clearInterval(timer);
				$('#seckill .box .message .ul1 .clock').html('')
				$('#seckill .box .list .ul2 button').attr('disabled','disabled')
				$('#seckill .box .list .ul2 button').css('backgroundColor','#b0b0b0')
				$('#seckill .box .list .ul2 button').html('已结束')
			}
		},1000)
		
	}
	return{
		clock
	}
})