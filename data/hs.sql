#设置客户端连接服务器编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS hs;
#创建数据库xz,设置存储的编码
CREATE DATABASE hs CHARSET=UTF8;
#进入该数据库
USE hs;
/**脚部导航栏**/
CREATE TABLE hs_indexRefer_navDown(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8) ,
    imgurl VARCAHR(20)
);
/**了解list**/
CREATE TABLE hs_indexRefer_know(
    id SMALLINT PRIMARY KEY,
    title VARCHAR(8) ,
    imgurl VARCAHR(20)
);
/**导航栏数据的插入**/
INSERT INTO hs_indexRefer_navDown VALUES
(1,"首页","")
