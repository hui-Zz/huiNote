---
title: "常用的URL Scheme"
source: "https://www.cnblogs.com/bsguo/p/11163919.html"
author:
  - "[[Code.Rookie]]"
published: 2019-07-10
created: 2025-09-02
description: "系统 短信| | app store| 电话| 备忘录| 设置| E Mail| 支付宝 支付宝| | 蚂蚁庄园| 蚂蚁森林| 蚂蚁宝卡| 款码| 扫码| 红包| 股票| 生活缴费| 手机充值| 彩票| 淘票票| 查快递| AA收款| 收款| 转账| 还信用卡| 钉钉| 淘宝网| 淘宝旅行| 淘宝宝"
tags:
  - "clippings"
---

### 系统

| 短信 | `sms://` |
| --- | --- |
| app store | `itms-apps://` |
| 电话 | `tel://` |
| 备忘录 | `mobilenotes://` |
| 设置 | `prefs:root=SETTING` |
| E-Mail | `MESSAGE://` |

### 支付宝

| 支付宝 | `alipay://` |
| --- | --- |
| 蚂蚁庄园 | `alipays://platformapi/startapp?appId=66666674` |
| 蚂蚁森林 | `alipays://platformapi/startapp?appId=60000002` |
| 蚂蚁宝卡 | `alipays://platformapi/startapp?appId=60000057` |
| 款码 | `alipayqr://platformapi/startapp?saId=20000056` |
| 扫码 | `alipays://platformapi/startapp?saId=10000007` |
| 红包 | `alipays://platformapi/startapp?appId=88886666` |
| 股票 | `alipays://platformapi/startapp?appId=20000134` |
| 生活缴费 | `alipays://platformapi/startapp?appId=20000193` |
| 手机充值 | `alipays://platformapi/startapp?appId=10000003` |
| 彩票 | `alipays://platformapi/startapp?appId=10000011` |
| 淘票票 | `alipays://platformapi/startapp?appId=20000131` |
| 查快递 | `alipays://platformapi/startapp?appId=20000754` |
| AA收款 | `alipays://platformapi/startapp?appId=20000263` |
| 收款 | `alipays://platformapi/startapp?appId=20000123` |
| 转账 | `alipays://platformapi/startapp?appId=20000221` |
| 还信用卡 | `alipays://platformapi/startapp?appId=09999999` |
| 钉钉 | `dingtalk://` |
| 淘宝网 | `taobao://` |
| 淘宝旅行 | `taobaotravel://` |
| 淘宝宝贝搜索 | `taobao://http://s.taobao.com/?q=：prompt` |
| 淘宝店铺搜索 | `taobao://http://shopsearch.taobao.com/browse/shop_search.htm?q=：prompt` |
| 天猫 | `tmall://` |

### QQ

| QQ | `mqq://` |
| --- | --- |
| QQ群组 | `mqqapi://card/show_pslcard?src_type=internal&version=1&card_type=group&uin={QQ群号}` |
| QQ联系人 | `mqqapi://card/show_pslcard?src_type=internal&version=1&uin={QQ号码}` |
| QQ国际版 | `mqqiapi://` |
| QQ音乐 | `qqmusic://` |
| QQ音乐最近播放 | `qqmusic://today?mid=31&k1=2&k4=0` |
| QQ浏览器 | `qq browser://` |
| QQ邮箱 | `qqmail://` |
| 腾讯企业邮箱 | `qqbizmailDistribute2://` |
| 腾讯视频 | `tenvideo://` 或 `tenvideo2://` 或 `tenvideo3://` |
| 腾讯新闻 | `qqnews://` |
| 腾讯微云 | `weiyun://` |
| 腾讯地图 | `sosomap://` |
| 腾讯视频 | tenvideo:// |
| QQ斗地主 | `tencent382://` |
| QQ浏览器 | `mttbrowser://` |
| QQ安全中心 | `qmtoken://` |
| 腾讯手机管家 | `mqqsecure://` |
| 腾讯微博 | `TencentWeibo://` |
| 天天星连萌 | `tencent100689806://` |
| 天天爱消除 | `tencent100689805://` |
| 天天酷跑 | `tencent100692648://` |
| 天天飞车 | `tencent100695850://` |
| 节奏大师 | `tencentrm://` |

### 微信

| 微信 | `weixin://` |
| --- | --- |
| 微信 | `wechat://` |
| 微信-扫一扫 | `weixin://dl/scan` |
| 微信-反馈 | `weixin://dl/feedback` |
| 微信-朋友圈 | `weixin://dl/moments` |
| 微信-设置 | `weixin://dl/settings` |
| 微信-消息通知设置 | `weixin://dl/notifications` |
| 微信-聊天设置 | `weixin://dl/chat` |
| 微信-通用设置 | `weixin://dl/general` |
| 微信-公众号 | `weixin://dl/officialaccounts` |
| 微信-游戏 | `weixin://dl/games` |
| 微信-帮助 | `weixin://dl/help` |
| 微信-反馈 | `weixin://dl/feedback` |
| 微信-个人信息 | `weixin://dl/profile` |
| 微信-功能插件 | `weixin://dl/features` |

### 百度

| 百度 | `baiduboxapp:// 或 BaiduSSO://` |
| --- | --- |
| 百度地图 | `baidumap://` |
| 百度贴吧 | `com.baidu.tieba://` |
| 百度云 | `baiduyun://` |
| 百度音乐 | `baidumusic://` |
| 百度视频 | `baiduvideoiphone://` 或 `bdviphapp://` |
| 百度糯米 | `bainuo://` |
| 百度魔图 | `photowonder://` |
| 百度魔拍 | `wondercamera://` |
| 百度导航 | `bdNavi://` |
| 百度输入法 | `BaiduIMShop://` |

### 网易

| 网易邮箱 | `neteasemail://` |
| --- | --- |
| 网易新闻 | `newsapp://` |
| 网易云音乐 | `orpheuswidget://` |
| 有道词典 | `yddict://` 或 `yddictproapp://` |
| 有道云笔记 | `youdaonote://` |
| 网易公开课 | `ntesopen://` |
| 网易将军令 | `netease-mkey://` |

### 美团

| 美团外卖 | `meituanwaimai://` |
| --- | --- |
| 美团 | `imeituan://` |
| 点评 | `dianping://` 或 `dianping://search` |

### 其他常用APP

| 12306 | `cn.12306://` |
| --- | --- |
| 京东 | `openApp.jdMobile://` 或 `jd://` |
| 今日头条 | `snssdk141://` |
| 高德地图 | `iosamap://` |
| 新浪微博 | `weibo://` 或 `sinaweibo://` |
| 微博国际版 | `weibointernational://` |
| 优酷 | `youku://` |
| 爱奇艺 | `iqiyi://` 或 `qiyi-iphone://` |
| 爱奇艺PPS | `ppstream://` |
| 土豆视频 | `tudou://` |
| PPTV | `pptv://` |
| 暴风影音 | `com.baofeng.play://` |
| 搜狐视频 | `sohuvideo-iphone://` 或 `sohuvideo://` |
| 搜狐新闻 | `sohunews://` |
| 虾米音乐 | `xiami://` |
| 酷我音乐 | `com.kuwo.kwmusic.kwmusicForKwsing://` |
| 酷狗音乐 | `kugouURL://` |
| 天天动听 | `ttpod://` |
| 摩拜单车 | `mobike://` |
| ofo | `ofoapp://` |
| chrome | `googlechrome://` |
| Gmail | `googlegmail://` |
| 印象笔记 | `evernote://` |
| 挖财记账 | `wacai://` |
| 猎豹浏览器 | `sinaweibosso.422729959://` |
| UC浏览器 | `ucbrowser://` |
| 名片全能王 | `camcard://` |
| 豆瓣fm | `doubanradio://` |
| 微盘 | `sinavdisk://` |
| 人人 | `renren://` |
| 我查查 | `wcc://` |
| 1号店 | `wccbyihaodian://` |
| 知乎 | `zhihu://` |
| 墨客 | `com.moke.moke-1://` |
| 扫描全能王 | `camscanner://` |
| TuneIn Radio | `tunein://` 或 `tuneinpro://` |
| OfficeSuite | `mobisystemsofficesuite://` |
| WPS Office | `KingsoftOfficeApp://` |
| Line | `line://` |
| 1Password | `onepassword://` |
| Clear(著名的Todo应用) | `clearapp://` |
| Calendars 5 | `calendars://` |
| GoodReader 4 | `com.goodreader.sendtogr://` |
| PDF Expert 5 | `pdfexpert5presence://` |
| Documents 5 | `rdocs://` |
| nPlayer | `nplayer-http://` |
| GPlayer | `gplayer://` |
| AVPlayer | `HD AVPlayerHD://` |
| AVPlayer | `AVPlayer://` |
| Ace Player | `aceplayer://` |
| 12306订票助手 | `trainassist://` |
| 金山词霸 | `com.kingsoft.powerword.6://` |
| 凤凰新闻 | `comIfeng3GifengNews://` |
| 高铁管家 | `gtgj://` |
| 飞信 | `fetion://` |
| 大智慧 | `dzhiphone://` |
| 布卡漫画 | `buka://` |
| 哔哩哔哩动画 | `bilibili://` |
| 56视频 | `com.56Video://` |
| 365日历 | `rili365://` |
| 58同城 | `wbmain://` |
| 遇见 | `iaround://` |
| 陌陌 | `momochat://` |
| 旺旺卖家版 | `wangwangseller://` |
| 掌阅iReader | `iReader://` |
| 艺龙旅行 | `elongIPhone://` |
| 迅雷+迅雷云播 | `thunder://` |
| 熊猫公交 | `wb1405365637://` |
| 携程无线 | `CtripWireless://` |
| 无线苏州 | `SuZhouTV://` |
| 唯品会 | `vipshop://` |
| 微视 | `weishiiosscheme://` |
| 微拍 | `wpweipai://` |
| 旺信 | `wangxin://` |
| 万年历 | `youloft.419805549://` |
| 同花顺 | `amihexin://` |
| 天涯社区 | `tianya://` |
| 天气通Pro | `sinaweatherpro://` |
| 天气通 | `sinaweather://` |
| 墨迹天气 | `rm434209233MojiWeather://` |
| 蜻蜓FM | `qtfmp://` |
| 浦发银行 | `wx1cb534bb13ba3dbd://` |
| 招商银行 | `cmbmobilebank://` |
| 建设银行 | `wx2654d9155d70a468://` |
| 工商银行 | `com.icbc.iphoneclient://` |
| 保卫萝卜2 | `wb2217954495://` |
| 保卫萝卜 | `wb1308702128://` |
| 搜狗输入法 | `com.sogou.sogouinput://` |
| 随手记 | `FDMoney://` |
| weico微博 | `weico://` |

URL Schema 都可以通过iTunes、抓包获取，具体方法可以自己去研究。

posted @ [Code.Rookie](https://www.cnblogs.com/bsguo)   阅读(32827)  评论(1) [收藏](https://www.cnblogs.com/bsguo/p/) [举报](https://www.cnblogs.com/bsguo/p/)
