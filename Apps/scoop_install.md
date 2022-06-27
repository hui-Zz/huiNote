# scoop安装

## 【步骤一：安装环境检查】

- Windows7以上
- PowerShell版本 >= 5.0
  - `$PSVersionTable.PSVersion.Major`  查看Powershell版本
- .NET Framework版本 >= 4
  - `$PSVersionTable.CLRVersion.Major`  查看.NET Framework版本

## 【步骤二：】更改PowerShell脚本执行策略

打开powershell3.0+，输入以下代码，选择A【全是】
```shell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

## 【步骤三：安装scoop】

```shell
# 若要改变软件默认安装路径
$env:SCOOP='D:\scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

# 上面成功之后，进入下载安装scoop（如果出现无法访问的红字则需要科学上网）
# 设置代理：scoop config proxy [username:password@]host:port
# scoop config proxy 127.0.0.1:1080

# 【下载安装scoop】
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
iwr -useb get.scoop.sh | iex

# 旧的安装：iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

```

## 【步骤四：安装基础必要软件】

```shell
scoop install 7zip sudo git innounp
```
- 解压软件安装包需要安装：7zip innounp
- 管理员权限软件需要安装：sudo
- 下载第三方开源软件需要：git

- 提高下载速度，可以先安装上aria2
  - `scoop install aria2`
    - 下载经常失败，外网不稳定可以关闭aria2
    - `scoop config aria2-enabled False`
  - 查看aria2开关状态
  - `scoop config aria2-enabled`

## 安装软件库和软件

```shell
# 扩展软件库
scoop bucket add main
scoop bucket add extras
scoop bucket add bear https://github.com/AStupidBear/scoop-bear
# 国内软件软件库
scoop bucket add dorado https://github.com/chawyehsu/dorado
scoop bucket add dodorz https://github.com/dodorz/scoop
scoop bucket add echo https://github.com/echoiron/echo-scoop
scoop bucket add scoop-zapps https://github.com/kkzzhizhou/scoop-zapps
scoop bucket add scoop-xkyii https://github.com/xkyii/scoop-xkyii
# 安装指定某个库里面的软件：chrome浏览器（同名的情况）
scoop bucket add 42wim https://github.com/42wim/scoop-bucket.git
scoop install 42wim/googlechrome-dev
# 安装一些老版本软件
scoop bucket add versions
scoop install tomcat7 mysql56
# Java开发环境
scoop bucket add tomato https://github.com/zhoujin7/tomato.git
scoop install OracleJDK8 maven tomcat nginx postman Navicat-Premium-chs
```

本人的scoop软件列表 [AppScoopList](Apps/AppScoopList.md)

## 指定使用全局安装路径

```shell
$env:SCOOP_GLOBAL='D:\apps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
scoop install -g <app>
```
## 更换 PowerShell 的主题颜色
```shell
scoop install colortool
# https://github.com/JanDeDobbeleer/oh-my-posh
```

---
## scoop help 帮助一览

```shell
alias       Manage scoop aliases # 管理指令的替身
bucket      Manage Scoop buckets # 管理软件仓库
cache       Show or clear the download cache # 查看与管理缓存
checkup     Check for potential problems # 做个体检，检查问题
cleanup     Cleanup apps by removing old versions # 清理缓存与旧版本软件包
config      Get or set configuration values # 配置Scoop
create      Create a custom app manifest # 创建自定义软件包
depends     List dependencies for an app # 查看依赖
export      Exports (an importable) list of installed apps # 导出软件包列表
help        Show help for a command # 显示帮助指令
hold        Hold an app to disable updates # 禁止软件包更新
home        Opens the app homepage # 打开软件包主页
info        Display information about an app # 显示软件包信息
install     Install apps # 安装软件包的指令
list        List installed apps # 列出所有已安装软件包
prefix      Returns the path to the specified app # 查看软件包路径
reset       Reset an app to resolve conflicts # 恢复软件包版本
search      Search available apps # 搜索软件包
status      Show status and check for new app versions # 查看软件包更新状态
unhold      Unhold an app to enable updates # 启动软件包更新
uninstall   Uninstall an app # 卸载软件包的指令
update      Update apps, or Scoop itself # 更新软件包
virustotal  Look for app hash on virustotal.com # 查看哈希值
which       Locate a shim/executable (similar to 'which' on Linux) # 查看可执行程序路径
```

