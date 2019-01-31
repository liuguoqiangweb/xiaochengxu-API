#vue_app_server/db.sql
#1:进入库  xz
USE xz;
#2:创建表 xz_news
#技巧1:库名;表名;列表;全英文小写字母
CREATE TABLE xz_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  ctime DATETIME,
  point INT,
  img_url VARCHAR(255),
  content VARCHAR(255) 
);
INSERT INTO xz_news VALUES(1,'123',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(2,'124',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(3,'1233',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(4,'124',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(5,'125',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(6,'126',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(7,'127',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(8,'128',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(9,'129',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(11,'1231',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(12,'1232',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(13,'1233',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(14,'1234',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(15,'1235',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(16,'1236',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(17,'1237',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(18,'1238',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(19,'1239',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(21,'12322',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");
INSERT INTO xz_news VALUES(22,'12322',now(),0,
"http://127.0.0.1:3000/img/1.jpg","..");

#货币 小数计算误差
#价格 购物车合计 
#double DECIMAL(10,2)
#严格   将货币转换分单位  1.99 -> 199
#显示  1.99
#3:添加20条记录
#4:查询

#1:创建评论表 39
#   表名 几列 列名
#   xz_comment
#   id        INT        评论编号
#   nid       INT        评论所属新闻编号
#   user_name VARCHAR(25)评论人名称
#   ctime     DATETIME   时间
#   content   VARCHAR(120)内容

USE xz;
CREATE TABLE xz_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nid INT,
  user_name VARCHAR(25),
  ctime DATETIME,
  content VARCHAR(120)
);
#2:添加15条
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'111');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'112');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'113');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'114');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'115');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'116');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'117');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'118');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'119');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1110');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1111');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1112');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1113');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1114');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1115');
INSERT INTO xz_comment VALUES(null,1,'dd',now(),'1116');

CREATE TABLE xz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25) NOT NULL DEFAULT '',
  upwd  VARCHAR(32) NOT NULL DEFAULT ''
);
INSERT INTO xz_login VALUES(null,'dd',md5('123'));
INSERT INTO xz_login VALUES(null,'tom',md5('123'));
INSERT INTO xz_login VALUES(null,'jerry',md5('123'));



#xz_shop [id;img_url;name;addr;tel;mtime,star]
CREATE TABLE xz_shop(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  name    VARCHAR(255),
  addr    VARCHAR(255),
  tel     VARCHAR(25),
  mtime   VARCHAR(25),
  star    INT
);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路1','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路2','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路3','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路4','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路5','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路6','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路7','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路8','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路9','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路10','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路11','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路12','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路13','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路14','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路15','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路16','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路17','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路18','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路19','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路20','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路21','万寿路','13999999999','6:00~21:00',85);
INSERT INTO xz_shop VALUES(null,'http://127.0.0.1:3000/img/niu.png','万寿路22','万寿路','13999999999','6:00~21:00',85);








