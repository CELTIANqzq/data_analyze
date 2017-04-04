# 老师表增加字段 post_type(岗位类型) graduate_provence(毕业学校的省份)
alter table teachers add post_type varchar(25) null;
alter table teachers add graduate_province varchar(25) null;