```sql
SELECT * FROM 表名

WHERE  id IN ( ID列表  )
ORDER BY
INSTR(
CONCAT('',  ID列表  ,''), id +','
)
```