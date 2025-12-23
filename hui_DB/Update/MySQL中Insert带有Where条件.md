#原sql
```sql
INSERT INTO card(cardno, cardnum) VALUES('1111', '100');
```

#带有Where条件
```sql

INSERT INTO card(cardno, cardnum) 
SELECT '111', '100' FROM DUAL WHERE NOT EXISTS(SELECT cardno FROM card WHERE cardno = '111');

```