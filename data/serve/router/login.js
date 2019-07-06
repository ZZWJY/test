const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')

router.get("/",(req,res)=>{
  //1:参数
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //1.1:正则表达式验证用户名或密码
  //2:sql
var sql = "SELECT uid,uname FROM ";
sql +=" gsf_user WHERE uname = ?";
sql +=" AND upwd = ?";
  //3:json
  Pool.query(sql,[uname,upwd],(err,result)=>{
      if(err)throw err;
      if(result.length==0){
         res.send({code:-1,msg:"用户名或密码有误"});
      }else{
         //??缺少一步
		req.session.uid=result[0].uid
		req.session.name=result[0].uname
        res.send({code:1,msg:"登录成功"});
		
      }
  })
})

module.exports=router;