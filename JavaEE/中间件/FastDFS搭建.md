# [分布式文件系统FastDFS安装教程](https://www.cnblogs.com/handsomeye/p/9451568.html)

# [用FastDFS一步步搭建文件管理系统](https://www.cnblogs.com/chiangchou/p/fastdfs.html)

# 命令使用

```shell
yum -y install wget
```

# 安装路径

```
/usr/local/fastdfs-5.11
/usr/local/fastdfs-nginx-module-1.20
/usr/local/libfastcommon-1.0.39
/usr/local/nginx-1.15.10
/usr/local/pcre-8.35
/usr/local/apache-tomcat-7.0.77
```

# 配置注意

- FastDFS与nginx端口保持一致
- 解决方案：修改fastdfs-nginx-module-1.20/src/config文件

```
ngx_module_incs="/usr/include/fastdfs /usr/include/fastcommon/"
CORE_INCS="$CORE_INCS /usr/include/fastdfs /usr/include/fastcommon/"
```
- 修改后再编译安装
```shell
./configure --prefix=/usr/local/nginx-1.15.10 --with-http_stub_status_module --with-http_ssl_module --with-pcre=/usr/local/pcre-8.35
./configure --prefix=/usr/local/nginx-1.15.10 --add-module=/usr/local/fastdfs-nginx-module-1.20/src

make && make install
```

- nginx.conf

```ini
user www www;

        location ~/group1/M00 {
            root /home/fdfs_storage/data;
            ngx_fastdfs_module;
        }
```

- nginx 400 Bad Request

解决办法：url_have_group_name改为true

```shell
vi /etc/fdfs/mod_fastdfs.conf
url_have_group_name=true
```
- nginx 命令
```shell
cd /usr/local/nginx/sbin/
./nginx 
./nginx -s stop #此方式相当于先查出nginx进程id再使用kill命令强制杀掉进程
./nginx -s quit #此方式停止步骤是待nginx进程处理任务完毕进行停止
./nginx -s reload
```

- 防火墙添加80端口

```
-A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
```

