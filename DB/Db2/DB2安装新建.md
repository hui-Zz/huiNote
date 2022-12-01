## 创建实例和数据库
```shell

# 创建组和实例用户

[root@localhost ~]# su

#!/bin/sh

groupadd -g 2000 db2igrp1

groupadd -g 2001 db2fgrp1

groupadd -g 2002 db2agrp1

useradd -m -g db2igrp1 -d /home/db2inst1 db2inst1

useradd -m -g db2fgrp1 -d /home/db2fenc1 db2fenc1

useradd -m -g db2agrp1 -d /home/db2das1 db2das1

echo passwd...

# 安装 license(产品许可证)PS:如果是ExpressC版本就不用做

[root@localhost /]# cd ibm/db2/V10.5/adm/

[root@localhost adm]# chmod -R 775 *

[root@localhost adm]# ./db2licm -a /opt/expc/db2/license/db2expc_uw.lic

# 创建并连接实例

[root@localhost /]# cd opt/ibm/db2/V10.5/instance/

[root@localhost instance]# chmod -R 775 *

[root@localhost instance]# ./db2icrt -p 50000 -u db2fenc1 db2inst1

[root@localhost instance]# su - db2inst1

# 创建并启动测试数据库

[db2inst1@localhost ~]$ db2sampl

[db2inst1@localhost ~]$ db2start

# 自动启动

[db2inst1@localhost ~]$ db2iauto -on db2inst1

# 关闭防火墙！

service iptables stop
```

## 创建DAS管理服务器
```shell

[root@localhost db2as]# su

[root@localhost db2as]# cd /opt/ibm/db2/V10.5/instance/

[root@localhost instance]# ./dascrt -u db2das1

[root@localhost instance]# su - db2das1

[db2as@localhost ~]$ db2admin start

```

## 设置端口号
```shell

[root@localhost /]# vim etc/services

按G跳转最后一行添加：

db2inst1 50000/tcp

[db2inst1@localhost ~]$ cat /etc/services | grep db2inst1

[db2inst1@localhost ~]$ db2 update dbm cfg using SVCENAME db2inst1

# db2 update database manager configuration using svcename db2inst1

# 查看端口号

[db2inst1@localhost ~]$ db2 get dbm cfg | grep SVCENAME
```

## 参数配置
```shell


[db2inst1@localhost ~]$ 

db2set DB2_EXTENDED_OPTIMIZATION=ON

db2set DB2_DISABLE_FLUSH_LOG=ON

db2set AUTOSTART=YES

db2set DB2_STRIPED_CONTAINERS=ON

db2set DB2_HASH_JOIN=Y

db2set DB2COMM=tcpip

db2set DB2_PARALLEL_IO=*

db2set DB2CODEPAGE=1386

# (db2set DB2CODEPAGE=819)

```

http://www.51testing.com/html/53/n-867553.html