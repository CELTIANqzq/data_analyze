
-4.4  
   1. 修改数据库teacher表，增加字段  
   *岗位类型*`post_type`  
   *毕业省份*`graduate_province`  
   ```
   alter table teachers add post_type varchar(25) null;
   alter table teachers add graduate_province varchar(25) null;
   ```