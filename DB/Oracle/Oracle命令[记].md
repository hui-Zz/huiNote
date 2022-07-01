# 【登录|重启|连接|检测】：

**SQLPlus本地默认sys帐户登录：**

sqlplus /as sysdba

connect /as sysdba

**CMD本地登录：**

sqlplus "/ as sysdba"

sqlplus 用户/密码@实例名

**关闭数据库实例：**shutdown immediate

**强制关闭：**shutdown abort

**启动数据库实例：**startup

**测试连接：**tnsping 路径:1521/实例名

# 【Oracle监听程序命令（CMD下）】：

监听状态：lsnrctl status

启动监听：lsnrctl start

关闭监听：lsnrctl stop

重启监听：lsnrctl reload

# 【导出命令】

--用户数据库

exp 用户/密码@地址:1521/orcl file=路径.dmp

--全数据库

exp 用户/密码@实例名 file=路径.dmp full=y

--指定表

exp 用户/密码@实例名 file=路径.dmp tables=(表1,表2)

--指定用户

exp system/密码@orcl file=路径.dmp owner=(用户1,用户2)

--压缩compress=y

--字段filed1以"00"打头的数据导出

exp 用户/密码@实例名 file=路径.dmp query=\" where filed1 like '00%'\"

# 【导入命令】

--用户数据

imp 用户/密码@orcl file=路径.dmp

--已存在ignore=y

--表数据

exp 用户/密码@实例名 file=路径.dmp tables=(表1,表2)

# 【创建表空间、创建用户、用户关联表空间、赋予用户三权限】

create tablespace 表空间 datafile 'C:\app\Administrator\oradata\orcl\表空间.dbf' size 1024m autoextend on next 50m maxsize 10240m;

create user 用户 identified by 密码 default tablespace 表空间;

grant connect,resource,dba to 用户;

# 【删除表空间、删除用户权限、删除用户】

drop tablespace 表空间 including contents and datafiles cascade constraints;

revoke dba from 用户;

drop user 用户 cascade;

# 【修改用户密码】

alter user 用户名 identified by 密码;

# 【数据文件路径属性信息】

select * from dba_data_files

# 【数据库所有用户】

select * from dba_users

# 【数据库所有表】

select * from user_tables

# 【数据库所有表数据量】

SELECT t.TABLE_NAME, t.NUM_ROWS FROM user_tables t

# 【数据库所有表占用空间】

SELECT segment_name, SUM(bytes) / 1024 / 1024 Mbytese

  FROM user_segments

 WHERE segment_type = 'TABLE'

 GROUP BY segment_name;

# 【sequence序列】
```sql

-- Create sequence 

create sequence SEQ_序列名

minvalue 1

maxvalue 999999999999999999

start with 1

increment by 1

cache 20;

```
# 【触发器】
```sql
CREATE OR REPLACE TRIGGER TR_触发器名

  BEFORE INSERT ON 表名

  FOR EACH ROW

BEGIN

  SELECT SEQ_序列名.nextval INTO :new.序号字段 FROM dual;

END;
```

# 【生成序号列】

**不重复不跳跃：**ROW_NUMBER() OVER(ORDER BY 字段ID) NID**（可用于同步）**

**重复不跳跃：**RANK() OVER(ORDER BY 字段ID) NID

**重复跳跃：** DENSE_RANK() OVER(ORDER BY 字段ID) NID

  

---