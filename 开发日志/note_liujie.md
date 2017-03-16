# 搭建基本开发环境

- 导入所有ssm整合包

- 创建测试数据库

(注意：初次安装mysql后，记得改下字符编码，要不然向数据库插入中文会乱码)

        create database data_analyze default character set utf8;
  
        use data_analyze;
  
        drop table if exists account;

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
        
    
- 编写account对应的实体类，映射类，映射配置文件，service,action(controller)  

- 编写core抽出可能出现的冗余代码，basemapper,baseService,以及分页实体类


