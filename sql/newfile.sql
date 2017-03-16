drop database if exists scm;

create database scm default character set utf8;

use scm;

drop table if exists supplier;


/*============================*/
/* Table: 管理员表结构 		  */
/*============================*/
create table account
(
   /* 管理员编号,自动增长 */
   acc_id                  int not null auto_increment,
   /* 管理员登录名  */
   acc_login               varchar(20),
   /* 管理员姓名  */
   acc_name                varchar(20),
   /* 管理员密码 */
   acc_pass                varchar(20),
   /* 设置编号为主键 */
   primary key (acc_id)
);

/*==============================================================*/
/* Table: 供应商表	                                        */
/*==============================================================*/

create table supplier
(
   sup_id               int not null auto_increment,
   sup_name             varchar(20),
   sup_linkman          varchar(20),
   sup_phone            varchar(11),
   sup_address          varchar(100),
   sup_remark           varchar(200),
   primary key (sup_id)
);

/* 添加管理员数据, */
insert into account (acc_login,acc_pass) values ('admin','admin');
insert into account (acc_login,acc_pass) values ('admin2','admin2');
/* 添加供应商数据, */
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('苹果供应商','小张','12388888887','广州花都','普通供应商');
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('三星供应商','小王','12388888888','广州增城','普通供应商');
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('华为供应商','小王','12388888889','广东深圳','一级供应商');


select * from account;
select * from supplier;

drop database if exists mybatis;


create database scm CHARACTER SET UTF8;
use scm;

create table dept(
    dept_id int primary key auto_increment,
    dept_name varchar(50),
    dept_address varchar(50)
);


insert into dept(dept_name,dept_address) values('研发部一部','广州');
insert into dept(dept_name,dept_address) values('研发部二部','广州');
insert into dept(dept_name,dept_address) values('研发部三部','深圳');
select * from dept;


/*
   搭建scm项目数据库
 */

drop database if exists scm;

create database scm default character set utf8;

use scm;

drop table if exists supplier;


/*============================*/
/* Table: 管理员表结构 		  */
/*============================*/
create table account
(
   /* 管理员编号,自动增长 */
   acc_id                  int not null auto_increment,
   /* 管理员登录名  */
   acc_login               varchar(20),
   /* 管理员姓名  */
   acc_name                varchar(20),
   /* 管理员密码 */
   acc_pass                varchar(20),
   /* 设置编号为主键 */
   primary key (acc_id)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
/*
sup_id               编号,
   sup_name             供应商名称,
   sup_linkman          联系人,
   sup_phone            电话,
   sup_address          地址,
   sup_remark           备注,
   sup_pay              期初应付,
   sup_type             类型,
*/
/*==============================================================*/
/*==============================================================*/
create table supplier
(
   sup_id               int not null,
   sup_name             varchar(20),
   sup_linkman          varchar(20),
   sup_phone            varchar(11),
   sup_address          varchar(100),
   sup_remark           varchar(100),
   sup_pay              decimal(10,2),
   sup_type             varchar(10),
   primary key (sup_id)
);

/* 添加帐户数据, */
insert into account (acc_login,acc_pass) values ('admin','admin');
insert into account (acc_login,acc_pass) values ('admin2','admin2');
/* 添加供应商数据, */
insert into supplier (sup_id,sup_name,sup_linkman,sup_phone,sup_address,sup_remark,sup_pay,sup_type) values (1,'苹果供应商','小张','12388888887','广州花都','普通供应商',0,1);
insert into supplier (sup_id,sup_name,sup_linkman,sup_phone,sup_address,sup_remark,sup_pay,sup_type) values (2,'三星供应商','小王','12388888888','广州增城','普通供应商',0,1);
insert into supplier (sup_id,sup_name,sup_linkman,sup_phone,sup_address,sup_remark,sup_pay,sup_type) values (3,'华为供应商','小王','12388888889','广东深圳','一级供应商',0,2);
insert into supplier (sup_id,sup_name,sup_linkman,sup_phone,sup_address,sup_remark,sup_pay,sup_type) values (4,'TCL供应商','小王','12388888666','广州增城','普通供应商',0,1);
insert into supplier (sup_id,sup_name,sup_linkman,sup_phone,sup_address,sup_remark,sup_pay,sup_type) values (5,'Nokia供应商','小王','12388888777','广东深圳','一级供应商',0,2);

select * from account;
select * from supplier;
