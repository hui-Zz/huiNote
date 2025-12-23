# 查询表字段列信息 
```sql
SELECT  t.*  FROM  SYSCAT.COLUMNS t
WHERE  TABSCHEMA = 'Schemas名'  AND TABNAME = UPPER('表名')
```
# 查询出当前用户的表所占用的空间大小
```sql
Select Segment_Name,Sum(bytes)/1024/1024 From User_Extents Group By Segment_Name order by Sum(bytes)/1024/1024 desc
```
# 查询出系统表空间的大小，并按大小进行降序排列(需要SYSDBA的权限)：　　
```sql
Select Tablespace_Name,Sum(bytes)/1024/1024 From Dba_Segments Group By Tablespace_Name order by Sum(bytes)/1024/1024 desc
```
# 查询最新一天数据
```sql
Select * from Table order by times desc fetch first 1 row only with ur
```
