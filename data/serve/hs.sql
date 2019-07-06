SET NAMES UTF8;
DROP DATABASE IF EXISTS gsf;
CREATE DATABASE gsf
CHARSET=UTF8;
USE gsf;
/**首页轮播图**/
CREATE TABLE gsf_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),           #图片地址
  title VARCHAR(64),          #标题
  href VARCHAR(128)	      #跳向的地址
);
/**首页专题类型**/
CREATE TABLE gsf_index_type(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128)       #副标题
);
/**首页品牌列表**/
CREATE TABLE gsf_index_brand(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
/**首页热度排行榜**/
CREATE TABLE gsf_index_heat(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  hname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
/**首页精品排行榜**/
CREATE TABLE gsf_index_product(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
CREATE TABLE gsf_index_newhuose(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  nname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
CREATE TABLE gsf_index_agent(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  aname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
CREATE TABLE gsf_index_news(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  nname VARCHAR(32),	      
  mdimg VARCHAR(128),	      #中图的图片地址
  info  VARCHAR(32)           #图片推销信息
);
/**用户信息**/
CREATE TABLE gsf_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(11),
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
/**地址区域表**/
CREATE TABLE gsf_adressType(
  a_id  INT PRIMARY KEY AUTO_INCREMENT,
  a_adressScope   VARCHAR(15)
);
/**单价区域表**/
CREATE TABLE gsf_priceType(
  p_id  INT PRIMARY KEY AUTO_INCREMENT,
  p_priceScope   VARCHAR(15)
);
/**户型区域表**/
CREATE TABLE gsf_moldType(
  m_id  INT PRIMARY KEY AUTO_INCREMENT,
  m_moldScope   VARCHAR(15)
);
/**住宅区域表**/
CREATE TABLE gsf_uptown(
  u_id  INT PRIMARY KEY AUTO_INCREMENT,
  u_moldScope   VARCHAR(15)
);
/**房源信息表**/
create table gsf_house_info(
	h_id int primary key auto_increment,
	h_name varchar(32),
	h_avgPrice decimal(10,2),	#平均价格
	h_address varchar(64),		#楼盘地址
	h_standard varchar(32),		#装修标准
	h_openTime varchar(32),		#开盘时间
	h_periodInt varchar(32),	#产权年限
	h_area varchar(32),		#占地面积
	h_greeningRate  varchar(32),	#绿化率（20%）
	h_type varchar(32),             #户型
	h_propertyType varchar(32),     #物业类型（商业、写字楼）
	h_isOnsale SMALLINT,		#是否在售							#是否在售
	h_imgurl  varchar(100),		#图片地址
	f_id	  int			#关联房源类型表id(如新房直卖/开发商直卖……)
		
);
/*房源类型表*/
create table gsf_houseType(
	f_id int primary key auto_increment,
	f_name varchar(15),		#房源类型
	f_tourl	varchar(30)			#跳转的组件
);
/**房源视频表**/
create table gsf_house_video(
	v_id int primary key auto_increment,
	v_name varchar(64),
	v_address varchar(128),              #视频地址  
	v_type varchar(32)                    #视频类型
);
/**房源收藏表**/
create table gsf_house_collect(
	tid int primary key auto_increment,
	t_name varchar(32),
	pic varchar(128),
	t_type varchar(64)              #房源户型
);
/*******************/
/******数据导入******/
/*******************/
/**插入用户**/
/**首页轮播图**/
INSERT INTO gsf_user VALUES
(1,'tom','123456','126253@qq.com',12365412587,'王二',1),
(null,'ttp','123456','126253@qq.com',12365412587,'王二',1),
(null,'tfg','123456','126253@qq.com',12365412587,'王二',1),
(null,'tdf','123456','126253@qq.com',12365412587,'王二',1),
(null,'tfsdf','123456','126253@qq.com',12365412587,'王二',1),
(null,'ts','123456','126253@qq.com',12365412587,'王二',1),
(null,'tfsd','123456','126253@qq.com',12365412587,'王二',1),
(null,'tfd','123456','126253@qq.com',12365412587,'王二',1);
/**插入轮播图信息**/
INSERT INTO gsf_index_carousel VALUES
(1,'http://127.0.0.1:3000/img/index/carousel-1.jpg','下载','http://www.gsfzd.com/index/index/app1.html'),
(null,'http://127.0.0.1:3000/img/index/carousel-2.jpg','新房','http://www.gsfzd.com/index/index/app1.html'),
(null,'http://127.0.0.1:3000/img/index/carousel-3.jpg','推荐','http://www.gsfzd.com/index/index/app1.html'),
(null,'http://127.0.0.1:3000/img/index/carousel-4.jpg','预约','http://www.gsfzd.com/index/index/app1.html'),
(null,'http://127.0.0.1:3000/img/index/carousel-5.jpg','看房','http://www.gsfzd.com/index/index/app1.html');
/**插入专题类型**/
INSERT INTO gsf_index_type VALUES
(1,'品牌特推','高额5折返佣，买房省辆车'),
(null,'热度排行榜','热销楼盘，为您精挑细选'),
(null,'精品项目','品牌开发商，买房更放心'),
(null,'新房直卖','开发商直卖，买房真的可以这样省钱'),
(null,'中介精推','专业、高效、精准'),
(null,'特惠好房','让您买房更省钱'),
(null,'新闻专栏','房产知识，贵上房深度解读');
/**插入首页品牌列表**/
INSERT INTO gsf_index_brand VALUES
(1,null,'http://127.0.0.1:3000/img/index/brand-1-292-216.png','火爆开抢'),
(null,null,'http://127.0.0.1:3000/img/index/brand-2-292-216.png','火爆开抢'),
(null,null,'http://127.0.0.1:3000/img/index/brand-3-292-216.png','火爆开抢'),
(null,null,'http://127.0.0.1:3000/img/index/brand-4-292-216.png','火爆开抢');
/**插入首页热度排行**/
INSERT INTO gsf_index_heat VALUES
(1,null,'http://127.0.0.1:3000/img/index/reat-1-280-182.jpg','正荣国领'),
(null,null,'http://127.0.0.1:3000/img/index/reat-1-280-182.jpg','绿地壹号街'),
(null,null,'../img/index/reat-1-280-182.jpg','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/reat-1-280-182.jpg','朱家角一号');
/**插入首页精品排行**/
INSERT INTO gsf_index_product VALUES
(1,null,'http://127.0.0.1:3000/img/index/product-1-280-182.jpg','正荣国领'),
(null,null,'http://127.0.0.1:3000/img/index/product-2-280-182.jpg','绿地壹号街'),
(null,null,'http://127.0.0.1:3000/img/index/product-3-280-182.jpg','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/product-4-280-182.jpg','朱家角一号');
/**插入首页新房推荐**/
INSERT INTO gsf_index_newhuose VALUES
(1,null,'http://127.0.0.1:3000/img/index/newhome-1-229-264.png','正荣国领'),
(null,null,'http://127.0.0.1:3000/img/index/newhome-2-229-264.png','绿地壹号街'),
(null,null,'http://127.0.0.1:3000/img/index/newhome-3-229-264.png','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/newhome-4-229-264.png','朱家角一号');
/**插入首页中介精推**/
INSERT INTO gsf_index_agent VALUES
(1,null,'http://127.0.0.1:3000/img/index/agent-1-229-264.png','正荣国领'),
(null,null,'http://127.0.0.1:3000/img/index/agent-2-229-264.png','绿地壹号街'),
(null,null,'http://127.0.0.1:3000/img/index/agent-3-229-264.png','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/agent-4-229-264.png','朱家角一号');
/**插入首页新闻专栏**/
INSERT INTO gsf_index_news VALUES
(1,null,'http://127.0.0.1:3000/img/index/news-1-229-264.png','正荣国领'),
(null,null,'http://127.0.0.1:3000/img/index/news-2-229-264.png','绿地壹号街'),
(null,null,'http://127.0.0.1:3000/img/index/news-3-229-264.png','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/news-4-229-264.png','朱家角一号'),
(null,null,'http://127.0.0.1:3000/img/index/news-5-229-264.png','三林信城MO+'),
(null,null,'http://127.0.0.1:3000/img/index/news-6-229-264.png','朱家角一号');
INSERT INTO gsf_houseType VALUES
(0,"首页","/index"),
(null,"新房直卖","/index/newest"),
(null,"开放商直卖","/index/quality"),
(null,"二手房","/index/agent"),
(null,"诚信联盟","/index/personal"),
(null,"视频中心","/index/video"),
(null,"新闻资讯","/index/news"),
(null,"关于我们","/index/about"),
(null,"优惠券","/activity");
/**插入房源表**/
INSERT INTO gsf_house_info VALUES
(1,'东亚梧桐墅',41000,'上海市宝山区美兰湖抚远路1211号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/house-1-150-220.png",2),
(null,'安亭瑞仕锦庭',31500,'上海市嘉定区安研路67弄1-26号','精装','2017-07-07','70年','46511m²'
,'35%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/house-2-150-220.png",2),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/huose-3-150-220.png",2),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/huose-4-150-220.png",2),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/huose-5-150-220.png",2),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/huose-6-150-220.png",2),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-2-200-150.jpg",3),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-1-200-150.jpg",3),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-4-200-150.jpg",3),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-3-200-150.jpg",3),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-2-200-150.jpg",3),
(null,'美瑞·清河湾',29000,'上海市青浦区盈顺路166号','毛坯','2018-01-26','50年','6981m²'
,'20%','住宅','公寓',1,"http://127.0.0.1:3000/img/newhuose/fond-5-200-150.png",3);
/**地址区域表数据**/
INSERT INTO gsf_adressType VALUES
(1,"不限"),(null,"上海城区"),(null,"黄浦区"),(null,"徐汇区"),(null,"长宁区"),(null,"静安区"),(null,"普陀区"),(null,"虹口区"),(null,"杨浦区"),(null,"闵行区"),(null,"宝山区"),
(null,"嘉定区"),(null,"浦东新区"),(null,"金山区"),(null,"松江区"),(null,"青浦区"),(null,"奉贤区"),(null,"崇明区");
/**单价区域表**/
INSERT INTO gsf_priceType VALUES
(1,"不限"),(null,"1.5万以下"),(null,"1.5-2万"),(null,"2-2.5万"),(null,"2.5-3万"),(null,"3-4万"),(null,"4-5万"),(null,"5-8万"),(null,"8万以上");
/**户型区域表**/
INSERT INTO gsf_moldType VALUES
(1,"不限"),(null,"一室"),(null,"二室"),(null,"三室"),(null,"四室"),(null,"五室及以上");
/**住宅区域表**/
INSERT INTO gsf_uptown VALUES
(1,"不限"),(null,"住宅"),(null,"商铺"),(null,"别墅"),(null,"花园洋房"),(null,"商住楼"),(null,"写字楼"),(null,"公寓"),(null,"其他");



