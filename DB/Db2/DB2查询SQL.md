# 查询表字段列信息 
```SQL
SELECT  t.*  FROM  SYSCAT.COLUMNS t
WHERE  TABSCHEMA = 'Schemas名'  AND TABNAME = UPPER('表名')
```
# 查询出当前用户的表所占用的空间大小
```SQL
Select Segment_Name,Sum(bytes)/1024/1024 From User_Extents Group By Segment_Name order by Sum(bytes)/1024/1024 desc
```
# 查询出系统表空间的大小，并按大小进行降序排列(需要SYSDBA的权限)：　　
```SQL
Select Tablespace_Name,Sum(bytes)/1024/1024 From Dba_Segments Group By Tablespace_Name order by Sum(bytes)/1024/1024 desc
```
# 查询最新一天数据
```SQL
Select * from Table order by times desc fetch first 1 row only with ur
```
