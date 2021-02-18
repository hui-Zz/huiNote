```sql
# 展示哪些线程正在运行
SHOW PROCESSLIST;

# 查看正在执行的事务
SELECT * FROM information_schema.INNODB_TRX;

# 查看正在锁的事务
SELECT * FROM information_schema.INNODB_LOCKS;

# 查看正在等待锁的事务
SELECT * FROM information_schema.INNODB_LOCK_WAITS;

# 显示innodb存储引擎状态的大量信息，包含死锁日志
SHOW ENGINE INNODB STATUS ;

# 展示数据库最大连接数的配置
SHOW VARIABLES LIKE 'max_connections';

# 查看存在哪些触发器
SELECT * FROM information_schema.TRIGGERS;

# 查看MySQL版本
SELECT VERSION();
```

