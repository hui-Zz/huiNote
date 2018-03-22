# 查询重复字段的数据
```sql
select * from 表名 where id in 
( select id from 表名 group by id having count(1) >=2 )
```
