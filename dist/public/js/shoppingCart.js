define(["jquery","cookie"],function () {
    function shopping() {
       new Promise(resolve => {
           $.ajax({
               type:'get',
               url:'/islogin',
               success:function(data) {
                   if(data != 'false') {
                       resolve()
                   }else {
                       return
                   }
               }
           })
       })
           .then(() => {
               return   new Promise(((resolve,reject) => {
                   $.ajax({
                       type:'post',
                       url:'/cars',
                       success(data){
                           if (data != '100') {
                               resolve(JSON.parse(JSON.parse(data)))
                           }else {
                                reject()
                           }
                       }
                   })
               }))
           })
           .then((data) => {
               scoll(data.length)
               let str = ``
               let totalPrice = 0
               let totalSum = 0
               let str2 = ``
               for (let i=0;i<data.length;i++) {
                   totalPrice += data[i].price*data[i].num
                   totalSum += data[i].num
                   str += `
                       <li class="${i}">
                        <div class="products">
                            <a href="/buy/detail?id=${data[i].id}"><img src="/public/img/product/${data[i].id}/${data[i].cars}" alt=""></a>
                                <a href="/buy/detail?id=${data[i].id}" class="name">${data[i].name}</a>
                                <span class="price">${data[i].price}元 x ${data[i].num}</span>
                                <span id="${i}" class="iconfont icon-guanbi_huaban1" data-name="${data[i].name}"}"></span>
                        </div>
                     </li>
                   `
                   str2 += `
                        <tr class="${i}">
                             <td><span class="" id="chose" data-price="${data[i].price}" data-num="${data[i].num}"></span></td>
                             <td><a href=""><img src="/public/img/product/${data[i].id}/${data[i].cars}" alt=""></td>
                             <td><a href=""><h3>${data[i].name}</h3></a></td>
                             <td>${data[i].price}元</td>
                             <td><div class="count" data-name="${data[i].name}"><span class="deduce">-</span><span class="sum">${data[i].num}</span><span class="addtion">+</span></div></td>
                             <td>${data[i].price*data[i].num}元</td>
                             <td><span class="iconfont icon-guanbi_huaban1" data-name="${data[i].name}"></span></td>
                        </tr>
                   `
               }
               $('#xmHeader .container .gouwuche .shangpin .cars').html(str)
               $('#xmHeader .container .gouwuche .shangpin .settlement .total p .sum').html(totalSum)
               $('#xmHeader .container .gouwuche .shangpin .settlement .total .totalPrice i').html(totalPrice)
               $('#xmHeader .container .gouwuche .thenum').html('('+totalSum+')')
               $('#box .buybus table tbody').html(str2)
               if($('#toTop')) {
                   $('#toTop .spot').css('display','block')
                   $('#toTop .gouwuche span').html('('+totalSum+')')
                   $('#toTop2 .spot').css('display','block').children().html(totalSum)
               }
                $('#box .buybus .jiesuan .totalnum').html(totalSum)
               let checked = 0
               let payFor = 0
               for (let i = 0; i<data.length;i++) {
                   $('#xmHeader .container .gouwuche .shangpin .cars .iconfont').eq(i).click(function () {
                       deletes($(this))
                   })
                   if (data[i].num == 1){
                       $('#box .buybus table .deduce').eq(i).css({
                           color:'#ebebeb',
                           pointerEvents:'none'
                       })
                   }else {
                       $('#box .buybus table .deduce').eq(i).css({
                           color:'#757575',
                           pointerEvents:'auto'
                       })
                   }
                   $('#box .buybus table .deduce').eq(i).click(function () {
                        data[i].num--
                       abc($(this).parent().data('name'),data[i].num)
                   })
                   $('#box .buybus table .addtion').eq(i).click(function () {
                       data[i].num++
                        abc($(this).parent().data('name'),data[i].num)
                   })
                   $('#box .buybus table .icon-guanbi_huaban1').eq(i).click(function () {
                        deletes($(this))
                   })

                   $('#box .buybus table #chose').eq(i).click(function () {
                       if ($('#box .buybus table #chose').eq(i).attr('class') != 'iconfont icon-duigou checked') {
                          checked += $(this).data('num')
                           payFor += $(this).data('price')*$(this).data('num')
                           $('#box .buybus table #chose').eq(i).attr('class','iconfont icon-duigou checked')
                       }else {
                           checked -= $(this).data('num')
                           payFor -= $(this).data('price')*$(this).data('num')
                           $('#box .buybus table #chose').eq(i).attr('class','')
                       }
                       $('.buybus .jiesuan .chosed').html(checked)
                       $('.buybus .jiesuan .totalPrice .price').html(payFor)
                       if (checked != totalSum) {
                           $('#box .buybus table #choseAll').attr('class','')
                       }else {
                           $('#box .buybus table #choseAll').attr('class','iconfont icon-duigou checked')
                       }
                   })
               }
               $('#box .buybus table #choseAll').click(function () {
                   if ($('#box .buybus table #choseAll').attr('class') != 'iconfont icon-duigou checked'){
                       $('#box .buybus table #choseAll').attr('class','iconfont icon-duigou checked')
                       $('#box .buybus table #chose').attr('class','iconfont icon-duigou checked')
                       checked = totalSum
                       payFor = totalPrice
                   }else {
                       $('#box .buybus table #choseAll').attr('class','')
                       $('#box .buybus table #chose').attr('class','')
                       checked = 0
                       payFor = 0
                   }
                   $('.buybus .jiesuan .chosed').html(checked)
                   $('.buybus .jiesuan .totalPrice .price').html(payFor)
               })
                $('#box .buybus .jiesuan .goPay').click(function () {
                    alert("改功能暂未开放， 请稍后再拨")
                })
           })
           .catch(() => {
               $('#xmHeader .container .gouwuche .shangpin').html('<center>购物车中还没有商品，赶紧选购吧！</center>')
               if($('#toTop')) {
                   $('#toTop .spot').css('display','none')
                   $('#toTop .gouwuche span').html('(0)')
                   $('#toTop2 .spot').css('display','none')
               }
               $('#xmHeader .container .gouwuche .thenum').html('(0)')
               $('#box .buybus table tbody').html('<h2>购物空空的， 赶快选购吧</h2>')
               $('#box .buybus .jieduan').css('display','none')
               $('.recommend .title').html('为您推荐')
           })
    }
    function deletes(node) {
        $.ajax({
            type: 'post',
            url: '/debus',
            data: {
                name: node.data('name')
            },
            success(data) {
                if (data = '200') {
                    $('#xmHeader .container .gouwuche .shangpin .cars li').filter('.' + node.attr('id')).remove()
                    shopping()
                }
            }
        })
    }
    function abc(data,num) {
        $.ajax({
            type:'post',
            url:'/changenum',
            data:{
                name: JSON.stringify(data),
                num
            },
            success(data){
                if (data == '200') {
                    shopping()
                }
            }
        })
        shopping()
    }
    function scoll(l) {
        if (l >= 5) {
            $('#xmHeader .container .gouwuche .shangpin ul').css('overflowY','scroll')
        }else {
            $('#xmHeader .container .gouwuche .shangpin ul').css('overflowY','hidden')
        }
    }
    function reload() {
        $('#xmHeader .container .gouwuche').mouseenter(function () {
            shopping()
        })
    }
    return{
        shopping,reload
    }
})
