const express = require('express');//服务器框架
const mysql = require('mysql');//引入数据库
const art = require('art-template');//引入模板引擎
const stati = require('express-static');//
const cookieP = require('cookie-parser');//解析cookie
const cookieS = require('cookie-session');//设置服务端cookie
const multer = require('multer');//接收用户传入的文件
const bodyP = require('body-parser');//解析post数据

const fs = require('fs');//引入文件管理系统
const path = require('path');
var server = express();
server.use(cookieS({
	secret:'sadsadsafdsfgfdg',
	cookie:{maxAge:60*60*24*3},
	resave:true,
	saveUninitialized:false
}));

server.use(bodyP.urlencoded({extended:false}));
server.use(bodyP.json());
var db = mysql.createConnection({host:'localhost',user:'root',password:'123456789',database:'xiaomi'});//创建并连接数据库

server.all('*',function(req,res,next){
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
	res.header("Access-Control-Allow-Headers", "X-Requested-With");
	res.header("Access-Control-Allow-Headers", "Content-Type");
	next();
})
var banner = [];
var bottom = [];
var phone = [];
var Pmain = null;
var appliances = {};
var AI = {};
var collocation = {};
var parts = {};
var periphery = {};
var video = [];
db.query('SELECT name,href FROM banner',function(err,data){
	banner = data
})
db.query("SELECT img,href FROM leftnav WHERE tag='bottom'",function(err,data){
	bottom = data
})
db.query("SELECT * FROM index_phone",function(err,data){
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			Pmain = data[i]
		}else {
			phone.push(data[i])
		}
	}
})
db.query("SELECT * FROM index_appliances",function(err,data){
	let main = []
	let hot = []
	let hots = []
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			main.push(data[i])
		}else if(data[i].tag == 'hot'){
			hot.push(data[i])
		}else if(data[i].tag == 'hotS'){
			hots.push(data[i])
		}
	}
	appliances.main = main
	appliances.hot = hot
	appliances.hots = hots
})
db.query("SELECT * FROM index_AI",function(err,data){
	let main = []
	let hot = []
	let hots = []
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			main.push(data[i])
		}else if(data[i].tag == 'hot'){
			hot.push(data[i])
		}else if(data[i].tag == 'hotS'){
			hots.push(data[i])
		}
	}
	AI.main = main
	AI.hot = hot
	AI.hots = hots
})
db.query("SELECT * FROM index_collocation",function(err,data){
	let main = []
	let hot = []
	let hots = []
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			main.push(data[i])
		}else if(data[i].tag == 'hot'){
			hot.push(data[i])
		}else if(data[i].tag == 'hotS'){
			hots.push(data[i])
		}
	}
	collocation.main = main
	collocation.hot = hot
	collocation.hots = hots
})
db.query("SELECT * FROM index_parts",function(err,data){
	let main = []
	let hot = []
	let hots = []
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			main.push(data[i])
		}else if(data[i].tag == 'hot'){
			hot.push(data[i])
		}else if(data[i].tag == 'hotS'){
			hots.push(data[i])
		}
	}
	parts.main = main
	parts.hot = hot
	parts.hots = hots
})
db.query("SELECT * FROM index_periphery",function(err,data){
	let main = []
	let hot = []
	let hots = []
	for(let i=0;i<data.length;i++){
		if(data[i].tag == 'main'){
			main.push(data[i])
		}else if(data[i].tag == 'hot'){
			hot.push(data[i])
		}else if(data[i].tag == 'hotS'){
			hots.push(data[i])
		}
	}
	periphery.main = main
	periphery.hot = hot
	periphery.hots = hots
})
db.query("SELECT * FROM index_video",function(err,data){
	video = data;
})
server.get('/',function(req,res){
	const html = art(path.join(__dirname)+'/views/index.art',{
			banner,
			bottom,
			phone,
			Pmain,
			appliances,
			AI,
			collocation,
			parts,
			periphery,
			video
	})
	res.send(html)
})

server.get('/pass/register',function(req,res){
	const html = art(path.join(__dirname)+'/views/register.art',{})
	res.send(html)
})
server.post('/login',function(req,res){
	let email = req.body.email;
	let pass = req.body.password;
	let str = `SELECT email FROM user WHERE email='${email}'`;
	let str1 = `SELECT password FROM user WHERE email='${email}'`;
	db.query(str,function(err,data){
		if(err){
			res.end('404');
			return;
		}
		if(data == ''){
			res.end('303');
		}else{
			db.query(str1,function(err,data){
				if(err){
					res.end('404');
					return;
				}else{
					if(data[0].password == pass){
						req.session.isLogin = true;
						req.session.email = email;
						res.end('200');
						
					}else{
						res.end('100');
					}
				}
			})
		}
		
	})
	return
})
server.post('/reg',function(req,res){
	let email = req.body.email;
	let pass = req.body.password;
	db.query('SELECT email FROM user',function(err,data){
		if(err){
			console.log(err);
		}else{
			var sure = true;
			for(let i = 0;i < data.length;i++){
				if(email === data[i].email){
					res.end("404");
					sure = false;
					break;
				}
			}
			if(sure){
				let str = `INSERT INTO user (email,password) VALUES ("${email}","${pass}")`;
				db.query(str,function(err,d){
					if(err){
						console.log(err)
						res.end("300");
					}else{
						res.end("200");
						return;
					}
				})
			}
		}
	})
	return
})

server.get('/pass/login',function(req,res){
	const html = art(path.join(__dirname)+'/views/login.art',{})
	res.send(html)
	return
})
server.get('/seckill',function(req,res){
	const html = art(path.join(__dirname)+'/views/seckill.art',{})
	res.send(html)
	return
})
let recommed = null
db.query('SELECT * FROM recommed',function (err,data) {
	if (err){
		console.log(err);
	}
	recommed = data
})
server.get('/buy/success',function(req,res){
	const html = art(path.join(__dirname)+'/views/success.art',{recommed})
	res.send(html)
	return
})
server.post('/seckill/list',function(req,res){
	db.query('SELECT * FROM seckill',function(err,data){
		if(err){
			console.log(err)
		}
		res.end(JSON.stringify(data))
	})
})
server.post('/seckill/swipe',function(req,res){
	let H = new Date().getHours()
	let M = new Date().getMinutes()
	let ab = 0
	let arr = [{id:0,time:"00:00",next:10},{id:10,time:"10:00",next:14},{id:14,time:"14:00",next:20},{id:20,time:"20:00",next:22},{id:22,time:"22:00",next:24}]
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
	let now = arr[ab].id
	let str = `SELECT * FROM seckill WHERE tag='${now}'`
	db.query(str,function(err,data){
		if(err){
			console.log(err)
		}
		res.end(JSON.stringify(data))
	})
})
server.get('/islogin',function(req,res){

	if(req.session.isLogin){
		let id = req.session.email.split('@')[0];
		res.end(JSON.stringify(id))
	}else {
		res.end('false')
	}

})
server.get('/logout',function(req,res){
	req.session.isLogin = false;
	delete req.session.email;
	res.end('200');
	return
})
server.post('/topnav',function(req,res){
	db.query('SELECT * FROM topnav',function(err,data){
		res.end(JSON.stringify(data))
	})
	return
})
server.post('/search',function(req,res){
	db.query('SELECT * FROM search',function(err,data){
		res.end(JSON.stringify(data))
	})
	return
})
server.post('/leftnav',function(req,res){
	db.query('SELECT * FROM leftnav',function(err,data){
		res.end(JSON.stringify(data))
	})
	return
})
server.post('/appliances',function (req,res) {
	db.query("SELECT * FROM index_appliances",function(err,data){
		res.end(JSON.stringify(data))
	})
})
server.post('/ai',function (req,res) {
	db.query("SELECT * FROM index_AI",function(err,data){
		res.end(JSON.stringify(data))
	})
})
server.post('/collocation',function (req,res) {
	db.query("SELECT * FROM index_collocation",function(err,data){
		res.end(JSON.stringify(data))
	})
})
server.post('/parts',function (req,res) {
	db.query("SELECT * FROM index_parts",function(err,data){
		res.end(JSON.stringify(data))
	})
})
server.post('/periphery',function (req,res) {
	db.query("SELECT * FROM index_periphery",function(err,data){
		res.end(JSON.stringify(data))
	})
})
server.get('/buy/detail',function (req,res) {
	let html = art(path.join(__dirname)+'/views/details.art',{})
	res.send(html)
})
server.get('/buy/cart',function (req,res) {
	let html = art(path.join(__dirname)+'/views/cart.art',{recommed})
	res.send(html)
})
server.post('/detail',function (req,res) {
	let productId = req.query.id
	let str = `SELECT * FROM product WHERE id='${productId}'`
	db.query(str,function (err,data) {
		res.end(JSON.stringify(data))
	})
})
let provice = []
let city = []
let county = []
let town = []
let village = []
new Promise((resolve => {
	db.query('SELECT * FROM j_position_provice',function (err,data) {
		resolve(data)
	})
}))
	.then((pro) => {
		provice = pro
		return new Promise((resolve => {
			db.query('SELECT * FROM j_position_city',function (err,data) {
				resolve(data)
			})
		}))
	})
	.then((c) => {
		city = c
		return new Promise((resolve => {
			db.query('SELECT * FROM j_position_town',function (err,data) {
				resolve(data)
			})
		}))
	})
	.then((to) => {
		town = to
		return new Promise((resolve => {
			db.query('SELECT * FROM j_position_county',function (err,data) {
				resolve(data)
			})
		}))
	})
	.then((cou) => {
		county = cou
		return new Promise((resolve => {
			db.query('SELECT * FROM j_position_village',function (err,data) {
				resolve(data)
			})
		}))
	})
	.then((vi) => {
		village = vi
	})

server.post('/provice',function (req,res) {
	db.query('SELECT * FROM j_position_provice',function (err,data) {
		res.end(JSON.stringify(data))
	})
})
server.post('/city',function (req,res) {
	let id = req.body.id
	let str = `SELECT * FROM j_position_city WHERE province_id=${id}`
	db.query(str,function (err,data) {
		res.end(JSON.stringify(data))
	})
})
server.post('/county',function (req,res) {
	let id = req.body.id
	let str = `SELECT * FROM j_position_county WHERE city_id=${id}`
	db.query(str,function (err,data) {
		res.end(JSON.stringify(data))
	})
})
server.post('/town',function (req,res) {
	let id = req.body.id
	let str = `SELECT * FROM j_position_town WHERE county_id=${id}`
	db.query(str,function (err,data) {
		res.end(JSON.stringify(data))
	})
})
server.post('/cars',function (req,res) {
	let email = req.session.email
	let str1 = `SELECT buybus FROM user WHERE email='${email}'`
	db.query(str1,function (err,data){
		if (data[0].buybus == null || data[0].buybus == '' || data[0].buybus == 'null') {
			res.end('100')
		}else {
			res.end(JSON.stringify(data[0].buybus))
		}
	})
})
server.post('/addbuybus',function (req,res) {
	let product = JSON.parse(req.body.str)
	let email = req.session.email
	let arr = []
	let str1 = `SELECT buybus FROM user WHERE email='${email}'`
	new Promise((resolve => {
		db.query(str1,function (err,data) {
			if (data[0].buybus == null || data[0].buybus == '' || data[0].buybus == 'null'){
				arr.push(product)
			}else {
				arr = JSON.parse(data[0].buybus)
				let same = false
				let sameI = 0
				for (let i = 0;i<arr.length;i++) {
					if (product.id == arr[i].id && arr[i].name == product.name) {
						same = true
						sameI = i
					}
				}
				if (same) {
					arr[sameI].num ++
				}else {
					arr.push(product)
				}
			}
			resolve()
		})
	}))
		.then(() => {
			let str2 = `UPDATE user SET buybus='${JSON.stringify(arr)}' WHERE email='${email}'`
			db.query(str2,function (err,data) {
				if (err)
					console.log(err)
				else {
					res.end("200")
				}
			})
		})
})
server.post('/debus',function (req,res) {
	let name = req.body.name
	let email = req.session.email
	let str1 = `SELECT buybus FROM user WHERE email='${email}'`
	new Promise(resolve => {
		db.query(str1,function (err,data) {
			resolve(JSON.parse(data[0].buybus))
		})
	})
		.then((data) => {
			data = data.filter(function (item) {
				return item.name != name
			})
			if (data.length == 0) {
				data = null
			}
			let str2 = `UPDATE user SET buybus='${JSON.stringify(data)}' WHERE email='${email}'`
			db.query(str2,function (err) {
				if (err)
					console.log(err)
				else {
					res.end("200")
				}
			})
		})
})
server.post('/changenum',function (req,res) {
	let name = JSON.parse(req.body.name)
	let num = JSON.parse(req.body.num)
	let email = req.session.email
	let str1 = `SELECT buybus FROM user WHERE email='${email}'`
	new Promise(resolve => {
		db.query(str1,function (err,data) {
			resolve(JSON.parse(data[0].buybus))
		})
	})
		.then((data) => {
			for (let i=0;i<data.length;i++){
				if (data[i].name == name) {
					data[i].num = num
				}
			}
			let str2 = `UPDATE user SET buybus='${JSON.stringify(data)}' WHERE email='${email}'`
			db.query(str2,function (err) {
				if (err)
					console.log(err)
				else {
					res.end("200")
				}
			})
		})
})
server.get('/getSearch', function (req, res) {
	let arr = []
	let key = req.query.word
	let reg = new RegExp(key,'ig')
	db.query('SELECT * FROM product', function (err, data) {

		if (err) {
			console.log(err);
		}
		if (req.query.word == '全部' || req.query.word == '全部商品' || req.query.word == '所有') {
			arr = data
		} else {
			for (let i=0;i<data.length;i++) {
				if (reg.test(JSON.parse(data[i].tag).join(''))) {
					arr.push(data[i])
				}
			}
		}
		let height = (Math.ceil(arr.length/4)*414) + 'px'
		let empty = false
		if (arr == ''){
			empty = true
			height = '50px'
		}
		const html = art(path.join(__dirname) + '/views/getSearch.art', {recommed, arr,key,height,empty})
		res.send(html)
	})
})
server.use('/',function(req,res){
	if(req.url.indexOf('/public/') === 0){
		fs.readFile('.'+req.url,function(err,data){
			if(err){
				console.log(err);
			}else{
				res.send(data)
			}
		})
	}
	return
})
server.listen(8888,function(){
	console.log('服务器启动成功');
	return
})
