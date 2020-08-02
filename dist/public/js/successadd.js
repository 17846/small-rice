define(["jquery","cookie"],function () {
    function adds() {
        let names = $.cookie('buybus')
        $('#box .success .left .text .name').html(names)
        $('#box .success .button .goback').click(function () {
            window.history.go(-1)
        })
        let $li = $('#box .recommend .ul li')

        for (let i = 0;i<$li.length;i++) {
            $li.eq(i).children().filter('.jiagou').click(function () {
                let name = $li.eq(i).data('name')
                let id = $li.eq(i).data('id')
                let cars = $li.eq(i).data('img')
                let price = $li.eq(i).data('price')
                let obj = {
                    name,id,cars,price,num:1
                }
                $.ajax({
                    type:'post',
                    url:'/addbuybus',
                    data:{
                        str:JSON.stringify(obj)
                    },
                    success(data){
                        if (data == 200) {
                            $li.eq(i).children().filter('.succ').css({
                                transform:'translateY(10px)',
                                opacity:1
                            })
                            setTimeout(function () {
                                $li.eq(i).children().filter('.succ').css({
                                    transform:'translateY(-10px)',
                                    opacity:0
                                })
                                window.history.go(0)
                            })
                        }
                    }
                })
            })
        }
    }
    return {
        adds
    }
})