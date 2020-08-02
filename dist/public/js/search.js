define(["jquery"],function(){
	function search(){
		$(document).click(function (event) {
			if (event.target.id == 'search' || event.target.id == 'search_bar') {
				$('#search_bar').css('display','block')
			}else {
				$('#search_bar').css('display','none')
			}
		})
		$.ajax({
			type:'post',
			url:'/search',
			success:function(data){
				data = JSON.parse(data)
				let input = []
				let list = []
				for(let i = 0;i<data.length;i++){
					if(data[i].input != null){
						input.push(data[i].input)
					}
					if(data[i].list != null){
						list.push(data[i].list)
					}
				}
				var timer = null
				$('#search').attr('placeholder',input[3])
				timer = setInterval(function(){
					let count = Math.round(Math.random()*(input.length - 1))
					$('#search').attr('placeholder',input[count])
				},3000)
				$('#search').focus(function(){
					clearInterval(timer)
				}).blur(function(){
					timer = setInterval(function(){
						let count = Math.round(Math.random()*(input.length - 1))
						$('#search').attr('placeholder',input[count])
					},3000)
				})
				let str = ``
				for(let i =0;i<list.length;i++){
					str += `<label for="search"><li>${list[i]}</li></label>`
				}
				$('#search_bar .ul2').html(str)
				$("#search_bar").click(function () {
					$("#search").focus()
				})
				for (let i=0;i<$('#search_bar .ul2 li').length;i++) {
					$('#search_bar .ul2 li').eq(i).click(function () {
						let url = `/getSearch?word=${list[i]}`
						location.href = url
					})
				}
			},
			error:function(err){
				console.log(err)
			}
		})
		$('#search_bto').click(function () {
			gets()
		})
		$('#search').keydown(function (even) {
			even = even || window.even
			if(even.keyCode == 13) {
				gets()
			}
		})

	}
	function gets() {
		let url = ``
		if ($('#search').val() == ''){
			url = `/getSearch?word=${$('#search').attr('placeholder')}`
		}else {
			url = `/getSearch?word=${$('#search').val()}`
		}
		location.href=url
	}
	return{
		search
	}
})