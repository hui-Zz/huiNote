```sql
SELECT
	tags_table.product_id
FROM
	tags_table
WHERE
	tags_table.tag_id IN ('1','2')
GROUP BY
	tags_table.product_id
HAVING
	count(DISTINCT tags_table.tag_id) >= 2
```

