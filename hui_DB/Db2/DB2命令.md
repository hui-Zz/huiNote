**连接命令：**su - db2inst1（实例名）  
**显示所有的实例：**db2ilist | **当前实例：**db2 get instance | **创建：**db2icrt | **删除：**db2idrop  
**数据库实例启动：**db2start | **关闭：**db2stop | **强制停止：**db2stop force  
**列出当前实例中数据库：**db2 list db directory | **激活的数据库：**db2 list active databases  

---

**连接数据库：**db2 connect to 数据库名 user 用户 using 密码（db2 connect to 数据库名）  
**查看表的空间：**db2 list tablespaces  
**列出数据库中所有用户表：**db2 list tables  
**查看表student结构：**db2 describe table 表名  
**用户数据库授权：**db2 grant dbadm on database to user 用户  
**重构表：**reorg table 表名  

---

**创建数据库：**db2 create database 数据库名  
**删除数据库：**db2 drop database 数据库名  
**导出数据库结构SQL：**db2look -d 数据库名 -e -a -c -o 导出文件名.sql -i 用户 -w 密码  
**导出数据库：**db2move 数据库名 export -u 用户 -p 密码  
**导出数据库中表：**db2move 数据库名 export -tn 表名 -u 用户 -p 密码  
**导入数据库结构SQL：**db2 -tvf 导出文件名.sql  
**导入数据库：**  
**[1：无需结构]**db2move 数据库名 import -u 用户 -p 密码  
**[2：需要结构]**db2move 数据库名 load -u 用户 -p 密码  

