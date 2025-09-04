---
title: "URL Scheme APP界面跳转链录"
source: "https://gvmjj1ayk5.feishu.cn/docs/doccncr4KzZaad97y7NpRb78PAr"
author:
published:
created: 2025-09-02
description: "飞书文档 - 多人实时在线编辑，促进团队深度协作与互动"
tags:
  - "clippings"
---
URL Scheme APP界面跳转链录

！！！以下链接经本人测试全部可用！！！

![](https://internal-api-drive-stream.feishu.cn/space/api/box/stream/download/preview/boxcnr0TfDl295leRTYmrxZHOCc/?preview_type=16)

QQ

指定QQ号聊天页跳转：

mqqwpa://im/chat?chat\_type=wpa&uin=qq号

群聊天页：

mqqwpa://im/chat?chat\_type=group&uin=群号

指定群资料页:

mqqapi://card/show\_pslcard?src\_type=internal&version=1&uin=群号&card\_type=group

指定QQ号资料页：

mqqapi://card/show\_pslcard?src\_type=internal&version=1&uin=QQ号

空间跳转：

mqqapi://qzone/activefeed

![](https://internal-api-drive-stream.feishu.cn/space/api/box/stream/download/preview/boxcn3RLB49RHQcQBwKQs3uiczd/?preview_type=16)

微信

付款：

android-app://com.tencent.mm/#Intent;action=com.tencent.mm.action.BIZSHORTCUT;launchFlags=0x4000000;S.LauncherUI.Shortcut.LaunchType=launch\_type\_offline\_wallet;end

扫一扫:

#Intent;action=com.tencent.mm.action.BIZSHORTCUT;launchFlags=0x4000000;B.LauncherUI.From.Scaner.Shortcut=true;end

联系人/群聊/公众号跳转：

android-app://com.tencent.mm/#Intent;action=com.tencent.mm.action.BIZSHORTCUT;B.LauncherUI.From.Biz.Shortcut=true;S.LauncherUI.Shortcut.Username=ID;end

小程序及小程序指定页面打开方式（请前往酷安APP下载并查看使用方法）

https://www.coolapk.com/apk/com.syyf.quickpay

![](https://gvmjj1ayk5.feishu.cn/3a266992-6a9d-4d44-a34f-fc0a966df64f)

支付宝

出行（公交、地铁、打车…）：

alipayqr://platformapi/startapp?saId=200011235

手机充值：

alipays://platformapi/startapp?saId=10000003

扫一扫：

alipays://platformapi/startapp?saId=10000007

账单：

alipays://platformapi/startapp?appId=20000003

登录界面：

alipays://platformapi/startapp?appId=20000008

银行卡：

alipays://platformapi/startapp?appId=20000014

余额：

alipays://platformapi/startapp?appId=20000019

余额宝：

alipays://platformapi/startapp?appId=20000032

付款：

alipays://platformapi/startapp?appId=20000056

转账：

alipays://platformapi/startapp?saId=20000116

饿了么：

alipays://platformapi/startapp?appId=20000120

收款码：

alipays://platformapi/startapp?appId=20000123

自选股：

alipays://platformapi/startapp?appId=20000134

会员：

alipays://platformapi/startapp?appId=20000160

理财：

alipays://platformapi/startapp?appId=20000165

通讯录：

alipays://platformapi/startapp?appId=20000166

记账：

alipays://platformapi/startapp?appId=20000168

生活缴费：

alipays://platformapi/startapp?appId=20000193

花呗：

alipays://platformapi/startapp?appId=20000199

黄金：

alipays://platformapi/startapp?appId=20000218

总资产：

alipays://platformapi/startapp?appId=20000243

我的快递：

alipays://platformapi/startapp?appId=20000754

滴滴：

alipays://platformapi/startapp?appId=20000778

基金：

alipays://platformapi/startapp?appId=20000793

语音助手：

alipays://platformapi/startapp?appId=20000835

充值中心：

alipays://platformapi/startapp?appId=20000987

搜索：

alipays://platformapi/startapp?appId=20001003

蚂蚁森林：

alipays://platformapi/startapp?appId=60000002

蚂蚁庄园：

alipays://platformapi/startapp?appId=66666674

商家服务：

alipays://platformapi/startapp?appId=60000081

共享单车：

alipays://platformapi/startapp?appId=60000155

养老：

alipays://platformapi/startapp?appId=68687131

红包：

alipays://platformapi/startapp?appId=88886666

彩票：

alipays://platformapi/startapp?appId=10000011

信用卡还款：

alipays://platformapi/startapp?appId=09999999

![](https://gvmjj1ayk5.feishu.cn/0a109d03-9393-436c-9cb0-702fedd310ae)

知乎

搜索：

zhihu://search?q=

问题回答页跳转：

zhihu://answers/1837097052（answers/后面一串就是ID）

指定用户主页：

zhihu://people/fang-zhang-5-79（people/后面的就是ID）

![](https://gvmjj1ayk5.feishu.cn/bc695e32-27e0-4aa4-b590-1443acf37766)

哔哩哔哩

我的收藏：

bilibili://main/favorite

离线缓存：

包名tv.danmaku.bili

类名tv.danmaku.bili.ui.videodownload.VideoDownloadListActivity

指定内容搜索

bilibili://search?keyword=（=号后面无内容则不在搜索框填字）

指定视频：

bilibili://video/BV1Uy4y1r7ja（复制分享链接浏览器打开→搜索框里video/后面的一串就是ID）

指定文章：

bilibili://article/13236748（mobile/后的一串数字就是文章ID）

指定用户主页跳转：

bilibili://space/8863801（space/后面的就是哔哩哔哩ID）

![](https://gvmjj1ayk5.feishu.cn/7e436a9f-4529-4e83-8afe-d680e200f3aa)

网易云

每日推荐：

orpheus://songrcmd

打开指定歌单

orpheus://playlist/66641056

指定歌曲

orpheus://song/573027032

私人FM

orpheus://radio

![](https://gvmjj1ayk5.feishu.cn/87ad13f3-9792-468f-9f2c-44ef6d9dc21b)

QQ音乐

每日推荐：

qqmusic://qq.com/ui/gedan?p={"id":"4487164108"}

我喜欢的音乐/收藏：

qqmusic://qq.com/ui/myTab?p=%7B%22tab%22%3A%22fav%22%7D

下一首：

qqmusic://qq.com/media/nextSong?p=%7B%7D

上一首：

qqmusic://qq.com/media/prevSong?p=%7B%7D

恢复播放：

qqmusic://qq.com/media/resumeSong?p=%7B%7D

个性电台：

qqmusic://qq.com/media/playRadio?p=%7B%22radioId%22%3A%2299%22%7D

播放本地音乐：

qqmusic://today?mid=31&k1=3&k4=0

播放热歌：

qqmusic://qq.com/media/playRadio?p=%7B%22radioId%22%3A%22199%22%2C%22action%22%3A%22play%22%2C%22cache%22%3A%221%22%7D

签到：

qqmusic://qq.com/ui/openUrl?p=%7B%22url%22%3A%22https%3A%2F%2Fi.y.qq.com%2Fn2%2Fm%2Fclient%2Factcenter%2Findex.html%22%7D&source=https%3A%2F%2Fi.y.qq.com%2Fn2%2Fm%2Fclient%2Factcenter%2Findex.html

![](https://gvmjj1ayk5.feishu.cn/6955773f-cfb0-4c84-983d-1e051b25ee14)

酷安

搜索：

包名com.coolapk.market

类名com.coolapk.market.view.search.SuperSearchActivity

动态跳转：

coolmarket://www.coolapk.com/feed/31231905

竖版话题热门Tab：coolmarket://com.coolapk.market/page?url=V11\_VERTICL\_TOPIIC\_HOT\_TAB

编辑精选：

coolmarket://com.coolapk.market/page?url=V8\_ZHUANTI\_20180327

每日热闻：

coolmarket://com.coolapk.market/page?url=V8\_JINRI\_NEWS

应用管理：

coolmarket://com.coolapk.market/app\_manager

酷图：

coolmarket://com.coolapk.market/page?url=V9\_HOME\_TAB\_COOLPIC

二手：coolmarket://com.coolapk.market/page?url=V11\_DISCOVERY\_SECOND\_HAND

今日酷安banner：

coolmarket://com.coolapk.market/page?url=V8\_BANNER\_005

新上架应用：

coolmarket://com.coolapk.market/apk/newestList

![](https://gvmjj1ayk5.feishu.cn/cbe47667-1bb6-43fe-a69d-bdb2ac5dd9f9)

大众点评

搜索：

dianping://shoplist/search?keyword=五星级酒店

![](https://gvmjj1ayk5.feishu.cn/23e35a0a-ef3b-4d5d-9b63-592287542fbe)

美团

搜索：

imeituan://www.meituan.com/search?q=螺蛳粉

![](https://gvmjj1ayk5.feishu.cn/4fb2a154-21f2-4360-bb72-6dbcfaccbeeb)

拼多多

搜索：

pinduoduo://com.xunmeng.pinduoduo/search\_result.html?search\_key=

百亿补贴搜索：

pinduoduo://com.xunmeng.pinduoduo/brand\_activity\_search\_result.html?ten\_billion\_scene=&query=补贴搜索pinduoduo://com.xunmeng.pinduoduo/brand\_activity\_search\_result.html?ten\_billion\_scene=&query=

![](https://gvmjj1ayk5.feishu.cn/28130e19-7264-4ff7-ab6a-20565ee85f64)

淘宝

搜索：

taobao://s.taobao.com?q=

搜索：

包名com.taobao.taobao

类名com.taobao.search.searchdoor.SearchDoorActivity

![](https://gvmjj1ayk5.feishu.cn/1637ff49-1c6d-4e63-a939-6ead8691e6ed)

抖音

搜索：

snssdk1128://search/?{}

热搜榜：

snssdk1128://search/trending

指定作品ID跳转：

snssdk1128://aweme/detail/ID

（复制作品链接→粘贴至浏览器按回车→video开头后的一串数字就是作品ID）

原声（同一个背景音乐的所有作品）：

snssdk1128://music/detail/ID(music后的一串数字就是ID)

指定用户页面：

snssdk1128://user/profile/ID（分享浏览器粘贴回车后点一下关注→再在搜索框内找第一个uid出现后的一串数字就是ID）

直播间： snssdk1128://live?room\_id=ID

（分享直播间链接浏览器打开→reflow后一串数字就是直播间ID）

![](https://gvmjj1ayk5.feishu.cn/af8fcfd4-3d2c-4365-a275-662e348f11f2)

快手

指定ID用户主页：

kwai://profile/ID（用户原始ID获取办法：分享个人主页链接到浏览器打开→转源代码→页内查找kwai://profile/，前三个为分享别人主页用户的原始ID号，后五个就是被分享者原始ID快手号）

指定作品：

kwai://work/ID（作品ID获取办法：分享复制作品链接→浏览器打开→转源代码→页内查找kwai://work/第二个就是ID）

指定直播间跳转：

kwai://live/play/nxBwp\_TQa3M

消息→消息：

kwai://news

消息→私信：

kwai://messages

拍摄：

kwai://post

扫一扫/搜商品：

kwai://qrscan

我的个人页面：

kwai://myprofile

我的钱包：

kwai://mywallet

快手小店：

kwai://merchanthome

搜索：

kwai://search?keyword=

搜索音乐：

kwai://search?music=

话题热榜：

kwai://search/topicRank=

已关注的主播直播情况：

kwai://livemyfollow

快动漫（AcFun）小程序：

kwai://acg/home

熟人圈：

kwai://acquaintance

发私信（已关注的人）：

kwai://chat/select/sendmsg

![](https://gvmjj1ayk5.feishu.cn/709ee8d3-19a8-419e-ac3f-159c4d4f26dd)

小红书

搜索：

xhsdiscover://search/result?keyword=

商品搜索：

xhsdiscover://instore\_search/result?keyword=

用户：

xhsdiscover://user/id

笔记：

xhsdiscover://item/5f34197f000000000101e575

话题：

xhsdiscover://topic/v2/ID

（ID在话题右上角—分享—复制链接—链接红色段为话题ID \[链接\]查看链接）

首页：

xhsdiscover://home

![](https://gvmjj1ayk5.feishu.cn/778dc519-768d-4338-a7af-12651aa5a5cf)

豆瓣

搜索：

douban://douban.com/search?q=

![](https://gvmjj1ayk5.feishu.cn/3c61469a-5ea8-4c8a-a01b-48fea6d07004)

QQ邮箱

跳转至邮箱给指定人发送消息，编辑信息即可：

mailto:对方QQ号@qq.com

系统

给指定号码打电话：

tel://对方手机号码

软件商店：

market://search?q=

![](https://gvmjj1ayk5.feishu.cn/d63322d9-2f95-4bd1-ba67-658b0e03f7eb)

京东

订单：

openapp.jdmobile://virtual?params={category:jump,des:orderlist}

领京豆：

![](https://gvmjj1ayk5.feishu.cn/86e7bd67-8bef-453a-8d4b-a0b87852f8e5)

高德

实时公交amapuri://realtimeBus/home

![](https://gvmjj1ayk5.feishu.cn/b68c8155-c93a-49f1-9c58-0979d1fe5b62)

什么值得买

搜索：

smzdm://search?json={"keyWord":"####"}

![](https://gvmjj1ayk5.feishu.cn/abe3d9d6-38ce-42d2-a251-e6430315db55)

云闪付

扫一扫：

upwallet://native/scanCode

付款码：

upwallet://native/codepay

信用卡还款：

upwallet://rn/rncredit

乘车码：

upwallet://rn/rnhtmlridingcode

签到：

upwallet://html/open.95516.com/s/open/html/oauth.html?responseType=code&scope=upapi_quick&appId=a3c90681a0aa4319af4de5220cd4a622&state=8c88434733b4c11cca9185194add74e14af7beff25cbfc2085bf668898e6ff944dd9413c12834f67&redirectUri=https%3A%2F%2Fyouhui.95516.com%2Fnewsign%2Funionpay%2Foauth

![](https://gvmjj1ayk5.feishu.cn/8a6437fc-8780-4367-a0f3-b6926f8c2182)

QQ浏览器

搜索：

qb://search?searchEngine=baidu-page&iconType=1&hintKeyword=

![](https://gvmjj1ayk5.feishu.cn/b5a9ad98-1d5e-4a0e-8d1b-9e2914f8d54d)

中国联通

中国联通每日签到：

chinaunicom://?open={"openType":"url","title":"","openUrl":"https://u.10010.cn/qAqFT?linkType=unicomNewShare&mobileA=10010&businessName=%E7%AD%BE%E5%88%B0%E6%9C%89%E7%A4%BC&businessCode=40010&shareType=2&mobileB=787BBF58FE53E855992AFF7FA4DA2F8E&duanlianjieabc=0tyI7cpV","actCode":""}

中国电信

![](https://gvmjj1ayk5.feishu.cn/e3e64c94-7916-47c2-9bd9-43ffb65a9677)

签到：

ctclient://startapp/android/open?LinkType=33&Link=https%3A%2F%2Fwapside.189.cn%3A9001%2Fresources%2Fdist%2FsignInActivity.html%3Fticket%3D%24ticket%24%26version%3D%24version%24%26cmpid%3Dkhd-smspush-sign-jt&BackUrl=http%3A%2F%2Fwww.189.cn&Recomnbr=%E7%AD%BE%E5%88%B00316%E6%B5%8B%E8%AF%95