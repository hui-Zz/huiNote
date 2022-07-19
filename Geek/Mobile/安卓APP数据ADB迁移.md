# 查看adb版本
```shell
adb version
# 获取系统上所有的users
adb shell pm list users
```

```shell
# 获取所有安装应用包名
adb shell pm list packages
# 获取当前运行APP的包名
adb shell dumpsys activity top
# 找到该app的路径
adb shell pm path com.package.name
# 导出apk文件，到当前目录下
adb pull /data/app/com.package.name-1.apk .
```

# 安装应用到手机
```shell
adb install d:\1.apk
```

# 将应用数据备份到D盘并命名为xc.db
```shell
adb backup -f d:\xc.db com.package.name
```

# 恢复备份数据
```shell
adb restore d:\xc.db
```

# 其他资料：
```shell
adb backup -nosystem -all -noapk  -noshared -f app_live.ab com.package.name
# [-system | -nosystem] 是否备份系统
# [-apk | -noapk] 是否备份apk安装文件
# [-shared | -noshared] 是否备份手机存储空间
# -f *.ab 存档格式一定要是.ab
```

# 查看数据
这里使用abe工具解析ab文件
`java -jar abe.jar unpack app_live.ab app_live.rar`
