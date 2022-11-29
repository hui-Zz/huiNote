# 1. ping

  ping命令只能测试某个IP通不通，不能测试某端口的连通性。因为ping命令是基于ICMP协议，是计算机网络中的网络层的协议，但是想要测试某个的连通性，需要用传输层的TCP/UDP协议。

# 2. telnet

  这个命令在windows/linux上通用，要是在windows上，首先要看这个服务是不是开启的。

控制面板 -> 程序 -> 启用或关闭 Windows功能 -> Telnet客户端

用法：（注意中间是空格，不是冒号了）
```bash
telnet ip port
```

## 1.1 开放的端口

```bash
[appuser&dp-core-bat ~]$ telnet 10.172.123.253 28080
Trying 10.172.123.253...
Connected to 10.172.123.253
```

## 1.2 不开放的端口

```bash
[appuser&dp-core-bat ~]$ telnet 10.172.123.253 28081
Trying 10.172.123.253...
telnet: connect to address 10.172.123.253: Connection refused
```

# 3. ssh
用法
```bash
ssh -v -p port ip
```
说明:
- v 调试模式(会打印日志)
- p 指定端口
- username:远程主机的登录用户
- ip:远程主机
## 2.1. 开放的端口
```bash
C:\WINDOWS\system32>ssh -v -p 28080 10.172.123.253
OpenSSH_for_Windows_7.7p1, LibreSSL 2.6.5
debug1: Connecting to 10.172.123.253 [10.172.123.253] port 28080.
debug1: Connection established
```
## 2.2 未开放的端口
```bash
C:\WINDOWS\system32>ssh -v -p 28080 10.172.123.253
OpenSSH_for_Windows_7.7p1, LibreSSL 2.6.5
debug1: Connecting to 10.172.123.253 [10.172.123.253] port 28081.
debug1: connect to address 10.172.123.253 port 28081: Connection refused
ssh: connect to host 10.172.123.253 port 28081: Connection refused
```
# 4. curl
url 是常用的命令行工具，用来请求 Web 服务器。它的名字就是客户端（client）的 URL 工具的意思。

用法
```bash
curl ip:port
```
## 3.1 开放的端口
```bash
[appuser&dp-core-bat ~]$ curl 10.172.123.253 28080
<HTML>
<HEAD>
<TITLE>Error 404 - Not Found<TITLE>
<BODY>
</BODY>
</HTML>
```
## 3.2 未开放的端口
```bash
[appuser&dp-core-bat ~]$ curl 10.172.123.253 28081
curl: (7)Failed connect to 10.172.123.253:28081; Connection refused
```
# 5. wget
wget 是一个从网络上自动下载文件的自由工具，支持通过 HTTP、HTTPS、FTP 三个最常见的 TCP/IP协议 下载。

用法
```bash
wget ip:port
```
## 4.1 开放的端口
```bash
wget 10.172.123.253:28080
Connecting to 1.1.1.1:8000... connected.
```
## 4.2 未开放的端口
```bash
wget 10.172.123.253:28081 
failed: Connection timed out. Retrying.
```
# 6. tcping
这是个第三方工具，下载地址 tcping.exe - ping over a tcp connection。这个工具还可以用来测试TCP的延迟。在官网下载下载 tcping.exe, 复制到 ‘C:\Windows\System32’ 就可以在cmd里面用了。

用法
```bash
tcping ip port
```
# 总结
**windows系统下可用的: 1/2/6**
**linu系统下可用的: 1/2/3/4/5/6**