# ★安装、导入数据库分配最大内存,避免错误★
# 安装Bin程序
``` chmod +x 程序.bin ```
# 开机自动启动DB2
``` vim /etc/rc.local ```
添加``` su db2inst1 -lc db2start ```
# 从根目录搜索后缀文件
``` find  /  -name *.sh ```
# 查看IP
``` ifconfig -a ```
# 去掉RHEL6注册提示
```shell
#!/bin/sh

rpm -qa | grep subscription-manager
yum remove subscription-manager-1.9.11-1.el6.i686
yum remove subscription-manager-firstboot-1.9.11-1.el6.i686
yum remove subscription-manager-gui-1.9.11-1.el6.i686
yum remove rhn-setup-gnome
``` # 光盘安装程序
```shell
[root@localhost ~]# mkdir /mnt/cdrom

[root@localhost ~]# mount /dev/cdrom /mnt/cdrom/

[root@localhost ~]# cd /mnt/cdrom/
[root@localhost cdrom]# ls

[root@localhost cdrom]# cp  安装程序 .tar.gz /tmp
[root@localhost cdrom]# cd /tmp/
[root@localhost tmp]# tar zxvf 安装程序.tar.gz


```
# 中文乱码
- 临时修改
```shell
[root@localhost root]# locale

[root@localhost root]# export LC_ALL=POSIX

```
- 重启修改
```shell

[root@localhost root]# vi /etc/sysconfig/i18n

按i进入编辑模式，在最后一行添加  LC_ALL=POSIX
按Esc退出编辑，输入:wq 退出保存文件
shutdown -r now 重启后生效
```