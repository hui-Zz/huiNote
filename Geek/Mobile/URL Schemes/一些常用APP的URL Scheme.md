---
title: "一些常用APP的URL Scheme"
source: "https://xydida.com/2020/10/1/notes/APP-URL-Scheme/"
author:
  - "[[Hui Wang's Blog]]"
published: 2020-10-01
created: 2025-09-02
description: "一些常用APP的URL Scheme，Deeplink链接，如淘宝deeplink scheme、京东deeplink scheme、支付宝deeplink scheme、微信deeplink scheme等，还有一些应用商店的Scheme"
tags:
  - "clippings"
---
## 全网最全Url Scheme(Deeplink)

APP URL Scheme具体查询指南请移步少数派的文章👉 [URL Scheme 查询指南](https://sspai.com/post/66334) 。

## Alook

启动App：Alook://  
搜索或者打开URL： Alook://后面接搜索的内容或要打开的链接  
新建下载:Alok://download/后面接下载的链接  
扫描二维码: Alook://QRCode  
开始搜索: Alook://Search  
打开图书馆: Alook://Books  
打开书签:Alok://Bookmarks  
扫描二维码：Alook://QRCode

## vvebo

打开应用 vvebo  
转发 vvebo://reposts  
评论 vvebo://comments  
发微博 vvebo://post

## 360浏览器

```javascript
360://
```

## Microsoft

### Microsoft Planner

```javascript
// Open

planner://
```

### Microsoft Intune

```javascript
// Open with Microsoft Intune

ms-outlook-intunemam://

ms-outlook-accept-attachments-intunemam://

projectsiena-intunemam://

x-msauth-com-microsoft-msapps-intunemam://

ms-app-ntunemam://
```

### Microsoft Power Apps

```javascript
projectsiena://

x-msauth-com-microsoft-msapps://

ms-app://

ms-apps://
```

## 6pm

```javascript
sixpm://
```

## 8mm Vintage Camera

```javascript
nx8mm://
```

## Achievement — Reward Health

```javascript
achievement://
```

## AdBlock Pro for Safari

```javascript
adblockpro://
```

## Age of Solitaire: Build City

```javascript
fb1431194636974533://
```

## Agenda

```javascript
agenda://

agenda-notes://
```

## Airbnb

```javascript
airbnb://
```

## AirDroid — File Transfer&Share

```javascript
sandstudio-airdroid://
```

## Airmail

```javascript
airmail://

Start draft

airmail://compose

Start draft with recipient

airmail://compose?to=TheirEmailAddress

Start draft with recipient, cc

airmail://compose?to=TheirEmailAddress&cc=TheirEmailAddress

Start draft with recipient, bcc

airmail://compose?to=TheirEmailAddress&bcc=TheirEmailAddress

Start draft with recipient, subject

airmail://compose?to=TheirEmailAddress&subject=YourSubjectText

Start draft with recipient, body

airmail://compose?to=TheirEmailAddress&plainBody=YourBodyText

Start draft with recipient, HTML body

airmail://compose?to=TheirEmailAddress&htmlBody=YourBodyHTML

Start draft with recipient, CC, BCC, subject, body

airmail://compose?to=TheirEmailAddress&cc=TheirEmailAddress&bcc=TheirEmailAddress&subject=YourSubjectText&plainBody=YourBodyText
```

## Airtable:

```javascript
airtable://
```

## Instagram:

```javascript
instagram://

Other

instagram-auth://

instagram-capture://

instagram-stories://

fsq+kylm3gjcbtswk4rambrt4uyzq1dqcoc0n2hyjgcvbcbe54rj+post://
```

## Alpha Omega

```javascript
fb1414385748867269suffix://
```

## Amazon

### Amazon Alexa

```javascript
alexa://
```

### Amazon Chime

```javascript
chime://
```

### Amazon Fire TV

```javascript
firetv://
```

## AMC Theatres

```javascript
amc://
```

## AmpliFi WiFi

```javascript
fb1761190244145574amplifi://
```

## Amwell: Doctor Visits

```javascript
amwell://
```

## Ancestry:

```javascript
ancestry://
```

## Anchor:

```javascript
anchorfm://

anchorfmspotify://
```

\------------以上2023/04/25更新------------

**注意⚠️**

\*\*如果微信小程序打开失效，请更换开发者ID(wx开头的字符)，\*\*比如北京健康码：

```javascript
// wxd930ea5d5a258f4f 是开发者ID

weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_e3b81975fe3c
```

如果上面的URL Scheme失效了，请更换开发者ID如下：

```javascript
weixin://app/wx5599d44c9774e754/jumpWxa/?userName=gh_e3b81975fe3c
```

当前收集到的开发者ID如下：

```json
微信开发者IDwx95a3a4d7c627e07d

wxc4c0253df149f02d

wx58164a91f1821369

wx095ef8ef7e64b291

wxca942bbff22e0e51

wxd9e0d500b5fb209f

wx5599d44c9774e754

wx76fc280041c16519

wx3d1a6db08c18a8a1

wx3bef52104e238bff
```

> 以下2021-08-24更新

## 粤康码

### 粤省事

```javascript
微信小程序weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_1ac06b5a8f4e&path=operation_plus/pages/yiqing/daka/user/index/index.html
```

### 深i您粤康码：

```javascript
微信小程序weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_9c23268d5db7&path=pages/mine/todo/code/code.html
```

## 穗康码

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_8052c0bb85ba&path=packages/health-code/pages/report-health/index.html
```

## 北京健康宝

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_e3b81975fe3c
```

## 上海随申码

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_d4acc9de8978&path=pages/suishenma/jiankangma/index.html?needLogin=false&scene=0
```

## 渝康码

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_8950e79a44c2&path=packages/health-code/pages/report-health/index.html
```

## 河北健康码

微信小程序：

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_21c954017d6d
```

支付宝小程序：

```javascript
alipays://platformapi/startapp?appId=2021002100611022
```

## 江西健康码（赣通码）

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_d1a16b30b750
```

## 微信乘车码

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_3cf62f4f1d52
```

---

> 以下2021-04-17更新

#招商银行

## 信用卡还款

```javascript
cmblife://cfp/BillRepayment?needLogin=1&bindCard=1000
```

> 以下2021-03-25更新

## 腾讯微视

```javascript
weishi://feed?feed_id=7fbcQq9p81LnOCs4P&logsour=2030150746&ext={"position":"video.cover","testid":"149316","xwopenid":"o04IBAHOobD9rWzbloBCoZ7YFxlc","qq":"","scenes_from":"wxxinwen","cur_pos":"0","pushid":"2021032303","lrg":"1","type":"personal","uflag":"1906002","page_status":1,"query_version":"2","page_id":"30004135","template":"pic","feedid":"7fbcQq9p81LnOCs4P","source":""}
```

`ext` 后面的参数传的时候需要 `url encode` 下。

---

> 以下2021-03-09更新

## 云闪付

```javascript
upwallet://rn/rnshcarcode
```

## 中国银行

```javascript
BOCMBCIphone://
```

## 支付宝

## 健康码

### 北京健康宝

支付宝小程序：

```javascript
alipayqr://platformapi/startapp?saId=2021001135679870
```

微信小程序：

```javascript
weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_e3b81975fe3c&path=pages/jxzq/cha-xun-jie-guo/index

// 本人健康码页面

weixin://app/wxd930ea5d5a258f4f/jumpWxa/?userName=gh_e3b81975fe3c&path=pages/jxzq/cha-xun-jie-guo/index.html?isOpenBDCheck=1&code=false
```

### 四川天府健康通

```javascript
alipayqr://platformapi/startapp?saId=2021002116662889
```

## 江苏政务服务

```javascript
alipays://platformapi/startapp?appId=2018062060350751
```

江苏政务服务里面就包含了 **苏康码** ，可以很便捷的打开苏康码。

## 上海大都会地铁

```javascript
metro://qrcode
```

## 四川天府通app

```javascript
tftApp.com://
```

## 双卡蜂窝网络切换

```javascript
prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_DATA_OPTIONS
```

---

> 以下2020-12-12更新

## 淘宝

## 领金币

```javascript
https://market.m.taobao.com/app/tmall-wireless/tjb-2018/index/index.html?utparam={"ranger_buckets_native":"tsp2189_21618"}&spm=a2141.1.iconsv5.8&scm=1007.home_icon.lingjb.d&disableNav=YES#/tjb
```

## 领红包

```javascript
taobao://market.m.taobao.com/app/tmall-def/daily-welfare/pages/index?wh_weex=true
```

## 饿了么小程序

## 小程序APPID

wxece3a9a4c82f58c9

## 小程序路径

taoke/pages/shopping-guide/index?scene=XLSZNtu

## 美团

## 美团外卖

`imeituan://www.meituan.com/web`

## 京东

## 领京豆

```javascript
openApp.jdMobile://virtual?params={"category":"jump","modulename":"JDReactCollectJDBeans","des":"jdreactcommon","param":{"page":"collectJDBeansHomePage"}}
```

## 拼多多

## 签到

```javascript
pinduoduo://com.xunmeng.pinduoduo/https://mobile.yangkeduo.com/pythagoras_ctc_ca.html
```

---

> 2020-10-16更新

## 聊天/社交类

## QQ

### 主页

```javascript
packageName: 'com.tencent.mobileqq',  

scheme: 'mqq://'
```

### 国际版qq mqqiapi://

### 加好友

```javascript
mqqapi://card/show_pslcard?src_type=internal&version=1&uin={QQ号}
```

### 打开QQ群

```javascript
mqqapi://card/show_pslcard?src_type=internal&version=1&card_type=group&uin={QQ群号}
```

## TIM

### 主页 tim://

### 扫一扫 tim://qrcode/scan\_qrcode?version=1&src\_type=app

## 微信

```javascript
packageName: 'com.tencent.mm',

scheme: 'weixin://'
```

## 天涯社区 tianya://

## 微信扫一扫 weixin://scanqrcode

## 企业微信 wxwork://

## 钉钉 dingtalk://

## 探探 tantanapp://

## 陌陌 momochat://

## 墨客 com.moke.moke://

## Line line://

## 飞信 fetion://

## 旺旺卖家版 wangwangseller://

## 新闻/知识类

## 今日头条 snssdk141://

## 知乎

### 主页 zhihu://

### 知乎扫一扫 zhihu://codereader

## 新浪微博

```javascript
packageName: 'com.sina.weibo',  

scheme: 'sinaweibo:// 或 weibo://\`
```

## 新浪微博国际版 weibointernational://

## weico微博 weico://

## 网易新闻 newsapp://

## 人人 renren:// 或者 renrenios://

## 凤凰新闻 comIfeng3GifengNews://

## 腾讯新闻 qqnews://

## 搜狐新闻 sohunews://

## 芝士超人 trivia://

## 外卖

## 美团 imeituan://

## 美团外卖 meituanwaimai://

## 点评 dianping://

## 地图

## 高德地图

### 主页 iosamap://

### 驾驶导航 iosamap://navi?sourceApplication=applicationName&backScheme=applicationScheme&poiname=fangheng&poiid=BGVIS&lat=36.547901&lon=104.258354&dev=1&style=2

## 邮件

## Gmail googlegmail://

## 网易邮箱 neteasemail://

## QQ邮箱 qqmail://

## 腾讯企业邮箱 qqbizmailDistribute2://

## 生活/工具类

## 摩拜单车 mobike://

## 支付宝

### 首页

```javascript
packageName: 'com.eg.android.AlipayGphone',

scheme: 'alipay://'
```

### 扫一扫 alipayqr://platformapi/startapp?saId=10000007

### 乘车码 alipayqr://platformapi/startapp?saId=200011235

### 收款 alipays://platformapi/startapp?appId=20000123

### 付款码 alipayqr://platformapi/startapp?saId=20000056

### 收款码 alipayqr://platformapi/startapp?saId=20000123

### 转账 alipayqr://platformapi/startapp?saId=20000116

### 提现 alipayqr://platformapi/startapp?saId=20000033

### 花呗 alipays://platformapi/startapp?appId=20000199

### 借呗 alipays://platformapi/startapp?appId=20000180

### 还信用卡 alipays://platformapi/startapp?appId=09999999

### 蚂蚁森林 alipay://platformapi/startapp?appId=60000002

### 蚂蚁庄园 alipays://platformapi/startapp?appId=66666674

### 运动 alipayqr://platformapi/startapp?saId=20000869

### 卡劵 alipayqr://platformapi/startapp?saId=88888888

### 彩票 alipays://platformapi/startapp?appId=10000011

### 股票 alipays://platformapi/startapp?appId=20000134

### 生活缴费 alipays://platformapi/startapp?appId=20000193

### 手机充值 alipayqr://platformapi/startapp?saId=10000003

### 生活圈 alipays://platformapi/startapp?appId=20000943

### 记账本 alipay://platformapi/startapp?appId=20000168

### 滴滴 alipay://platformapi/startapp?appId=20000778

### 快递查询 alipays://platformapi/startapp?appId=20000754

### 还信用卡 alipays://platformapi/startapp?appId=09999999

### 会员积分 alipays://platformapi/startapp?appId=20000160

## 滴滴出行 diditaxi://

## 米家 mihome://

## 58同城 wbmain://

## 格志 griddiary://

## 搜狗输入法 com.sogou.sogouinput://

## 百度输入法 BaiduIMShop://

## 有道云笔记 youdaonote://

## 印象笔记 evernote://

## 随手记 FDMoney://

## 1Password onepassword://

## Gmail googlegmail://

## 百度

### 手机百度 bdboxiosqrcode://

### 百度文库hd bdwenku://

### 百度云盘 baiduyun://

### 百度贴吧 com.baidu.tieba://

### 百度音乐 baidumusic://

### 百度视频 baiduvideoiphone:// 或 bdviphapp://

### 百度糯米 bainuo://

### 百度魔图 photowonder://

### 百度魔拍 wondercamera://

### 百度地图 baidumap://

### 百度导航 bdNavi://

### 百度阅读 bdbook://

## 360搜索 msearchapp://

## 搜狗搜索 sogousearch://

## Keep运动 keep://

## 小米运动 fb370547106731052://

## NOMO相机 nomocamera://

## 中国移动掌上营业厅 wxbcb43ea5d2d6384c://

## 12306 cn.12306://

## 12306订票助手 trainassist://

## 高铁管家 gtgj://

## 腾讯手机管家 mqqsecure://

## JSBox

### 打开JSBox

```javascript
scheme: 'jsbox://'
```

### 执行JSBox脚本

```javascript
scheme: 'jsbox://run?name={编码后的脚本名}'
```

## 拍照取字 paizhaoquzi://first

## iCab Mobile x-icabmobile://

## 圈子账本 qzzb://

## 挖财记账 wacai://

## 彩云小译 mlink://

## 名片全能王 camcard://

## 微盘 sinavdisk://

## 我查查 wcc://

## Clear(著名的Todo应用) clearapp://

## Calendars 5 calendars://

## GoodReader 4 com.goodreader.sendtogr://

## PDF Expert 5 pdfexpert5presence://

## Documents 5 rdocs://

## 365日历 rili365://

## 天气通Pro sinaweatherpro://

## 天气通 sinaweather://

## 墨迹天气 rm434209233MojiWeather://

## 腾讯微云 weiyun://

## 腾讯地图 sosomap://

## 淘宝旅行 taobaotravel://

## 股票/金融类

## 同花顺 amihexin://

## 大智慧 dzhiphone://

## ~~京东金融~~

### ~~签到/双签 jdmobile://share?jumpType=7&jumpUrl=1373~~

## 浏览器类

## Alook浏览器 Alook://

## 无相浏览器 wuxiang://

## 夸克浏览器 quark://

## UC浏览器 ucbrowser://

## QQ浏览器 mttbrowser://

## Chrome浏览器 googlechrome://

## 购物类

## 淘宝

```javascript
packageName: 'com.taobao.taobao',  

scheme: 'taobao://'
```

## 淘宝搜索 taobao://s.taobao.com?q=\[输入\]

## 天猫 tmall://

## 京东

### 主页

```javascript
packageName: 'com.jingdong.app.mall',  

scheme: 'openApp.jdMobile://'
```

### 签到 openApp.jdMobile://virtual?params={"category":"jump","modulename":"JDReactCollectJDBeans","des":"jdreactcommon","param":{"page":"collectJDBeansHomePage";}}

## 苏宁 suning://

## 拼多多 pinduoduo://

## 1号店 yihaodian://

## 菜鸟裹裹 cainiao://

## Price Tag

### 打开 pricetag://

### 发现 pricetag://explore

### 降价 pricetag://pricedrop

## 影视类

## B站

### 主页 bilibili://

### 搜索 bilibili://search?keyword={关键词}

```javascript
packageName: 'com.youku.phone',  

scheme: 'youku://'
```

## PPTV pptv://

## 爱奇艺视频 qiyi-iphone://

## 爱奇艺PPS ppstream://

## 暴风影音 com.baofeng.play://

## 土豆视频 tudou://

## 搜狐视频 sohuvideo-iphone:// 或 sohuvideo://

## 抖音 awemesso://

## 腾讯视频 tenvideo:// 或 tenvideo2:// 或 tenvideo3://

## 56视频 com.56Video://

## YY直播 yymobile://

## 一直播 xk://

## 花椒直播 huajiao://

## nPlayer nplayer-http://

## GPlayer gplayer://

## AVPlayer HD AVPlayerHD://

## AVPlayer AVPlayer://

## Ace Player aceplayer://

## 音乐类

## 虾米音乐

### 搜索 xiami://search

### 私人电台 xiami://radio/private

### 每日30首 xiami://playdailysong

### 虾米猜 xiami://radio/guess

### 本地音乐 xiami://playLocalMusic

### 听歌识曲

```javascript
scheme: 'xiami://soundhound'

或者： 'xiami://musicRecognize'
```

## 酷我音乐 com.kuwo.kwmusic.kwmusicForKwsing://

## 豆瓣 FM doubanradio://

## 蜻蜓FM qtfmp://

## 酷狗音乐 kugouURL://

## 百度音乐 baidumusic://

## 天天动听 ttpod://

## 网易云音乐

### 打开应用 orpheuswidget://

### 私人FM orpheuswidget://radio

### 本地音乐 orpheuswidget://download

### 听歌识曲 orpheuswidget://recognize

### 歌单 orpheuswidget://playlist/id

### 用户页 orpheuswidget://user/userid

### 播放音乐 orpheuswidget://song/songid

### 热搜榜 orpheus://playlist/3778678

### 飙升榜 orpheus://playlist/19723756

### 新歌榜 orpheus://playlist/3779629

## QQ音乐

### 喜欢 qqmusic://qq.com/ui/myTab?p=%7B%22tab%22%3A%22fav%22%7D

### 本地音乐 qqmusic://today?mid=31&k1=3&k4=0

### 最近播放 qqmusic://today?mid=31&k1=2&k4=0

### 个性电台 qqmusic://qq.com/media/playRadio?p=%7B%22radioId%22%3A%2299%22%7D

### 听歌识曲 qqmusic://qq.com/ui/recognize

### 继续播放 qqmusic://qq.com/media/resumeSong?p=%7B%7D

## 学习类

## 掌阅iReader iReader://

## 沪江小D词典 hjdict://

## 有道词典 yddict://

## 网易公开课 ntesopen://

## 金山词霸 com.kingsoft.powerword.6://

## 布卡漫画 buka://

## 拿铁阅读 LatteRead://

## 银行类

## 浦发银行 wx1cb534bb13ba3dbd://

## 招商银行 cmbmobilebank://

## 建设银行 wx2654d9155d70a468://

## 工商银行 com.icbc.iphoneclient://

## 办公

## WPS KingsoftOfficeApp://

## 系统类

## 备忘录 mobilenotes://

## workflow workflow://

## 捷径 shortcuts://

## 系统设置 app-prefs://

> 我的iPhone 8 打不开这个，不知什么原因，系统是ios 13

## App Store itms-apps://

## iOS创建短信 sms://{手机号}

## 电话 tel://

> 给指定手机号发短信

## 游戏类

## QQ斗地主 tencent382://

## 永远的七日之都 neteaseqrzd://

## 崩坏三 bh3rd://

## 叨鱼APP sdguc://

## 节奏大师 tencentrm://

## 天天星连萌 tencent100689806://

## 天天爱消除 tencent100689805://

## 天天酷跑 tencent100692648://

## 天天飞车 tencent100695850://

## 应用商店类

## 小米应用商店

```javascript
scheme: "mimarket://details?id=com.xx.xx"
```

## 三星应用商店

```javascript
scheme: "samsungapps://ProductDetail/com.xx.xx"
```

## 华为应用商店

```javascript
scheme: "appmarket://details?id=com.xx.xx"
```

## OPPO应用商店

```javascript
oppomarket:"//details?packagename=com.xx.xx"
```

## vivo应用商店

```javascript
scheme: "vivomarket://details?id=com.xx.xx"
```

由于支付宝的 `URL Scheme` 很全面，这里再单独列一下，可能会和上面有重复：

```javascript
支付宝：

alipay://

收款:

alipays://platformapi/startapp?appId=20000123

扫码：

alipays://platformapi/startapp?saId=10000007

余额宝:

alipays://platformapi/startapp?appId=20000032

转账:

alipays://platformapi/startapp?appId=20000221

租房：

alipays://platformapi/startapp?appId=60000125

城市服务：

alipays://platformapi/startapp?appId=20000178

手机充值：

alipays://platformapi/startapp?appId=10000003

快递查询：

alipays://platformapi/startapp?appId=20000754

我的快递-寄件平台：

alipays://platformapi/startapp?appId=60000146

我的二维码:

alipays://platformapi/startapp?appId=20000085

蚂蚁庄园:

alipays://platformapi/startapp?appId=66666674

蚂蚁森林：

alipays://platformapi/startapp?appId=60000002

我的公益：

alipays://platformapi/startapp?appId=66666867

运动：

alipays://platformapi/startapp?appId=20000869

蚂蚁借呗：

alipays://platformapi/startapp?appId=20000180

个人主页：

alipays://platformapi/startapp?appId=20000186

个人名片:

alipays://platformapi/startapp?appId=20000228

信用卡还款：

alipays://platformapi/startapp?appId=09999999

爱心捐赠：

alipays://platformapi/startapp?appId=10000009

彩票：

alipays://platformapi/startapp?appId=10000011

转账：

alipays://platformapi/startapp?appId=09999988

花呗：

alipays://platformapi/startapp?appId=20000199

生活缴费：

alipays://platformapi/startapp?appId=20000193

芝麻信用:

alipays://platformapi/startapp?appId=20000118

位置:

alipays://platformapi/startapp?appId=20000226

卡券:

alipays://platformapi/startapp?appId=20000227

饿了么外卖:

alipays://platformapi/startapp?appId=20000120

淘票票电影:

alipays://platformapi/startapp?appId=20000131

火车票:

alipays://platformapi/startapp?appId=20000143

汇率换算:

alipays://platformapi/startapp?appId=20000150

理财小工具：

alipays://platformapi/startapp?appId=20000161

羊城通充值：

alipays://platformapi/startapp?appId=20000162

收货地址:

alipays://platformapi/startapp?appId=20000714

隐私：

alipays://platformapi/startapp?appId=20000723

通用：

alipays://platformapi/startapp?appId=20000724

充值中心：

alipays://platformapi/startapp?appId=20000987

校园一卡通：

alipays://platformapi/startapp?appId=2013062600000474

淘宝：

alipays://platformapi/startapp?appId=2013082800000932

教育缴费：

alipays://platformapi/startapp?appId=2014021200003129

ofo小黄车：

alipays://platformapi/startapp?appId=2017041206668232

高德打车：

alipays://platformapi/startapp?appId=2018070960585195

蚂蚁宝卡：

alipays://platformapi/startapp?appId=60000057

地铁购票：

alipays://platformapi/startapp?appId=60000070

AA收款：

alipays://platformapi/startapp?appId=60000154

AA收款:

alipays://platformapi/startapp?appId=66666696

AA收款：

alipays://platformapi/startapp?appId=9000258

共享单车：

alipays://platformapi/startapp?appId=60000155

余利宝:

alipays://platformapi/startapp?appId=66666708

收钱码服务:

alipays://platformapi/startapp?appId=66666714

大麦演出票：

alipays://platformapi/startapp?appId=66666753

口碑签到：

alipays://platformapi/startapp?appId=66666776

信用生活：

alipays://platformapi/startapp?appId=66666786

支付宝月账单：

alipays://platformapi/startapp?appId=66666798

天猫购物：

alipays://platformapi/startapp?appId=66666820

绿色城市：

alipays://platformapi/startapp?appId=66666824

还贷管家：

alipays://platformapi/startapp?appId=66666819

股票:

alipays://platformapi/startapp?appId=20000134

淘票票：

alipays://platformapi/startapp?appId=68687093

淘票票H5票券：

alipays://platformapi/startapp?appId=68687095

淘票票H5购票：

alipays://platformapi/startapp?appId=68687096

收款：

alipays://platformapi/startapp?appId=20000674

余额宝：

alipays://platformapi/startapp?appId=60000126

余额宝:

alipays://platformapi/startapp?appId=77700124

话费卡转让：

alipays://platformapi/startapp?appId=10000033

关于：

alipays://platformapi/startapp?appId=10000110

天猫：

alipays://platformapi/startapp?appId=20000000

账单：

alipays://platformapi/startapp?appId=20000003

银行卡:

alipays://platformapi/startapp?appId=20000014

账户详情:

alipays://platformapi/startapp?appId=20000019

支付设置:

alipays://platformapi/startapp?appId=20000024

实名认证:

alipays://platformapi/startapp?appId=20000038

反馈:

alipays://platformapi/startapp?appId=20000049

上银汇款:

alipays://platformapi/startapp?appId=20000078

生活号:

alipays://platformapi/startapp?appId=20000101

出境:

alipays://platformapi/startapp?appId=20000107

安全设置:

alipays://platformapi/startapp?appId=20000113

亲情号:

alipays://platformapi/startapp?appId=20000132

火车票机票:

alipays://platformapi/startapp?appId=20000135

飞猪酒店:

alipays://platformapi/startapp?appId=20000139

娱乐宝:

alipays://platformapi/startapp?appId=20000142

海外交通卡:

alipays://platformapi/startapp?appId=20000152

游戏中心：

alipays://platformapi/startapp?appId=20000153

国际机票：

alipays://platformapi/startapp?appId=20000157

蚂蚁会员：

alipays://platformapi/startapp?appId=20000160

定期：

alipays://platformapi/startapp?appId=20000165

记账本：

alipays://platformapi/startapp?appId=20000168

手势：

alipays://platformapi/startapp?appId=20000184

H5公共资源：

alipays://platformapi/startapp?appId=20000196

H5运营活动资源包：

alipays://platformapi/startapp?appId=20000202

亲情圈:

alipays://platformapi/startapp?appId=20000205

黄金:

alipays://platformapi/startapp?appId=20000218

蚂蚁乐驾:

alipays://platformapi/startapp?appId=20000241

总资产:

alipays://platformapi/startapp?appId=20000243

收藏:

alipays://platformapi/startapp?appId=20000245

活动收款:

alipays://platformapi/startapp?appId=20000259

信用卡账单:

alipays://platformapi/startapp?appId=20000266

数字证书:

alipays://platformapi/startapp?appId=20000298

暗号:

alipays://platformapi/startapp?appId=20000307

支付宝账号:

alipays://platformapi/startapp?appId=20000308

1688好货源:

alipays://platformapi/startapp?appId=20000522

活动群:

alipays://platformapi/startapp?appId=20000672

我的客服:

alipays://platformapi/startapp?appId=20000691

淘宝会员名

alipays://platformapi/startapp?appId=20000710

蚂蚁微客：

alipays://platformapi/startapp?appId=20000735

在线理赔：

alipays://platformapi/startapp?appId=20000750

悄悄话：

alipays://platformapi/startapp?appId=20000752

滴滴出行：

alipays://platformapi/startapp?appId=20000778

小视频：

alipays://platformapi/startapp?appId=20000780

圈存机：

alipays://platformapi/startapp?appId=20000791

基金：

alipays://platformapi/startapp?appId=20000793

地铁票购票：

alipays://platformapi/startapp?appId=20000796

新的朋友：

alipays://platformapi/startapp?appId=20000820

云客服：

alipays://platformapi/startapp?appId=20000827

淘票票H5票券：

alipays://platformapi/startapp?appId=20000834

人脸识别：

alipays://platformapi/startapp?appId=20000841

大学生活：

alipays://platformapi/startapp?appId=20000859

国内机票逆向：

alipays://platformapi/startapp?appId=20000877

境外上网：

alipays://platformapi/startapp?appId=20000895

网商贷：

alipays://platformapi/startapp?appId=20000899

充值助手：

alipays://platformapi/startapp?appId=20000905

生活号：

alipays://platformapi/startapp?appId=20000909

网商银行：

alipays://platformapi/startapp?appId=20000913

社交H5：

alipays://platformapi/startapp?appId=20000917

车主服务：

alipays://platformapi/startapp?appId=20000919

发票管家：

alipays://platformapi/startapp?appId=20000920

汽车票：

alipays://platformapi/startapp?appId=20000922

口碑卡券：

alipays://platformapi/startapp?appId=20000923

蚂蚁保险：

alipays://platformapi/startapp?appId=20000936

支付结果页口碑推荐：

alipays://platformapi/startapp?appId=20000939

生活圈：

alipays://platformapi/startapp?appId=20000943

群聊：

alipays://platformapi/startapp?appId=20000951

有财教练：

alipays://platformapi/startapp?appId=20000971

口碑我的订单：

alipays://platformapi/startapp?appId=20000975

心愿储蓄-余额宝：

alipays://platformapi/startapp?appId=20000981

体育服务：

alipays://platformapi/startapp?appId=20000988

H5在线买单：

alipays://platformapi/startapp?appId=20000989

商家动态：

alipays://platformapi/startapp?appId=20000991

安全课堂：

alipays://platformapi/startapp?appId=20001010

照片：

alipays://platformapi/startapp?appId=20001021

拍摄：

alipays://platformapi/startapp?appId=20001022

财富交易组件：

alipays://platformapi/startapp?appId=20001045

大学充值缴费：

alipays://platformapi/startapp?appId=20001091

安全备忘：

alipays://platformapi/startapp?appId=20001116

一字千金：

alipays://platformapi/startapp?appId=20001121

送福卡：

alipays://platformapi/startapp?appId=20002018

小程序收藏：

alipays://platformapi/startapp?appId=2018072560844004

专属优惠频道：

alipays://platformapi/startapp?appId=60000006

国内机票React正向：

alipays://platformapi/startapp?appId=60000007

手艺人：

alipays://platformapi/startapp?appId=60000008

社交金融H5：

alipays://platformapi/startapp?appId=60000010

安全设备：

alipays://platformapi/startapp?appId=60000011

中小学：

alipays://platformapi/startapp?appId=60000012

口碑在线购买H5：

alipays://platformapi/startapp?appId=60000014

账单关联业务-h5：

alipays://platformapi/startapp?appId=60000016

基金组合：

alipays://platformapi/startapp?appId=60000018

蚂蚁保险：

alipays://platformapi/startapp?appId=60000023

商圈：

alipays://platformapi/startapp?appId=60000026

月度榜单：

alipays://platformapi/startapp?appId=60000029

电子证件：

alipays://platformapi/startapp?appId=60000032

in定制印品：

alipays://platformapi/startapp?appId=60000033

大牌抢购：

alipays://platformapi/startapp?appId=60000039

未来酒店：

alipays://platformapi/startapp?appId=60000040

支付成功页权益区：

alipays://platformapi/startapp?appId=60000044

社交聚合H5：

alipays://platformapi/startapp?appId=60000050

天天有料：

alipays://platformapi/startapp?appId=60000071

VIP预约服务：

alipays://platformapi/startapp?appId=60000076

优酷：

alipays://platformapi/startapp?appId=60000077

商家服务：

alipays://platformapi/startapp?appId=60000081

Mini 花呗：

alipays://platformapi/startapp?appId=60000091

电子公交卡：

alipays://platformapi/startapp?appId=60000098

奖励金：

alipays://platformapi/startapp?appId=60000103

银行卡：

alipays://platformapi/startapp?appId=60000105

定期+：

alipays://platformapi/startapp?appId=60000119

福员外：

alipays://platformapi/startapp?appId=60000120

投票：

alipays://platformapi/startapp?appId=60000121

淘票票H5购票：

alipays://platformapi/startapp?appId=60000130

质押资产：

alipays://platformapi/startapp?appId=60000132

外币兑换：

alipays://platformapi/startapp?appId=60000134

飞猪汽车票新版：

alipays://platformapi/startapp?appId=60000135

飞猪国内机票：

alipays://platformapi/startapp?appId=60000138

医疗健康：

alipays://platformapi/startapp?appId=60000141

财富运营承接中间页：

alipays://platformapi/startapp?appId=60000142

冻结金额：

alipays://platformapi/startapp?appId=60000145

h5券详情页面：

alipays://platformapi/startapp?appId=60000147

财富号：

alipays://platformapi/startapp?appId=60000148

我的口碑：

alipays://platformapi/startapp?appId=60000150

快消优惠：

alipays://platformapi/startapp?appId=60000151

支付签约中心:

alipays://platformapi/startapp?appId=60000157

借呗任务平台:

alipays://platformapi/startapp?appId=60000158

周周乐:

alipays://platformapi/startapp?appId=60000161

表情搜索:

alipays://platformapi/startapp?appId=60000163

小程序:

alipays://platformapi/startapp?appId=66666666

会员卡:

alipays://platformapi/startapp?appId=66666667

口碑资源加速二:

alipays://platformapi/startapp?appId=66666669

国际资源加速一:

alipays://platformapi/startapp?appId=66666670

新消息通知:

alipays://platformapi/startapp?appId=66666672

风险评测:

alipays://platformapi/startapp?appId=66666673

口碑生活圈问答:

alipays://platformapi/startapp?appId=66666675

账单详情:

alipays://platformapi/startapp?appId=66666676

亚博游戏:

alipays://platformapi/startapp?appId=66666677

AR:

alipays://platformapi/startapp?appId=66666678

新人气榜单:

alipays://platformapi/startapp?appId=66666679

福卡回忆:

alipays://platformapi/startapp?appId=66666682

集分宝:

alipays://platformapi/startapp?appId=66666683

信用借还:

alipays://platformapi/startapp?appId=66666684

网银大额充值:

alipays://platformapi/startapp?appId=66666685

泛行业频道:

alipays://platformapi/startapp?appId=66666686

jet离线加速一:

alipays://platformapi/startapp?appId=66666687

我的发票抬头:

alipays://platformapi/startapp?appId=66666688

附近人气榜:

alipays://platformapi/startapp?appId=66666689

店铺弹窗领券:

alipays://platformapi/startapp?appId=66666691

小程序资源包:

alipays://platformapi/startapp?appId=66666692

标签系统:

alipays://platformapi/startapp?appId=66666698

境外当面付店铺码:

alipays://platformapi/startapp?appId=66666699

实物黄金:

alipays://platformapi/startapp?appId=66666700

appraise:

alipays://platformapi/startapp?appId=66666702

打开支付宝:

alipays://platformapi/startapp?appId=66666706

mallcoupon:

alipays://platformapi/startapp?appId=66666707

商圈聚合页:

alipays://platformapi/startapp?appId=66666710

天猫资源加速:

alipays://platformapi/startapp?appId=66666711

芝麻信用:

alipays://platformapi/startapp?appId=66666713

信用卡还款H5:

alipays://platformapi/startapp?appId=66666715

小程序关于页面:

alipays://platformapi/startapp?appId=66666718

功能管理:

alipays://platformapi/startapp?appId=66666719

钱包股票-社区资讯:

alipays://platformapi/startapp?appId=66666721

钱包股票-行情和提醒:

alipays://platformapi/startapp?appId=66666722

统一授权管理:

alipays://platformapi/startapp?appId=66666724

区块链:

alipays://platformapi/startapp?appId=66666728

口碑红人:

alipays://platformapi/startapp?appId=66666729

花呗挖哦:

alipays://platformapi/startapp?appId=66666733

基金组合：

alipays://platformapi/startapp?appId=66666735

财富社区：

alipays://platformapi/startapp?appId=66666741

口碑平台弹层：

alipays://platformapi/startapp?appId=66666742

定时转账提醒：

alipays://platformapi/startapp?appId=66666743

店铺详情页报错：

alipays://platformapi/startapp?appId=66666749

保险号：

alipays://platformapi/startapp?appId=66666750

商圈券包：

alipays://platformapi/startapp?appId=66666754

我的健康：

alipays://platformapi/startapp?appId=66666755

国际支付成功页：

alipays://platformapi/startapp?appId=66666757

流量钱包

alipays://platformapi/startapp?appId=66666759

消费捐：

alipays://platformapi/startapp?appId=66666761

车金融：

alipays://platformapi/startapp?appId=66666762

阿里智能：

alipays://platformapi/startapp?appId=66666773

商家说：

alipays://platformapi/startapp?appId=66666774

境外收款：

alipays://platformapi/startapp?appId=66666777

懒人一键理财：

alipays://platformapi/startapp?appId=66666779

支付宝刷脸付：

alipays://platformapi/startapp?appId=66666781

蚂蚁庄园星星球：

alipays://platformapi/startapp?appId=66666782

爱攒油加油站：

alipays://platformapi/startapp?appId=66666783

亲情圈：

alipays://platformapi/startapp?appId=66666784

飞猪酒店：

alipays://platformapi/startapp?appId=66666787

火车票正向主流程：

alipays://platformapi/startapp?appId=66666788

商家经营分析：

alipays://platformapi/startapp?appId=66666791

人传人转账拉新

alipays://platformapi/startapp?appId=66666796

飞猪国际机票WEEX：

alipays://platformapi/startapp?appId=66666807

芝麻认证小程序：

alipays://platformapi/startapp?appId=66666808

财富通用工具：

alipays://platformapi/startapp?appId=66666810

小钱袋：

alipays://platformapi/startapp?appId=66666816

Tinyjs资源：

alipays://platformapi/startapp?appId=66666817

财富标签页：

alipays://platformapi/startapp?appId=66666825

泛行业会场：

alipays://platformapi/startapp?appId=66666827

小富婆：

alipays://platformapi/startapp?appId=66666829

一字千金：

alipays://platformapi/startapp?appId=66666831

招牌来了：

alipays://platformapi/startapp?appId=66666860

直播频道：

alipays://platformapi/startapp?appId=66666861

口碑快消频道页：

alipays://platformapi/startapp?appId=66666865

智能设备：

alipays://platformapi/startapp?appId=66666877

淘票票H5资讯：

alipays://platformapi/startapp?appId=66666881

口碑资源加速包一：

alipays://platformapi/startapp?appId=66666884

国际机票交易：

alipays://platformapi/startapp?appId=66666888

工资理财：

alipays://platformapi/startapp?appId=66666897

银行卡：

alipays://platformapi/startapp?appId=68686988

2018五福首页：

alipays://platformapi/startapp?appId=68687002

2018新春集五福：

alipays://platformapi/startapp?appId=68687028

信用租承接：

alipays://platformapi/startapp?appId=68687032

appxNativeIOS框架包：

alipays://platformapi/startapp?appId=68687035

蚂蚁星愿：

alipays://platformapi/startapp?appId=68687049

Apple 专区：

alipays://platformapi/startapp?appId=68687052

养老金：

alipays://platformapi/startapp?appId=68687131

人脸、指纹、声纹：

alipays://platformapi/startapp?appId=68687140

安全设置：

alipays://platformapi/startapp?appId=68687141

支付宝授权：

alipays://platformapi/startapp?appId=68687142

股票发现-支付宝：

alipays://platformapi/startapp?appId=68687145

小程序收藏：

alipays://platformapi/startapp?appId=68687164

信用受理台：

alipays://platformapi/startapp?appId=68687167

星巴克用星说：

alipays://platformapi/startapp?appId=77700096

小程序分享二维码：

alipays://platformapi/startapp?appId=77700109
```