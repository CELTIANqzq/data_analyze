create database mybatis;

create TABLE user(

   id int(11) NOT NULL AUTO_INCREMENT,
   
   userName varchar(50) DEFAULT NULL,
   
   userAge int(11) DEFAULT NULL,
   
   userAddress varchar(200) DEFAULT NULL,
   
   PRIMARY KEY(id)

)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

Insert INTO user VALUES('1','cxaaaa','100','shangli,pingxiang');

select * from user;

drop TABLE IF EXISTS article;

create TABLE article(
   
   id int(11) NOT NULL auto_increment,
   
   userid int(11) NOT NULL,
   
   title varchar(100) NOT NULL,
   
   content text NOT NULL,
   
   PRIMARY KEY (id)

)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

select * from article;

insert INTO article VALUES('1','1','test_title','test_content');
insert INTO article VALUES('2','1','测试标题2','测试内容2');
insert INTO article VALUES('3','1','测试标题3','测试内容3');
insert INTO article VALUES('4','1','测试标题4','测试内容4');



