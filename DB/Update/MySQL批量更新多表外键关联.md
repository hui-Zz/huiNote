```sql
UPDATE test1, test2 
SET test1.NAME = test2.NAME,
test1.age = test2.age 
WHERE
	test1.id = test2.id
```

```sql
UPDATE 表名 
SET 字段名 = REPLACE ( 字段名, '替换前', '替换后' );
```