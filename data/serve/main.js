const express=require('express');
//引入路由器
const indexrouter=require('./router/index.js')
const headrouter=require('./router/header.js')
const session = require("express-session");
const loginrouter=require('./router/login.js')
//创建web服务器
var server=express();
const cors=require("cors");
server.listen(3000);
//使用路由器
//使用(挂载)的url: /user
// /user/login
server.use(cors({
	origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
	credentials:true
}))
server.use(session({
//用来注册session id 到cookie中，相当与一个密钥。
secret:"128位字符串",
//是否允许session重新设置，要保证session有操作的时候必须设置这个属性为true
resave:true,
//是否设置session在存储容器中可以给修改
　　//session过期30分钟，没有人操作时候session 
//30分钟后过期，如果有人操作，每次以当前时间为起点
//使用原设定的maxAge重设session过期时间到30分钟
//只有这种业务场景必须同行设置resave rolling为true
//同时saveUninitialized要设置为false允许修改。
   saveUninitialized:true
 }))
server.use(express.static("public"))
server.use('/index',indexrouter)
server.use('/login',loginrouter)
