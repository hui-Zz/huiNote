\*\* 由于此文年事已久，可能某些 URL Schemes 已失效，可在评论区留言指出！(最后更新于 2024.10.28)

# 关于 URL Scheme 你知道多少？

### iOS 系统中

由于苹果的各应用都是在沙盒中，不能够互相之间访问或共享数据。但是苹果还是给出了一个可以在 APP 之间跳转的方法：URL Scheme。简单的说，URL Scheme 就是一个可以让 APP 相互之间可以跳转的协议。每个 APP 的 URL Scheme 都是不一样的，如果存在一样的 URL Scheme，那么系统就会响应先安装那个 APP 的 URL Scheme，因为后安装的 APP 的 URL Scheme 被覆盖掉了，是不能被调用的。

### Android 系统中

Android 中的 Scheme 是一种页面内跳转协议，是一种非常好的实现机制，通过定义自己的 Scheme 协议，可以非常方便跳转 app 中的各个页面；通过 scheme 协议，服务器可以定制化告诉 App 跳转那个页面，可以通过通知栏消息定制化跳转页面，可以通过 H5 页面跳转页面等。
URL Scheme 就如同网页的 url 链接一样，可以打开 App 或跳转到相应的页面。但是大部分 APP 没有公开自己的 URL Scheme。

### 常用 iOS APP 的 URL Scheme

收集了一些常用 iOS APP 的 URL Scheme 及示例，持续更新，欢迎大家一起来补充

## 系统

    设置 (App调用可添加“App-”前缀）

    设置 Perfs:root=ControlCenter&path=CUSTOMIZE_CONTROLS

    通用 Prefs:root=General
    辅助功能 Prefs:root=General&path=ACCESSIBILITY
    关于手机 Prefs:root=General&path=About
    键盘设置 Prefs:root=General&path=Keyboard
    键盘设置 → 键盘 Prefs:root=General&path=Keyboard/KEYBOARDS
    存储空间 Prefs:root=General&path=STORAGE_ICLOUD_USAGE/DEVICE_STORAGE
    关于本机 Prefs:root=General&path=About
    描述文件 Prefs:root=General&path=ManagedConfigurationList
    日期与时间修改 Prefs:root=General&path=DATE_AND_TIME
    语言与地区 Prefs:root=General&path=INTERNATIONAL
    还原 Prefs:root=General&path=Reset
    自动锁定时间修改页面 Prefs:root=General&path=AUTOLOCK

    隐私设置 Prefs:root=Privacy
    隐私设置 → 定位设置 Prefs:root=Privacy&path=LOCATION

    电池电量 Prefs:root=BATTERY_USAGE
    蜂窝数据 Prefs:root=MOBILE_DATA_SETTINGS_ID
    蓝牙设置 Prefs:root=Bluetooth
    显示设置 Prefs:root=DISPLAY
    声音设置 Prefs:root=Sounds
    铃声设置 Prefs:root=Sounds&path=Ringtone
    墙纸设置 Prefs:root=Wallpaper
    热点设置 Prefs:root=INTERNET_TETHERING
    飞行模式 Prefs:root=AIRPLANE_MODE
    邮件设置 Prefs:root=ACCOUNT_SETTINGS
    Facetime通话设置 Prefs:root=FACETIME
    音乐设置 Prefs:root=MUSIC
    备忘录设置 Prefs:root=NOTES
    通知设置 Prefs:root=NOTIFICATIONS_ID
    指纹/面容与密码 Prefs:root=TOUCHID_PASSCODE
    钱包与 Apple Pay Prefs:root=PASSBOOK
    电话设置 Prefs:root=Phone
    照片设置 Prefs:root=Photos

    Siri 设置 Prefs:root=SIRI
    无线局域网 WIFI 设置 Prefs:root=WIFI
    iCloud 设置 Prefs:root=CASTLE
    Wi-Fi 设置 Prefs:root=WIFI![]()
    App Store 设置 Prefs:root=STORE

    iOS 钱包 shoebox://url-scheme
    打开 Safari 浏览器 x-web-search://
    捷径 workflow://run-workflow?name=[name]&input=[input] （较旧的版本）
    打开地图 map: //
    世界时钟 Clock-worldclock://
    闹钟 Clock-alarm://
    秒表 Clock-stopwatch://
    倒计时 Clock-timer://
    打开相册 Photos://
    查找 iPhone fmip1://
    打电话 tel://110
    给某人发送短信 sms://13812345678
    备忘录 mobilenotes://
    日历 calshow://

    AppStore
      查看某app https://itunes.apple.com/cn/app/id741597322?mt=8
      搜索 https://itunes.apple.com/WebObjects/MZStore.woa/wa/search?mt=8&submit=edit&term=微信#software

## 工具

    Surge surge://
     → 开始选择的连接 surge://start[?autoclose=true]
     → 关闭默认连接 surge://stop[?autoclose=true]

    Chrome googlechrome://
    手机百度 BaiduSSO://
    Duolingo 多邻国 duolingo: //
    Videoleap videoleap://
    QQ浏览器 mqqbrowser://
    UC浏览器 ucbrowser://
    搜狗输入法 com.sogou.sogouinput://
    圈子账本 qzzb://
    我的密码 findmykey://
    我查查 wcc://
    有道词典 yddict://
    名片全能王 camcard://
    Evernote evernote://
    迅雷 thunder://
    QQ同步助手 qqpim://
    天气通 sinaweather://
    墨迹天气 rm434209233MojiWeather://
    同花顺 amihexin://
    腾讯企业邮箱 qqbizmailDistribute2://
    腾讯手机管家 mqqsecure://
    网易邮箱 neteasemail://
    百度云 baiduyun://
    米家 mihome://

## **社交**

    知乎 zhihu:// （2018.10.31更新）
     → 某篇文章 zhihu://articles/27758684
     → 某个专栏 zhihu://columns/lishuai

    手机 QQ mqq://

    微信 weixin://
     → 扫一扫 weixin://scanqrcode
     → 扫一扫 weixin://dl/scan
     → 微信付款码 weixin://widget/pay
     → 反馈 weixin://dl/feedback
     → 朋友圈 weixin://dl/moments
     → 设置 weixin://dl/settings
     → 消息通知设置 weixin://dl/notifications
     → 聊天设置 weixin://dl/chat
     → 通用设置 weixin://dl/general
     → 公众号 weixin://dl/officialaccounts
     → 游戏 weixin://dl/games
     → 帮助 weixin://dl/help
     → 反馈 weixin://dl/feedback
     → 个人信息 weixin://dl/profile
     → 功能插件 weixin://dl/features

    企业微信 wxwork://
    钉钉 dingtalk://
    Twitter twitter:// (X.COM)
     → 用户 twitter://user?id=12345

    微博 weibo:// 或 sinaweibo://
     → 扫一扫 weibo://qrcode

    微博国际版 weibointernational:// 感谢 @MrClown 贡献
     → 热搜 weibointernational://hotsearch

    百度贴吧 com.baidu.tieba://
    腾讯微博 TencentWeibo://
    陌陌 momochat://
    天涯社区 tianya://

## 购物

    拼多多 pinduoduo://
    淘宝 taobao://
     → 搜索 taobao://s.taobao.com/?q=充电宝

    支付宝 alipay://
     → 扫一扫 alipayqr://platformapi/startapp?saId=10000007
     → 付款码 alipayqr://platformapi/startapp?appId=20000056
     → 收款码 alipayqr://platformapi/startapp?saId=20000123
     → 转账 alipays://platformapi/startapp?appId=20000116
     → 发红包 alipay://platformapi/startapp?saId=88886666
     → 记账本 alipays://platformapi/startapp?appId=20000168
     → 创建群聊 alipay://platformapi/startapp?appId=20000254&actionType=createGroup
     → 滴滴出行 alipay://platformapi/startapp?appId=20000778
     → 蚂蚁森林 alipay://platformapi/startapp?appId=60000002
     → 手机充值 alipayqr://platformapi/startapp?appId=10000003
     → 生活缴费 alipays://platformapi/startapp?appId=20000193
     → 快递查询 alipays://platformapi/startapp?appId=20000754

    京东 openapp.jdmobile://
    美团 imeituan://
    美团外卖 meituanwaimai://
    大众点评 dianping://
    1号店 yhd://
    唯品会 vipshop://

## 出行

    高德地图 iosamap://
     → 公交导航 iosamap://path?sourceApplication=日历&sid=BGVIS1&sname=$我的位置&did=BGVIS2&dname=目的地&dlat=纬度&dlon=经度&dev=0&m=0&t=0
    // t为出行方式：0 驾车，1 公交，2 步行
    // m为出行要求 当t为驾车时：0速度最快，1费用最少，2距离最短，3不走高速，4躲避拥堵，5不走高速且避免收费，6不走高速且躲避拥堵，7躲避收费和拥堵，8不走高速躲避收费和拥堵
    // 当t为公交时：0最快捷，2最少换乘，3最少步行，5不乘地铁 ，7只坐地铁 ，8时间短

    百度地图 baidumap://
     → 导航baidumap://map/direction?origin=我的位置&destination=公司&mode=driving
    // mode 导航模式，固定为transit、driving、walking

    腾讯地图 qqmap://
     → 导航 qqmap://map/routeplan?from=我的位置&type=drive&tocoord=36.547901,104.258354&to=dest&coord_type=1&policy=0

    北京交警 zcblbjjj://
    滴滴出行 diditaxi://
    订票助手 trainassist://
    艺龙旅行（旧） elongIPhone://
    艺龙旅行（新） eltclient://
    携程无线 CtripWireless://
    淘宝旅行 taobaotravel://

    摩拜单车 mobike://
     → 扫码 mobike://scanqr

## 娱乐

    抖音 snssdk1128://
     → 首页 snssdk1128://feed?refer=web&gd_label={{gd_label}}
    抖音极速版 TikTok snssdk2329://
    抖音国际版 snssdk1233://
    快手 kwai://

    斗鱼：douyutv://
    PPTV pptv://
    优酷 youku://
    YouTube youtube://
    哔哩哔哩 bilibili://
    搜狐视频 sohuvideo://
    腾讯视频 tenvideo://
    爱奇艺视频 qiyi-iphone://

    今日头条 snssdk141://
    掌阅iReader iReader://
    网易新闻 newsapp://
    腾讯新闻 qqnews://

    网易云音乐（旧版） orpheus:// （2018.10.31更新）
     → 识别音乐 orpheus://recognize
     → 本地音乐 orpheus://download
     → 私人FM orpheus://radio
     → 我的喜欢 orpheus://playlist/32778108  歌单编号可以通过分享歌单的链接获得
    网易云音乐（新版） orpheuswidget://
     → 识别歌曲 orpheuswidget://recognize
    QQ音乐 qqmusic://
     → 识别音乐 qqmusic://qq.com/ui/recognize
     → 继续播放 qqmusic://qq.com/media/resumeSong?p=%7B%7D
    豆瓣FM doubanradio://
    百度音乐 baidumusic://
    百度视频 baiduvideoiphone://
    快看漫画 kuaikan://

## 其他

    招商银行 cmbmobilebank://
    建设银行 wx2654d9155d70a468://
    工商银行 com.icbc.iphoneclient://
    浦发银行 wx1cb534bb13ba3dbd://
    360智慧生活 smarthome://

### 资料

- [URL Schemes 使用详解](https://sspai.com/post/31500)
- [TikTok-Scheme](https://github.com/Oct1a/TikTok-Scheme)

## 其他常用工具分享

1. [生成二维码的书签](https://zhuziyi1989.github.io/tools/static/qcode-bookmark.html)
2. [一个简洁的网页版时钟屏保](https://zhuziyi1989.github.io/tools/static/time.html)
3. [Linux 命令速查手册](https://zhuziyi1989.github.io/tools/static/linux.html)

## 科学上网

1. [☁ RackNerd 2025 年促销汇总：最具性价比海外 VPS 年付低至 $ 10 美元 #8 科学上网查资料好帮手](https://github.com/zhuziyi1989/tools/issues/8)
2. [☁ 大米机场 快速稳定 价格实惠 助力科学研究 实现民族复兴](https://1s.bigmeok.me/user#/register?code=u0zbAkPZ)
