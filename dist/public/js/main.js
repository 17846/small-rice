console.log("加载成功");

require.config({
	paths:{
		jquery:"/public/js/jquery",
		cookie:"/public/js/jquery.cookie",
		slide:"/public/js/slide",
		change:"/public/js/changeCss",
		leftNa:"/public/js/leftNav",
		banNer:"/public/js/banner",
		play:"/public/js/play",
		top:"/public/js/totop",
		login:"/public/js/logining",
		out:"/public/js/logOut",
		topNav:"/public/js/topNav",
		search:"/public/js/search",
		sec:"/public/js/indexsec",
		iShow:"/public/js/index_show",
		shop:"/public/js/shoppingCart"
	},
	shim:{
		//设置依赖关系
		cookie:["jquery"]
	}
})

require(["slide","change","leftNa","banNer","play","top","login","out","topNav","search","sec","iShow","shop"],function(slide,chan,left,ban,pl,top,log,out,topNav,sea,sec,iShow,shop){
	slide.sli($('#down'),$('.download'),300);
	slide.sli($('#theuser'),$('.person'),300);
	slide.sli($('.gouwuche'),$('.shangpin'),300);
	slide.sli($(".topNav .ul1 li:lt(7)"),$(".slidAdv"),300,false);
	slide.slideup();
	chan.change($("#search"),"borderColor","#ff6700","focus",$("#search_bto"));
	chan.change($("#search"),"borderColor","#e0e0e0","blur",$("#search_bto"));
	chan.change($("#search"),"display","block","focus",$("#search_bar"));
	chan.event($("#search_bar .ul2 li"),"mouseenter","backgroundColor","#f4f4f4","#ffffff");
	chan.change($("#search_bar"),"backgroundColor","#ffffff","mouseout",$("#search_bar .ul2 li"));
	chan.event($("#xmBanner .leftNav .ul1 li"),"mouseenter","backgroundColor","#ff5500","rgba(0,0,0,0)");
	chan.change($("#xmBanner .leftNav .ul1 li"),"display","block","mouseenter",$(".thisShow"));
	left.leftnav();
	left.content();
	ban.banner();
	pl.play();
	top.totop();
	log.statu();
	out.logOut();
	topNav.topNavShow();
	sea.search()
	sec.clock();
	iShow.appliances();
	iShow.ai();
	iShow.collocation();
	iShow.parts();
	iShow.periphery();
	shop.shopping();
	shop.reload();
})
