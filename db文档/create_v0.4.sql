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

# 。。。

########################################


########################
# 论文表 papers
########################
CREATE TABLE papers2015
(
  _id        INT         NOT NULL AUTO_INCREMENT,
  salary_id  VARCHAR(10) NOT NULL,
  ids_num    VARCHAR(20) NULL,
  year       DATE        NULL,
  author     VARCHAR(15) NULL,
  level      VARCHAR(10) NULL,
  department VARCHAR(50) NULL,
  age        INT         NULL,
  title      VARCHAR(50) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2016
(
  _id        INT         NOT NULL AUTO_INCREMENT,
  salary_id  VARCHAR(10) NOT NULL,
  ids_num    VARCHAR(20) NULL,
  year       DATE        NULL,
  author     VARCHAR(15) NULL,
  level      VARCHAR(10) NULL,
  department VARCHAR(50) NULL,
  age        INT         NULL,
  title      VARCHAR(50) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;


#########################
# 出版刊物表 publications
#########################
CREATE TABLE publications2015
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  year          DATE        NULL,
  author        VARCHAR(15) NULL,
  university    VARCHAR(50) NULL,
  title         VARCHAR(50) NULL,
  journal_name  VARCHAR(40) NULL,
  type          VARCHAR(20) NULL,
  num_of_wd_cpd FLOAT       NULL,
  num_of_wd_all FLOAT       NULL,
  level         VARCHAR(20) NULL,
  workload      FLOAT       NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE publications2016
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  year          DATE        NULL,
  author        VARCHAR(15) NULL,
  university    VARCHAR(50) NULL,
  title         VARCHAR(50) NULL,
  journal_name  VARCHAR(40) NULL,
  type          VARCHAR(20) NULL,
  num_of_wd_cpd FLOAT       NULL,
  num_of_wd_all FLOAT       NULL,
  level         VARCHAR(20) NULL,
  workload      FLOAT       NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

#########################
# 科研项目表 projects
#########################
CREATE TABLE projects2015
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2016
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

#########################
# 老师信息表 teachers
#########################

CREATE TABLE teachers
(
  salary_id           VARCHAR(10)  NOT NULL,
  name                VARCHAR(15)  NOT NULL,
  gender              BOOL         NULL,
  office              VARCHAR(50)  NULL, ##科室
  birthday            DATETIME     NULL,
  race                VARCHAR(10)  NULL, ##名族
  identity            VARCHAR(50)  NULL, ##身份
  hometown            VARCHAR(20)  NULL, ##籍贯
  politics_status     VARCHAR(10)  NULL, ##政治面貌
  join_time           DATETIME     NULL, ##加入时间
  join_school_time    DATETIME     NULL, ##入校时间
  join_job_time       DATE         NULL,
  job                 VARCHAR(50)  NULL,
  job_status          VARCHAR(20)  NULL,
  authorized          BOOL         NULL,
  on_status           VARCHAR(20)  NULL,
  department          VARCHAR(50)  NULL,
  join_reason         VARCHAR(100) NULL,
  attendance_category VARCHAR(20)  NULL,
  job_level           VARCHAR(30)  NULL,
  administrative_post VARCHAR(30)  NULL,
  prof_and_tech_post  VARCHAR(30)  NULL,
  special_experience  VARCHAR(100) NULL,
  last_edu_background VARCHAR(40)  NULL,
  degree              VARCHAR(15)  NULL,
  degree_time         DATETIME     NULL,
  last_degree         VARCHAR(15)  NULL,
  subject             VARCHAR(40)  NULL,
  remark              VARCHAR(100) NULL,
  mentor_type         VARCHAR(30)  NULL,
  major               VARCHAR(50)  NULL,
  PRIMARY KEY (salary_id)
) ENGINE=InnoDB;



#####################
# 定义foreign key
#####################
ALTER TABLE papers2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE publications2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE publications2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);


#####################
# 信息工程学院2016年研究生教学工作量汇总表(交研究生院) teach2016
#####################
CREATE TABLE teach2016
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(7, 3) NULL,
  profession_fs     FLOAT(7, 3) NULL,
  ready_fs          FLOAT(7, 3) NULL,
  guide_fs          FLOAT(7, 3) NULL,
  graduation_fs     FLOAT(7, 3) NULL,
  first_sum         FLOAT(7, 3) NULL,
  theory_ss         FLOAT(7, 3) NULL,
  profession_ss     FLOAT(7, 3) NULL,
  ready_ss          FLOAT(7, 3) NULL,
  guide_ss          FLOAT(7, 3) NULL,
  graduation_ss     FLOAT(7, 3) NULL,
  second_sum        FLOAT(7, 3) NULL,
  remark_job        FLOAT(7, 3) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

#####################
# 信息工程学院2016年研究生教学工作量统计表 teachsum2016
#####################
CREATE TABLE teachsum2016
(
  _id             INT         NOT NULL AUTO_INCREMENT,
  department      VARCHAR(20) NULL,
  salary_id       VARCHAR(10) NOT NULL,
  name            VARCHAR(10) NOT NULL,
  year            INT(4)      NULL,
  teach_workload  FLOAT(9, 5) NULL,
  mentor_load     FLOAT(9, 5) NULL,
  reform_workload FLOAT(9, 5) NULL,
  sum_workload    FLOAT(9, 5) NULL,
  PRIMARY KEY (_id)
);


#####################
# 信息工程学院2015年研究生教学工作量汇总表(交研究生院) teach2015
#####################
CREATE TABLE teach2015
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(7, 3) NULL,
  profession_fs     FLOAT(7, 3) NULL,
  ready_fs          FLOAT(7, 3) NULL,
  guide_fs          FLOAT(7, 3) NULL,
  graduation_fs     FLOAT(7, 3) NULL,
  first_sum         FLOAT(7, 3) NULL,
  theory_ss         FLOAT(7, 3) NULL,
  profession_ss     FLOAT(7, 3) NULL,
  ready_ss          FLOAT(7, 3) NULL,
  guide_ss          FLOAT(7, 3) NULL,
  graduation_ss     FLOAT(7, 3) NULL,
  second_sum        FLOAT(7, 3) NULL,
  remark_job        FLOAT(7, 3) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

#####################
# 信息工程学院2015年研究生教学工作量统计表 teachsum2015
#####################
CREATE TABLE teachsum2015
(
  _id             INT         NOT NULL AUTO_INCREMENT,
  department      VARCHAR(20) NULL,
  salary_id       VARCHAR(10) NOT NULL,
  name            VARCHAR(10) NOT NULL,
  year            INT(4)      NULL,
  teach_workload  FLOAT(9, 5) NULL,
  mentor_load     FLOAT(9, 5) NULL,
  reform_workload FLOAT(9, 5) NULL,
  sum_workload    FLOAT(9, 5) NULL,
  PRIMARY KEY (_id)
);


#####################
# 定义foreign key
#####################
ALTER TABLE teach2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teachsum2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teachsum2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);