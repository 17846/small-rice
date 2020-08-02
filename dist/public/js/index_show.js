define(["jquery"],function () {
    function appliances() {
       new Promise(((resolve, reject) => {
           $.ajax({
               type:'post',
               url:'/appliances',
               success(data){
                   resolve(JSON.parse(data))
               }
           })
       }))
           .then((data) => {

               let hot = []
               let hots = null
               let tv = []
               let tvs = null
               for(let i = 0;i<data.length;i++){
                   if(data[i].tag == "hot"){
                       hot.push(data[i])
                   }else if(data[i].tag == "tv"){
                       tv.push(data[i])
                   }else if(data[i].tag == "hotS"){
                       hots = data[i]
                   }else if(data[i].tag == "tvS"){
                       tvs = data[i]
                   }
               }
               publics(0,hot,hots,$('#xmAppliance .rightNav a'),'热门',$('#xmAppliance .public .list'),'appliances')
               publics(1,tv,tvs,$('#xmAppliance .rightNav a'),'电视影音',$('#xmAppliance .public .list'),'appliances')
        })

    }
    function ai() {
        new Promise(((resolve, reject) => {
            $.ajax({
                type:'post',
                url:'/ai',
                success(data){
                    resolve(JSON.parse(data))
                }
            })
        }))
            .then((data) => {
                let hot = []
                let hots = null
                let sec = []
                let secs = null
                let go = []
                let gos = null
                for (let i = 0; i < data.length; i++) {
                    if (data[i].tag == "hot") {
                        hot.push(data[i])
                    } else if (data[i].tag == "securiy") {
                        sec.push(data[i])
                    } else if (data[i].tag == "hotS") {
                        hots = data[i]
                    } else if (data[i].tag == "securiyS") {
                        secs = data[i]
                    } else if (data[i].tag == "go") {
                        go.push(data[i])
                    } else if (data[i].tag == "goS") {
                        gos = data[i]
                    }
                }
                publics(0,hot,hots,$('#xmAI .rightNav a'),'热门',$('#xmAI .public .list'),'AI')
                publics(1,sec,secs,$('#xmAI .rightNav a'),'安防',$('#xmAI .public .list'),'AI')
                publics(2,go,gos,$('#xmAI .rightNav a'),'出行',$('#xmAI .public .list'),'AI')
            })
    }
    function collocation() {
        new Promise(((resolve, reject) => {
            $.ajax({
                type:'post',
                url:'/collocation',
                success(data){
                    resolve(JSON.parse(data))
                },
                error(err){
                   reject(err)
                }
            })
        }))
            .then((data) => {
                let hot = []
                let hots = null
                let maior = []
                let maiors = []
                for(let i=0;i<data.length;i++){
                    if(data[i].tag == "hot"){
                        hot.push(data[i])
                    }else if(data[i].tag == "maior"){
                        maior.push(data[i])
                    }else if(data[i].tag == "hotS"){
                        hots = data[i]
                    }else if(data[i].tag == "maiorS"){
                        maiors = data[i]
                    }
                }
                publics(0,hot,hots,$('#xmCollocation .rightNav a'),'热门',$('#xmCollocation .public .list'),'collocation')
                publics(1,maior,maiors,$('#xmCollocation .rightNav a'),'耳机音箱',$('#xmCollocation .public .list'),'collocation')
            })
            .catch((err) => {
                console.log(err);
            })
    }
    function parts() {
        new Promise(((resolve, reject) => {
            $.ajax({
                type:'post',
                url:'/parts',
                success(data){
                    resolve(JSON.parse(data))
                },
                error(err){
                    reject(err)
                }
            })
        }))
            .then((data) => {
                let hot = []
                let hots = null
                let maior = []
                let maiors = []
                for(let i=0;i<data.length;i++){
                    if(data[i].tag == "hot"){
                        hot.push(data[i])
                    }else if(data[i].tag == "maior"){
                        maior.push(data[i])
                    }else if(data[i].tag == "hotS"){
                        hots = data[i]
                    }else if(data[i].tag == "maiorS"){
                        maiors = data[i]
                    }
                }
                publics(0,hot,hots,$('#xmParts .rightNav a'),'热门',$('#xmParts .public .list'),'parts')
                publics(1,maior,maiors,$('#xmParts .rightNav a'),'充电器',$('#xmParts .public .list'),'parts')
            })
            .catch((err) => {
                console.log(err);
            })
    }
    function periphery() {
        new Promise(((resolve, reject) => {
            $.ajax({
                type:'post',
                url:'/periphery',
                success(data){
                    resolve(JSON.parse(data))
                },
                error(err){
                    reject(err)
                }
            })
        }))
            .then((data) => {
                let hot = []
                let hots = null
                let maior = []
                let maiors = []
                for(let i=0;i<data.length;i++){
                    if(data[i].tag == "hot"){
                        hot.push(data[i])
                    }else if(data[i].tag == "maior"){
                        maior.push(data[i])
                    }else if(data[i].tag == "hotS"){
                        hots = data[i]
                    }else if(data[i].tag == "maiorS"){
                        maiors = data[i]
                    }
                }
                publics(0,hot,hots,$('#xmPeriphery .rightNav a'),'热门',$('#xmPeriphery .public .list'),'periphery')
                publics(1,maior,maiors,$('#xmPeriphery .rightNav a'),'出行',$('#xmPeriphery .public .list'),'periphery')
            })
            .catch((err) => {
                console.log(err);
            })
    }
    function publics(n,arr,s,node,str,node2,path) {
        let $a = node;
        $a.eq(n).mouseenter(function () {
            $a.eq(n).attr('class','boxActive')
            $a.eq(n).siblings().attr('class','')
            let str1 = ``
            for(let i=0;i<arr.length;i++){
                str1 += `
                            <div class="smallBox">
                                <li>
                                    <a href="${arr[i].href}">
                                    <div>
                                        <img src="/public/img/${path}/${arr[i].img}" >
                                        <h3 class="title">${arr[i].title}</h3>
                                        <span class="subtitle">${arr[i].subtitle}</span>
                                        <p><span class="price">${arr[i].price}</span><del>${arr[i].oldprice}</del></p>
                                    </div>
                                    </a>
                                </li>
                            </div>
                        `
            }
            str1 += `
                        <div class="smallBox lastSmall">
                            <li>
                            <a href="${s.href}" target="_blank">
                            <div class="lastTop">
                            <img src="/public/img/${path}/${s.img}" >
                            <p>
                            <span class="title">${s.title}</span>
                            <span class="price">${s.price}</span>
                            </p>
                            </div>
                            </a>
                            <a href="#">
                            <div class="lastBot">
                            <span class="more">浏览更多</span>
                            <span class="subMore">${str}</span>
                            <span class="iconfont icon-xiangyoujiantou"></span>
                            </div>
                            </a>
                           </li>
                        </div>
                   `
            node2.html(str1)
        })
    }
    return{
        appliances,
        ai,
        collocation,
        parts,
        periphery
    }
})