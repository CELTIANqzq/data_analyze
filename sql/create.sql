####################################################################################
# 1.老师信息表 teachers
####################################################################################
CREATE TABLE teachers
(
  salary_id           VARCHAR(10)  NOT NULL, # 工资号
  name                VARCHAR(15)  NOT NULL, # 姓名
  gender              BOOL         NULL, # 性别
  office              VARCHAR(50)  NULL, # 科室
  birthday            DATETIME     NULL, # 生日
  race                VARCHAR(10)  NULL, # 名族
  identity            VARCHAR(50)  NULL, # 身份
  hometown            VARCHAR(20)  NULL, # 籍贯
  politics_status     VARCHAR(10)  NULL, # 政治面貌
  join_time           DATETIME     NULL, # 加入时间
  join_school_time    DATETIME     NULL, # 入校时间
  join_job_time       DATE         NULL, # 参加工作时间
  job                 VARCHAR(50)  NULL, # 聘任岗位
  job_status          VARCHAR(20)  NULL, # 在职状态
  authorized          BOOL         NULL, # 编制
  on_status           VARCHAR(20)  NULL, # 在岗状态
  department          VARCHAR(50)  NULL, # 工作部门
  join_reason         VARCHAR(100) NULL, # 进入原因
  attendance_category VARCHAR(20)  NULL, # 考勤类别
  job_level           VARCHAR(30)  NULL, # 职级
  administrative_post VARCHAR(30)  NULL, # 行政职务
  prof_and_tech_post  VARCHAR(30)  NULL, # 专业技术职务
  special_experience  VARCHAR(100) NULL, # 特别经历
  last_edu_background VARCHAR(40)  NULL, # 最后学历
  degree              VARCHAR(15)  NULL, # 学位
  degree_time         DATETIME     NULL, # 学位时间
  last_degree         VARCHAR(15)  NULL, # 学历归属
  subject             VARCHAR(40)  NULL, # 隶属学科
  remark              VARCHAR(100) NULL, # 备注
  mentor_type         VARCHAR(30)  NULL, # 导师类型
  major               VARCHAR(50)  NULL, # 专业
  PRIMARY KEY (salary_id)
) ENGINE=InnoDB;

###################################################################################
# 2.论文表 papers
###################################################################################
# 吴建华 肖霖 王时胜 陈恳 李鸣 在总表里没有
CREATE TABLE papers2016
(
  _id        INT          NOT NULL AUTO_INCREMENT,
  salary_id  VARCHAR(10)  NOT NULL, # 工资号
  ids_num    VARCHAR(100) NULL, # 收录号
  year       DATE         NULL, # 年份
  author     VARCHAR(15)  NULL, # 作者姓名
  level      VARCHAR(10)  NULL, # 刊物级别
  title      VARCHAR(300) NULL, # 论文题目
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2015
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2014
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2013
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2012
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2011
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE papers2010
(
  _id       INT          NOT NULL AUTO_INCREMENT,
  salary_id VARCHAR(10)  NOT NULL,
  ids_num   VARCHAR(100) NULL,
  year      DATE         NULL,
  author    VARCHAR(15)  NULL,
  level     VARCHAR(10)  NULL,
  title     VARCHAR(300) NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;


################################################################################
# 3.科研项目表 projects
################################################################################
CREATE TABLE projects2016
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL, # 项目负责人
  v_or_H        BOOL        NOT NULL, # 横向0/纵向1
  budget_in_acc FLOAT       NOT NULL, # 到账经费
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2015
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2014
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2013
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2012
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2011
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;

CREATE TABLE projects2010
(
  _id           INT         NOT NULL AUTO_INCREMENT,
  salary_id     VARCHAR(10) NOT NULL,
  name          VARCHAR(30) NULL,
  V_or_H        BOOL        NOT NULL,
  budget_in_acc FLOAT       NOT NULL,
  PRIMARY KEY (_id)
) ENGINE=InnoDB;


#####################
# 4.工作量 teach
#####################
CREATE TABLE teach2016
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL, # 教师
  rank              VARCHAR(30) NULL, # 职称
  duty              VARCHAR(30) NULL, # 职务
  theory_fs         FLOAT(15, 6) NULL, # 理论课折合学时(上半年)
  profession_fs     FLOAT(7, 3) NULL, # 专业技术人员兼职补贴学时
  ready_fs          FLOAT(7, 3) NULL, # 准备实验学时
  guide_fs          FLOAT(7, 3) NULL, # 指导实验学时
  graduation_fs     FLOAT(7, 3) NULL, # 毕业论文、设计学时；实习、课程设计、社会调查学时
  first_sum         FLOAT(7, 3) NULL, # 上半年合计
  theory_ss         FLOAT(7, 3) NULL, # 理论课折合学时(下半年)
  profession_ss     FLOAT(7, 3) NULL, # 专业技术人员兼职补贴学时
  ready_ss          FLOAT(7, 3) NULL, # 准备实验学时
  guide_ss          FLOAT(7, 3) NULL, # 指导实验学时
  graduation_ss     FLOAT(7, 3) NULL, # 毕业论文、设计学时；实习、课程设计、社会调查学时
  second_sum        FLOAT(7, 3) NULL, # 下半年合计
  remark_job        VARCHAR(15) NULL, # 备注(关键岗)
  year_sum          FLOAT(7, 3) NULL, # 全年度合计
  second_etc        FLOAT(7, 3) NULL, # 二类通识课，重修班，个性课单独开班课程工作量
  innovative_course FLOAT(7, 3) NULL, # 创新课程工作量
  college_workload  FLOAT(7, 3) NULL, # 学院算岗贴工作量
  PRIMARY KEY (_id)
);

CREATE TABLE teach2015
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE teach2014
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE teach2013
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE teach2012
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE teach2011
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
  year_sum          FLOAT(7, 3) NULL,
  second_etc        FLOAT(7, 3) NULL,
  innovative_course FLOAT(7, 3) NULL,
  college_workload  FLOAT(7, 3) NULL,
  PRIMARY KEY (_id)
);

CREATE TABLE teach2010
(
  _id               INT         NOT NULL AUTO_INCREMENT,
  salary_id         VARCHAR(10) NOT NULL,
  name              VARCHAR(10) NOT NULL,
  rank              VARCHAR(30) NULL,
  duty              VARCHAR(30) NULL,
  theory_fs         FLOAT(15, 6) NULL,
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
  remark_job        VARCHAR(15) NULL,
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

 CREATE TABLE teachsum2014
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

 CREATE TABLE teachsum2013
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

 CREATE TABLE teachsum2012
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

 CREATE TABLE teachsum2011
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

 CREATE TABLE teachsum2010
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


##########################################################################################
# 出版刊物表 publications
##########################################################################################
# -- CREATE TABLE publications2016
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2015
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2014
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2013
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2012
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2011
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;
# --
# -- CREATE TABLE publications2010
# -- (
# --   _id           INT         NOT NULL AUTO_INCREMENT,
# --   salary_id     VARCHAR(10) NOT NULL,
# --   year          DATE        NULL,
# --   author        VARCHAR(15) NULL,
# --   university    VARCHAR(50) NULL,
# --   title         VARCHAR(50) NULL,
# --   journal_name  VARCHAR(40) NULL,
# --   type          VARCHAR(20) NULL,
# --   num_of_wd_cpd FLOAT       NULL,
# --   num_of_wd_all FLOAT       NULL,
# --   level         VARCHAR(20) NULL,
# --   workload      FLOAT       NULL,
# --   PRIMARY KEY (_id)
# -- ) ENGINE=InnoDB;


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



#####################
# 定义foreign key
#####################
# 论文表
ALTER TABLE papers2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2014 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2013 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2012 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2011 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE papers2010 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);

# 工作量
ALTER TABLE teach2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2014 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2013 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2012 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2011 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE teach2010 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);

# 项目
ALTER TABLE projects2016 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2015 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2014 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2013 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2012 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2011 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
ALTER TABLE projects2010 ADD FOREIGN KEY (salary_id) REFERENCES teachers (salary_id);
