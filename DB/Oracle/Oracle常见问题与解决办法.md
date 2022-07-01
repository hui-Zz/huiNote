**数据字段大小写问题:** 双引号在Oracle中表示区分大小写，Oracle是严格区分大小写的，未使用双引号时默认全部转换为大写的  Pasted from: <[飞天心宏的博客](http://xuzhihong1987.blog.163.com/blog/static/267315872011112110937549/)>

**64位PL/SQL Develop 需要下载Oracle客户端:** instantclient-basic-nt-11.2.0.4.0.zip

**数据表死锁与解锁：** 用户编辑数据后未提交会话时，另一用户只能查看该表，无法修改alter system kill session 'SID,129';

**ORA-01012: TNS:** not logged on 未登录conn sys/as sysdba

**ORA-00214: TNS:** 控制文件版本不一致 oradata\orcl\control01.ctl 和 flash_recovery_area\orcl\control02.ctl文件需要相同

**ORA-01033:** sqlplus命令重启数据库

**ORA-01081:** sqlplus命令重启数据库

**ORA-12154：** TNS: 无法处理服务名 检查输入的服务名与配置的服务名是否一致。注意生成的本地服务名文件tnsnames.ora里每项首行服务名称前不能有空格。

**ORA-12162: TNS:net service name is incorrectly specified** 系统环境变量问题，检查.bash_profile文件
```sql

vi /home/oracle/.bash_profile

source .bash_profile

# exec bash --login

su oracle

sqlplus /nolog

conn /as sysdba

```
**ORA-12500: TNS: 监听程序无法启动专用服务器进程** 没有启动Oracle实例服务。启动实例服务：(CMD)oradim -startup -sid 实例名

**ORA-12514: TNS: 监听进程不能解析在连接描述符中给出的SERVICE_NAME** Net Manager服务名必须与服务器端监听器配置的全局数据库名一致。

**ORA-12535: TNS: 操作超时**  主要跟网络有关。检查客户端与服务端的网络是否畅通，两端防火墙是否阻挡了连接。

**ORA-12541: TNS: 无监听器** 服务器端的监听器没有启动，(CMD)lsnrctl status监听状态-Net Manager配置服务命名及监听地址，检查客户端IP地址或端口



