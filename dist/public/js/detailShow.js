define(["jquery"],function () {
    function close() {
        $('#remind .close').click(function () {
            $('#remind').css('display','none')
        })
        $.ajax({
            type:'get',
            url:'/islogin',
            success(data){
                if(data != "false"){
                    $('#remind').css('display','none')
                }
            }
        })
    }
    function promise() {
    let url = '/detail?id=' + window.location.search.split('=')[1]
    var ban = []
    var color = []
    var title = ''
    var describe = ''
    var sale = ''
    var office = ''
    var price = null
    var oldprice = ''
    var version = []
    var insurance = []
    var img1 = []
    var img2 = []
    var img3 = []
    var tag = []
    var discount = []
    var count = null
    var chose = {}
    var superStr = {}
    new Promise(((resolve, reject) => {
        $.ajax({
            type:'post',
            url,
            success(data) {
                resolve(JSON.parse(data)[0])
            },
            error(err) {
                reject(err)
            }
        })
    }))
        .then((data) => {
            ban = JSON.parse(data.banner)
            if(data.color != ''){
                color = JSON.parse(data.color)
                $('#box .product .productDetail .color .cUl').css('height',(Math.ceil(color.length/2)*50) + 'px')
                let c = ``
                for (let i=0;i<color.length;i++){
                   c += `<li><a href="javaScript:">${color[i]}</a></li>`
                }
                $('#box .product .productDetail .color .cUl').html(c)
                $('#box .product .productDetail .color .cUl li').eq(0).attr('class','active')
                for (let i =0;i<color.length;i++){
                    $('#box .product .productDetail .color .cUl li').eq(i).click(function () {
                        $(this).attr('class','active')
                        $(this).siblings().attr('class','')
                        chose.color = color[i]
                        Chose()
                    })
                }
            }else {
                $('#box .product .productDetail .color').css('display','none')
            }
            title = data.title
            describe = data.describe
            sale = data.sale
            office = data.office
            price= data.price
            oldprice = data.oldprice
            document.title = title
            $('#box .product .productDetail .productTitle').html(title)
            $('#box .product .productDetail .about .sale').html('「'+sale+'」')
            $('#box .product .productDetail .about .describe').html(describe)
            $('#box .product .productDetail .office').html(office)
            $('#box .product .productDetail .price .newPrice').html(price)
            $('#box .product .productDetail .price .oldPrice').html(oldprice)

            if(data.version != ''){
                version = JSON.parse(data.version)
                let v = ``
                for (let i=0;i<version.length;i++){
                    v += `<li><a href="javaScript:">${version[i]}</a></li>`
                }
                $('#box .product .productDetail .version .vUl').html(v)
                $('#box .product .productDetail .version .vUl li').eq(0).attr('class','active')
                $('#box .product .productDetail .version .vUl').css('height',(Math.ceil(version.length/2)*50) + 'px')
                for (let i =0;i<version.length;i++){
                    $('#box .product .productDetail .version .vUl li').eq(i).click(function () {
                        $(this).attr('class','active')
                        $(this).siblings().attr('class','')
                        chose.version = version[i]
                        Chose()
                    })
                }
            }else {
                $('#box .product .productDetail .version').css('display','none')
            }


            if(data.insurance != ''){
                let accident = ``
                let extension = ``
                let space = ``
                insurance = JSON.parse(data.insurance)
                let youhui = null
                for (let i=0;i<insurance.length;i++){
                    if (insurance[i].discount == 0){
                        youhui = insurance[i].price + '元'
                    }else {
                        youhui = `已省${insurance[i].discount}元`
                    }
                    if (insurance[i].name == "意外保护") {
                        accident += `
                             <li id="${i}">
                                 <span id="radio" class=""></span>
                                 <img src="/public/img/product/${data.id}/${insurance[i].img}" alt="" class="imgs">
                                 <div class="theBox">
                                      <h3 class="insurancetitle">${insurance[i].title}<span class="price">${youhui}</span></h3>
                                      <p class="insuranceSubtitle">${insurance[i].sub}</p>
                                      <p class="check"><span id="checkbox"></span> 我已阅读 <a href="#">服务条款 | </a><a href="#">常见问题</a></p>
                                 </div>
                             </li>
                        `
                    }
                    if (insurance[i].name == "延长保修") {
                        extension += `
                             <li id="${i}">
                                 <span id="radio" class=""></span>
                                 <img src="/public/img/product/${data.id}/${insurance[i].img}" alt="" class="imgs">
                                 <div class="theBox">
                                      <h3 class="insurancetitle">${insurance[i].title}<span class="price">${youhui}</span></h3>
                                      <p class="insuranceSubtitle">${insurance[i].sub}</p>
                                      <p class="check"><span id="checkbox"></span> 我已阅读 <a href="#">服务条款 | </a><a href="#">常见问题</a></p>
                                 </div>
                             </li>
                        `
                    }
                    if (insurance[i].name == "云空间服务") {
                        space += `
                             <li id="${i}">
                                 <span id="radio" class=""></span>
                                 <img src="/public/img/product/${data.id}/${insurance[i].img}" alt="" class="imgs">
                                 <div class="theBox">
                                      <h3 class="insurancetitle">${insurance[i].title}<span class="price">${youhui}</span></h3>
                                      <p class="insuranceSubtitle">${insurance[i].sub}</p>
                                      <p class="check"><span id="checkbox"></span> 我已阅读 <a href="#">服务条款 | </a><a href="#">常见问题</a></p>
                                 </div>
                             </li>
                        `
                    }
                }
                let zindex = 10

                if (accident != ``){
                    $('#box .product .productDetail .accident .insurance').html(accident)
                    for (let i = 0; i < $('#box .product .productDetail .accident .insurance li').length; i++) {
                        $('#box .product .productDetail .accident .insurance li').eq(i).click(function () {
                            if ($(this).css('borderColor') == 'rgb(224, 224, 224)' || $('#box .product .productDetail .accident .insurance #radio').eq(i).attr('class') == '') {
                                $(this).css({borderColor:'#ff6700',zIndex:zindex})
                                zindex ++
                                $('#box .product .productDetail .accident .insurance #radio').eq(i).attr('class', 'iconfont icon-duigou')
                                $('#box .product .productDetail .accident .insurance #checkbox').eq(i).attr('class', 'iconfont icon-duigou')
                                $(this).siblings().css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .accident .insurance #radio').not($('#box .product .productDetail .accident .insurance #radio').eq(i)).attr('class', '')
                                $('#box .product .productDetail .accident .insurance #checkbox').not($('#box .product .productDetail .accident .insurance #checkbox').eq(i)).attr('class', '')
                                chose.accident = insurance[$(this).attr('id')]
                                Chose()
                            }else {
                                $(this).css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .accident .insurance #radio').eq(i).attr('class', '')
                                $('#box .product .productDetail .accident .insurance #checkbox').eq(i).attr('class', '')
                                delete chose.accident
                                Chose()
                            }
                        })
                    }
                }else {
                    $('#box .product .productDetail .accident').css('display','none')
                }
                if (extension != ``){
                    $('#box .product .productDetail .extension .insurance').html(extension)
                    for (let i = 0; i < $('#box .product .productDetail .extension .insurance li').length; i++) {
                        $('#box .product .productDetail .extension .insurance li').eq(i).click(function () {
                            if ($(this).css('borderColor') == 'rgb(224, 224, 224)' || $('#box .product .productDetail .extension .insurance #radio').eq(i).attr('class') == '') {
                                $(this).css({borderColor:'#ff6700',zIndex:zindex})
                                zindex ++
                                $('#box .product .productDetail .extension .insurance #radio').eq(i).attr('class', 'iconfont icon-duigou')
                                $('#box .product .productDetail .extension .insurance #checkbox').eq(i).attr('class', 'iconfont icon-duigou')
                                $(this).siblings().css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .extension .insurance #radio').not($('#box .product .productDetail .extension .insurance #radio').eq(i)).attr('class', '')
                                $('#box .product .productDetail .extension .insurance #checkbox').not($('#box .product .productDetail .extension .insurance #checkbox').eq(i)).attr('class', '')
                                chose.extention = insurance[$(this).attr('id')]
                                Chose()
                            }else {
                                $(this).css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .extension .insurance #radio').eq(i).attr('class', '')
                                $('#box .product .productDetail .extension .insurance #checkbox').eq(i).attr('class', '')
                                delete chose.extention
                                Chose()
                            }
                        })
                    }
                }else {
                    $('#box .product .productDetail .extension').css('display','none')
                }
                if (space != ``){
                    $('#box .product .productDetail .space .insurance').html(space)
                    for (let i = 0; i < $('#box .product .productDetail .space .insurance li').length; i++) {
                        $('#box .product .productDetail .space .insurance li').eq(i).click(function () {
                            if ($(this).css('borderColor') == 'rgb(224, 224, 224)' || $('#box .product .productDetail .space .insurance #radio').eq(i).attr('class') == '') {
                                $(this).css({borderColor:'#ff6700',zIndex:zindex})
                                zindex ++
                                $('#box .product .productDetail .space .insurance #radio').eq(i).attr('class', 'iconfont icon-duigou')
                                $('#box .product .productDetail .space .insurance #checkbox').eq(i).attr('class', 'iconfont icon-duigou')
                                $(this).siblings().css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .space .insurance #radio').not($('#box .product .productDetail .space .insurance #radio').eq(i)).attr('class', '')
                                $('#box .product .productDetail .space .insurance #checkbox').not($('#box .product .productDetail .space .insurance #checkbox').eq(i)).attr('class', '')
                                chose.space = insurance[$(this).attr('id')]
                                Chose()
                            }else {
                                $(this).css('borderColor', '#e0e0e0')
                                $('#box .product .productDetail .space .insurance #radio').eq(i).attr('class', '')
                                $('#box .product .productDetail .space .insurance #checkbox').eq(i).attr('class', '')
                                delete chose.space
                                Chose()
                            }
                        })
                    }
                }else {

                    $('#box .product .productDetail .space').css('display','none')
                }
            }else {
                $('#box .product .productDetail .space').css('display','none')
                $('#box .product .productDetail .extension').css('display','none')
                $('#box .product .productDetail .accident').css('display','none')
            }
            if(data.img1 != ''){
                img1 = JSON.parse(data.img1)
            }

            if(data.img2 != ''){
                img2 = JSON.parse(data.img2)
            }
            if(data.img3 != ''){
                img3 = JSON.parse(data.img3)
            }
            if (img2 == '') {
                $('#container .title').css('display','none')
                let str = ``
                for (let i = 0;i < img1.img.length;i++){
                    str += `<img src="/public/img/product/${data.id}/${img1.img[i]}" alt="">`
                }
                $('#container .content').html(str)
            }else {
                if (img3 == '') {
                    let str1 = `<span>${img1.name}</span><span>${img2.name}</span>`
                    $('#container .title').html(str1)
                    let $span = $('#container .title span')
                    $span.eq(0).attr('class','active').click(function () {
                        $(this).attr('class','active').siblings().attr('class','')
                        $('#container .content').html(str2)
                    })
                    let str2 = ``
                    let str3 = ``
                    for (let i = 0;i < img1.img.length;i++){
                        str2 += `<img src="/public/img/product/${data.id}/${img1.img[i]}" alt="">`
                    }
                    for (let i = 0;i < img2.img.length;i++){
                        str3 += `<img src="/public/img/product/${data.id}/${img2.img[i]}" alt="">`
                    }
                    $('#container .content').html(str2)
                    $span.eq(1).click(function () {
                        $(this).attr('class','active').siblings().attr('class','')
                        $('#container .content').html(str3)
                    })
                } else if (img3 != '') {
                    let str1 = `<span>${img1.name}</span><span>${img2.name}</span><span>${img3.name}</span>`
                    $('#container .title').html(str1)
                    let $span = $('#container .title span')
                    $span.eq(0).attr('class','active').click(function () {
                        $(this).attr('class','active').siblings().attr('class','')
                        $('#container .content').html(str2)
                    })
                    let str2 = ``
                    let str3 = ``
                    let str4 = ``
                    for (let i = 0;i < img1.img.length;i++){
                        str2 += `<img src="/public/img/product/${data.id}/${img1.img[i]}" alt="">`
                    }
                    for (let i = 0;i < img2.img.length;i++){
                        str3 += `<img src="/public/img/product/${data.id}/${img2.img[i]}" alt="">`
                    }
                    for (let i = 0;i < img3.img.length;i++){
                        str3 += `<img src="/public/img/product/${data.id}/${img3.img[i]}" alt="">`
                    }
                    $('#container .content').html(str2)
                    $span.eq(1).click(function () {
                        $(this).attr('class','active').siblings().attr('class','')
                        $('#container .content').html(str3)
                    })
                    $span.eq(2).click(function () {
                        $(this).attr('class','active').siblings().attr('class','')
                        $('#container .content').html(str4)
                    })
                }
            }
            tag = JSON.parse(data.tag)
            if(data.discount != ''){
                discount = JSON.parse(data.discount)
            }
            count = data.count
            let str1 = ``
            let str2 = ""
            for(let i=0;i<ban.length;i++) {
                str1 += `<li><img src="/public/img/product/${data.id}/${ban[i]}" alt=""></li>`
                str2 += "<li></li>"
            }
            $('#box .product .show .bannerUl').html(str1)
            $('#box .product .show .bullet').html(str2).css('marginLeft',(560 - (ban.length*50 + (ban.length-1)*10))/2 + 'px')
            $('#box .product .show .bullet li').eq(0).attr('class','active')
            $('.detailTitle h2').html(title)
            slide(ban.length)
            if (count == 0){
                $('.productDetail .address .xianhuo').html('该地区暂时缺货').css('color','#b7825f')
            }else if(count > 0 && count <= 20){
                $('.productDetail .address .xianhuo').html('库存紧张').css('color','#ff0116')
            }else {
                $('.productDetail .address .xianhuo').html('有现货').css('color','#ff6700')
            }
            Chose()

            function Chose() {
                if (!chose.color && color != ''){
                    chose.color = color[0]
                }else if (color == ''){
                    chose.color = ''
                }
                if(!chose.version && version != ''){
                    chose.version = version[0]
                }else if (version == ''){
                    chose.version = ''
                }
                var P = 0
                let str1 = `<p>${title} ${chose.color} ${chose.version}<span class='alongPrice'>${price}元<del>${oldprice}</del></span></p>`
                let str2 =``
                let str3 = ``
                let str4 = ``
                if(chose.accident) {
                    let old = ''
                    if (chose.accident.discount != 0){
                        old = chose.accident.price + '元'
                    }
                    P = chose.accident.price - chose.accident.discount
                    str2 = `<p>${chose.accident.title}<span class='alongPrice'>${P}元<del>${old}</del></span></p>`
                }
                var P1 = 0
                if(chose.extention) {
                    let old = ''
                    if (chose.extention.discount != 0){
                        old = chose.extention.price + '元'
                    }
                    P1 = chose.extention.price - chose.extention.discount
                    str3 = `<p>${chose.extention.title}<span class='alongPrice'>${P1}元<del>${old}</del></span></p>`
                }
                var P2 = 0
                if(chose.space) {
                    let old = ''
                    if (chose.space.discount != 0){
                        old = chose.space.price + '元'
                    }
                    P2 = chose.space.price - chose.space.discount
                    str4 = `<p>${chose.space.title}<span class='alongPrice'>${P2}元<del>${old}</del></span></p>`
                }
                let str5 = `
                    <div class="total">总计: <span class="allPrice">${price + P + P1 + P2}</span>元</div>
                `
                let strS = str1 + str2 + str3 + str4 + str5
                $('#box .product .productDetail .sun').html(strS)
                superStr.name = `${title} ${chose.color} ${chose.version}`
            }
            $('title')
            $('#box .product .productDetail .button .jiagou').click(function () {
                if ($('#box .product .productDetail .button .jiagou').attr('id') == 'islogin') {
                    superStr.id = data.id
                    superStr.cars = data.cars
                    superStr.num = 1
                    superStr.price = price
                    $.ajax({
                        type:'post',
                        url:'/addbuybus',
                        data:{
                            str:JSON.stringify(superStr)
                        },
                        success(data){
                            if (data == 200) {
                                $.cookie("buybus",superStr.name,{expires:7})
                                location.href='/buy/success'
                            }
                        }
                    })
                }else {
                    return
                }

            })
        })
        .catch((err) => {
            console.log(err);
        })
    }
    function slide(n) {
        let $li = $('#box .product .show .bannerUl li')
        let $bullet = $('#box .product .show .bullet li')
        let timer = null
        let thisShow = 0
        for (let i=0;i<n;i++){
            $bullet.eq(i).click(function () {
                thisShow = i
                $li.eq(thisShow).children().css('opacity','1')
                $li.eq(thisShow).siblings().children().css('opacity','0')
                $bullet.eq(thisShow).attr('class','active')
                $bullet.eq(thisShow).siblings().attr('class','')
            })
        }
        $('#box .product .show .toLeft').click(function () {
            thisShow --
            if (thisShow < 0){
                thisShow = n-1
            }
            $li.eq(thisShow).children().css('opacity','1')
            $li.eq(thisShow).siblings().children().css('opacity','0')
            $bullet.eq(thisShow).attr('class','active')
            $bullet.eq(thisShow).siblings().attr('class','')
        })
        $('#box .product .show .toRight').click(function () {
            thisShow ++
            if (thisShow >= n){
                thisShow = 0
            }
            $li.eq(thisShow).children().css('opacity','1')
            $li.eq(thisShow).siblings().children().css('opacity','0')
            $bullet.eq(thisShow).attr('class','active')
            $bullet.eq(thisShow).siblings().attr('class','')
        })
        $('#box .product .show').mouseenter(function () {
            clearInterval(timer)
        }).mouseleave(function () {
            timer = setInterval(function () {
                $li.eq(thisShow).children().css('opacity','1')
                $li.eq(thisShow).siblings().children().css('opacity','0')
                $bullet.eq(thisShow).attr('class','active')
                $bullet.eq(thisShow).siblings().attr('class','')
                thisShow++
                if (thisShow == n){
                    thisShow = 0
                }
            },3000)
        })
        timer = setInterval(function () {
            $li.eq(thisShow).children().css('opacity','1')
            $li.eq(thisShow).siblings().children().css('opacity','0')
            $bullet.eq(thisShow).attr('class','active')
            $bullet.eq(thisShow).siblings().attr('class','')
            thisShow++
            if (thisShow == n){
                thisShow = 0
            }
        },3000)
    }
    return{
        close,
        promise
    }
})