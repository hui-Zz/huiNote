## scoop安装

- 检查powershell版本 should be >= 5.0
  - `$psversiontable.psversion.major`

```shell
# 第一步，打开powershell3.0+，输入以下代码，选择A【全是】
set-executionpolicy remotesigned -s cu
# 若要改变安装路径
$env:SCOOP='D:\scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

# 上面成功之后，进入第二步（无法访问则科学上网）scoop config proxy [username:password@]host:port
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
iwr -useb get.scoop.sh | iex

# 扩展软件库
scoop bucket add extras
# 国内软件库
scoop bucket add dorado https://github.com/h404bi/dorado

# 解压软件安装包需要安装：7zip
# 管理员权限软件需要安装：sudo
# 提高下载速度，可以先安装上aria2
#scoop config aria2-enabled

scoop install aria2 7zip sudo git
scoop install terminus typora github
scoop install flux fastcopy
scoop install fiddler

scoop bucket add versions
scoop install tomcat7 mysql56

scoop bucket add jetbrains
scoop install IntelliJ-IDEA-Ultimate

```

### 改变全局安装路径
```shell
$env:SCOOP_GLOBAL='D:\apps'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
scoop install -g <app>

scoop install -g idea-ultimate
```
### 更换 PowerShell 的主题颜色
```shell
scoop install colortool
# https://github.com/JanDeDobbeleer/oh-my-posh
```

---
