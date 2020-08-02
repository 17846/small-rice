define(["jquery"],function(){
	function topNavShow(){
			$.ajax({
				type:'post',
				url:'/topnav',
				success:function(data){
					let arr = JSON.parse(data)
					let mi = []
					let AIhardware = []
					let appliances = []
					let notebook = []
					let redmi = []
					let router = []
					let tv = []
					for(let i = 0;i<arr.length;i++){
						if(arr[i].tag == 'mi'){
							mi.push(arr[i]);
						}else if(arr[i].tag == 'AIhardware'){
							AIhardware.push(arr[i])
						}else if(arr[i].tag == 'appliances'){
							appliances.push(arr[i])
						}else if(arr[i].tag == 'notebook'){
							notebook.push(arr[i])
						}else if(arr[i].tag == 'redmi'){
							redmi.push(arr[i])
						}else if(arr[i].tag == 'router'){
							router.push(arr[i])
						}else if(arr[i].tag == 'tv'){
							tv.push(arr[i])
						}
					}
					let $li1 = $('.slidAdv .center .ul2 li')
					let $li2 = $('.slidAdv .center .ul3 li')
					let $li3 = $('.slidAdv .center .ul4 li')
					addcontext(mi,$('.mi'))
					addcontext(redmi,$('.redmi'))
					addcontext(AIhardware,$('.AIhardware'))
					addcontext(notebook,$('.notebook'))
					addcontext(appliances,$('.appliances'))
					addcontext(router,$('.router'))
					addcontext(tv,$('.tv'))
					function addcontext(s,$node){
						$node.mouseenter(function(){
							for(let i =0;i<s.length;i++){
								$li1.eq(i).html(`<a href="${s[i].href}"><img src="/public/img/topNav/${s[i].tag}/${s[i].src}" </a>`)
								$li2.eq(i).html(s[i].name)
								$li3.eq(i).html(s[i].price + "元起")
							}
						})
					}
					
				},
				error:function(err){
					console.log(err)
				}
			})

			
	}
	return{
		topNavShow
	}
})