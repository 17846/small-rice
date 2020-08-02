define(["jquery"],function () {
    function position() {
        $('#box .product .productDetail .address .change').click(function () {
            $('#choseAddr').css('display','block')
            $('#choseAddr .show').animate({top:'180px'})
        })
        $('#choseAddr .show .close').click(function () {
            $('#choseAddr .show').animate({top:'150px'},function () {
                $('#choseAddr').css('display','none')
            })
        })
        var pro = ''
        var city = ''
        var county = ''
        var town = ''
        var countyClick = false
        var cityClick = false
        var proClick = false
        var a = null
        var b = null
        var c = null
        function Provice() {
            return new Promise(resolve => {
                $.ajax({
                    type:'post',
                    url:'/provice',
                    success(data){
                        data = JSON.parse(data)
                        let str  = ``
                        for (let i = 0;i<data.length;i++){
                            str += `<span id="${data[i].provice_id}">${data[i].provice_name}</span>`
                        }
                        $('#choseAddr .show .position').html(str)
                        for (let i = 0;i<data.length;i++){
                            $('#choseAddr .show .position span').eq(i).click(function () {
                                $('#choseAddr .show .title .city').css('display','inline-block').html('选择城市/地区').css('color','#757575')
                                pro = $(this).html()
                                $('#choseAddr .show .title .pro').html(pro).css('color','#ff6700')
                                if(!proClick){
                                    resolve($(this).attr('id'))
                                }else {
                                    City($(this).attr('id'))
                                }
                            })
                        }

                    }
                })
            })
        }
        function City (id) {
            return new Promise((resolve => {
                $.ajax({
                    type: 'post',
                    url:'/city',
                    data:{id},
                    success(data) {
                        data = JSON.parse(data)
                        let str2 = ``
                        for(let i=0;i<data.length;i++){
                            str2 += `<span id="${data[i].city_id}">${data[i].city_name}</span>`
                        }
                        $('#choseAddr .show .position').html(str2)
                        for (let i = 0;i<data.length;i++){
                            $('#choseAddr .show .position span').eq(i).click(function () {
                                $('#choseAddr .show .title .county').css('display','inline-block').html('选择区县').css('color','#757575')
                                city = $(this).html()
                                $('#choseAddr .show .title .city').html(city).css('color','#ff6700')
                                if(!cityClick){
                                    resolve($(this).attr('id'))
                                }else {
                                    County($(this).attr('id'))
                                }
                            })
                        }
                        $('#choseAddr .show .title .pro').click(function () {
                            $('#choseAddr .show .title .town').css('display', 'none')
                            $('#choseAddr .show .title .county').css('display', 'none')
                            $('#choseAddr .show .title .city').css('display', 'none')
                            proClick = true
                            cityClick = true
                            countyClick = true
                            Provice()
                        })
                    }
                })
            }))
        }
        function County(id) {
            return new Promise((resolve => {
                $.ajax({
                    type: 'post',
                    url:'/county',
                    data:{id},
                    success(data) {
                        data = JSON.parse(data)
                        let str3 = ``
                        for(let i=0;i<data.length;i++){
                            str3 += `<span id="${data[i].county_id}">${data[i].county_name}</span>`
                        }
                        $('#choseAddr .show .position').html(str3)
                        $('#choseAddr .show .title .city').click(function () {
                            if($('#choseAddr .show .title .city').css('color') == 'rgb(255, 103, 0)') {
                                $('#choseAddr .show .title .town').css('display','none')
                                $('#choseAddr .show .title .county').css('display','none')
                                $('#choseAddr .show .title .city').html('选择城市/地区').css('color','#757575')
                                cityClick = true
                                countyClick = true
                                City(a)
                            }else {
                                return
                            }

                        })
                        for (let i = 0;i<data.length;i++){
                            $('#choseAddr .show .position span').eq(i).click(function () {
                                $('#choseAddr .show .title .town').css('display','inline-block').html('选择配送区域').css('color','#757575')
                                county = $(this).html()
                                $('#choseAddr .show .title .county').html(county).css('color','#ff6700')
                                if(!countyClick){
                                    resolve($(this).attr('id'))
                                }else {
                                    Town($(this).attr('id'))
                                }
                            })
                        }
                    }
                })
            }))
        }
        function Town(id) {
            return new Promise((resolve => {
                $.ajax({
                    type: 'post',
                    url:'/town',
                    data:{id},
                    success(data) {
                        data = JSON.parse(data)
                        let str4 = ``
                        for(let i=0;i<data.length;i++){
                            str4 += `<span id="${data[i].town_id}">${data[i].town_name}</span>`
                        }
                        $('#choseAddr .show .position').html(str4)

                        $('#choseAddr .show .title .county').click(function () {
                            if($('#choseAddr .show .title .county').css('color') == 'rgb(255, 103, 0)'){
                                $('#choseAddr .show .title .town').css('display','none')
                                $('#choseAddr .show .title .county').html('选择区县').css('color','#757575')
                                countyClick = true
                                County(b)
                            }else {
                                return
                            }
                        })
                        for (let i = 0;i<data.length;i++){
                            $('#choseAddr .show .position span').eq(i).click(function () {
                                town = $(this).html()
                                $('#choseAddr .show').animate({top:'150px'},function () {
                                    $('#choseAddr').css('display','none')
                                })
                                $('#box .product .productDetail .address .pro').html(pro)
                                $('#box .product .productDetail .address .city').html(city)
                                $('#box .product .productDetail .address .county').html(county)
                                $('#box .product .productDetail .address .town').html(town)
                                $('#choseAddr .show .title .town').html(town).css('color','#ff6700')
                            })
                        }
                    }
                })
            }))
        }
        async function wait() {
            a = await Provice()
            b = await City(a)
            c = await County(b)
            await Town(c)
        }
        wait()
    }
    return{
        position
    }
})