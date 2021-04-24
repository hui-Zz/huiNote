# 1. 创建项目根目录
```shell
#!/bin/bash
read -p "请输入项目名称:" zzh_project
mkdir ${zzh_project}
cd ${zzh_project}
mkdir app
mkdir jetty
mkdir tomcat
 
```
 
 
# 2. 创建项目工程部署目录
```shell
#!/bin/bash
cd app
zzh_program=(
工程名称1
工程名称2
)
start_sh=/home/www/app/undergraduate/app/undergraduate_platform/jetty/start.sh
# 创建app\${工程}目录
for data in ${zzh_program[@]}
do
  echo ${data}
  mkdir ${data}
  cd ${data}
  mkdir jetty
  mkdir logs
  mkdir ${data}
  cd jetty
  # 3. 拷贝start.sh到${工程}目录
  cp ${start_sh} .
  cd ../..
done
cd ..
 
# 创建web应用jetty-${工程}目录
cd jetty
jetty_dir=/home/www/app/undergraduate/jetty
 
for data in ${zzh_program[@]}
do
  # 4. 拷贝jetty目录为jetty-${工程}目录
  cp -arf ${jetty_dir} jetty-${data}
done
```
> 进入jetty-${工程}目录，查看当前目录`pwd`
> 清除jetty-${工程}logs下日志：`rm -rf *`
> 清除jetty-${工程}work下所有：`rm -rf *`
>
> *  修改jetty-${工程}目录下start.ini
>
>    `cur_dir=$(pwd)`
>    `-Djava.io.tmpdir=${cur_dir}/work`
>
> *  war包解压命令`jar -xvf ${工程包名}.war`
>     解压后修改`log4j.properties`中日志输出地址
>     修改`loggingLevel`为error级别
>
> *  增加iptables防火墙规则
>
>    `vi /etc/sysconfig/iptables`
>
>    增加一条规则后重启iptables服务
>
>    `service iptables restart`
>
> *  启动项目`./start.sh`(`chmod x start.sh`添加执行权限)
>
>    执行`${项目名称}/app/${工程}/jetty/start.sh`文件启动项目
 
## start.sh
 
```shell
export JAVA_HOME=/usr/local/jdk1.6.0_45
export PATH=$JAVA_HOME/bin:$PATH
 
export JETTY_PORT=8002 #jetty服务器启动端口
export JETTY_DIR=/home/www/app/${项目名称}/app/${工程}/${工程} #工程目录
export JETTY_RUN=/home/www/app/${项目名称}/app/${工程}/${工程} #pid文件目录
# 启动脚本路径
/home/www/app/${项目名称}/jetty/jetty-${工程}/bin/jetty.sh start
```
 
 