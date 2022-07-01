## 备份数据库文件：

**备份前必须先关闭要备份的数据库实例（instance）！**

C:\app\Administrator\oradata\orcl

数据库主要文件：*.CTL、*.DBF、*.LOG

C:\app\Administrator\product\11.2.0\dbhome_1\database

数据文件：SPFILEORCL.ORA、密码文件：PWDorcl.ora

C:\app\Administrator\admin\orcl\pfile

INIT<sid>.ORA文件（可选）：init.ora.38201423476（恢复时提示缺少init实例名.ora时拷贝至C:\app\oracle\product\11.2.0\dbhome_1\dbs下）

C:\app\Administrator\flash_recovery_area\orcl

控制文件：*.CTL

## 恢复启动数据库：

建立服务：使用oradim 命令 cmd下 oradim -new -sid erp 表示建立一个服务，sid为erp（原来的数据库实例名）。关于oradim的命令另外给出专门解释。

建立监听： net configuration assintant （netca)来建立，或用脚本建立并且开启。

Pasted from: < [oracle11g冷备份_鲁面羊_百度空间](http://hi.baidu.com/power9413/item/f11188320b39abf4a98428d6)>




