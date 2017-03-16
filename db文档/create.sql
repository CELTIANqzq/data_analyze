########################################
# 创建论文表 出版刊物表 科研项目表  老师信息表
#
# 相对于《数据库设计文档》的修改
# 1. 字段名都小写
# 2. 两个单词之间用'_'隔开
# 3. 老师信息表中籍贯改为hometown
# 4. 在老师信息表中岗状态改为on_status
# 5. 删去了教师信息表中的 时间 字段 (不知到这到底是什么时间)
# 6. 对除了教师信息表的其他表中多加了_id字段
# 7. 增加了varchar的长度
########################################


########################
# 论文表 papers
########################
CREATE TABLE papers
(
  _id int NOT NULL AUTO_INCREMENT,
  salary_id  varchar(10)  NOT NULL,
  ids_num  varchar(20)  NULL ,
  year  date  NULL ,
  author  varchar(15)  NULL ,
  level  varchar(10)  NULL ,
  department  varchar(50)  NULL ,
  age  int  NULL ,
  title varchar(50)  NULL ,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;


#########################
# 出版刊物表 publications
#########################
CREATE TABLE publications
(
  _id int  NOT NULL AUTO_INCREMENT,
  salary_id  varchar(10)  NOT NULL,
  year  date NULL,
  author varchar(15) NULL,
  university varchar(50) NULL,
  title varchar(50) NULL,
  journal_name varchar(40) NULL,
  type varchar(20) NULL,
  num_of_wd_cpd  float NULL,
  num_of_wd_all  float NULL,
  level  varchar(20) NULL,
  workload float NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

#########################
# 科研项目表 projects
#########################
CREATE TABLE projects
(
  _id int NOT NULL AUTO_INCREMENT,
  salary_id  varchar(10)  NOT NULL,
  name  varchar(30)  NULL,
  V_or_H  bool NOT NULL,
  budget_in_acc  float NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

#########################
# 老师信息表 teachers
#########################
CREATE TABLE teachers
(
  salary_id  varchar(10)  NOT NULL,
  name  varchar(15)  NOT NULL,
  gender bool NOT NULL,
  office varchar(50) NULL,
  birthday Datetime NULL,
  race varchar(10) NULL,
  identity varchar(50) NULL,
  hometown varchar(20) NULL,
  politics_status varchar(10) NULL,
  join_time datetime NULL,
  join_sclool_time datetime NULL,
  join_job_time date NULL,
  job varchar(50) NULL,
  job_status varchar(20) NULL,
  authorized bool NULL,
  on_status varchar(20) NULL,
  department varchar(50) NULL,
  join_reason varchar(100) NULL,
  attendance_category varchar(20) NULL,
  job_level varchar(30) NULL,
  administrative_post varchar(30) NULL,
  prof_and_tech_post varchar(30) NULL,
  special_experience varchar(100) NULL,
  last_edu_background varchar(40) NULL,
  degree varchar(15) NULL,
  degree_time datetime NULL,
  last_degree varchar(15) NULL,
  subject varchar(40) NULL,
  remark varchar(100) NULL,
  mentor_type varchar(30) NULL,
  mayjor varchar(50) NULL,
  PRIMARY KEY (salary_id)
) ENGINE=InnoDB;



#####################
# 定义foreign key
#####################
ALTER TABLE papers ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE publications ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
