const express=require('express');
const router=express.Router();
const Pool=require('../pool.js')
router.get('/',function(req,res){
	var obj={
		agent:[],
		carousel:[],
		brand:[]
	}
		callback=req.query.callback
	Pool.query("select * from gsf_index_carousel",function(err,result){		
		if(err) throw err;
		obj.carousel=result
		Pool.query('select * from gsf_index_brand',function(err,result){
			if(err) throw err;
			obj.brand=result;
			obj=JSON.stringify(obj)
			res.send(`${obj}`);
		})
		
	})	
})
router.get('/ftype',function(req,res){
		var fid=req.query.fid
		var obj={
			house:[],
			address:[],
			price:[],
			mold:[],
			uptown:[]
		}
		var sql="select * from gsf_house_info where f_id=?"
		Pool.query(sql,[fid],function(err,result1){
			if(err) throw err
			obj.house=result1;
			if(fid>5||fid==1){ 
				res.send(obj)
				return;
			}else{
			Pool.query('select * from gsf_adressType',function(err,result2){
				if(err) throw err
				obj.address=result2;
				Pool.query('select * from gsf_priceType',function(err,result3){
					if(err) throw err
					obj.price=result3;
					Pool.query("select * from gsf_moldType",function(err,result4){
						if(err) throw err
						obj.mold=result4;
						Pool.query("select * from gsf_uptown",function(err,result5){
							if(err) throw  err
							obj.uptown=result5;
							res.send(obj)
						})
					})
				})
			})
			}
		})
	})
module.exports=router;