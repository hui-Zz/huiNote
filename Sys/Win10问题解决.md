# Win10进入安全模式
1. 电脑设置——更新和恢复——高级启动——立即启动——疑难解答——高级选项——重启——4)启用安全模式
2. 开机后在Windows徽标出现后强制关机——重复三次——自动修复——高级选项——疑难解答——高级选项——重启—— 4)启用安全模式


# Win10蓝屏代码
* SYSTEM_SERVICE_EXCEPTION(LongraDrvAMD64.sys)
> 解决：云端不兼容问题


# 64位与32位兼容问题
**32位程序系统自动重定向目录问题**

64位Windows操作系统下

第三方32位程序工具（AutoHotKey）调用命令提示符cmd.exe

系统自动重定向调用32位的%windir%\SysWoW64\cmd.exe

而非调用64位的%windir%\System32\cmd.exe

同理如果32位程序调用%WinDir%\Program Files

系统自动重定向调用32位的目录%WinDir%\Program Files (x86)

[http://hi.baidu.com/34lang/item/e517598645df5f53e73d19ab](http://hi.baidu.com/34lang/item/e517598645df5f53e73d19ab)