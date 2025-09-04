### 玩法文章
- [Hum 151010 URL Schemes 使用详解](https://sspai.com/post/31500)
- [Hum 160427 OmniFocus 的 URL Schemes 用法](https://sspai.com/post/33969)
- [Hum 171115 通过 Bear 来认识 Launch Center Pro 的进阶用法](https://sspai.com/post/41825)
- [Hum 171122 通过 Bear 来认识 Drafts 的 [[line]] 用法](https://sspai.com/post/41954)
- [Hum 180518 入门 iOS 自动化：读懂 URL Schemes](https://sspai.com/post/44591)
- [Hum 180823 Universal Link 使用详解](https://sspai.com/post/46871)
- [Hum 181229 x-callback-URL 的使用方法](https://sspai.com/post/52221)
- [JamesHopbourn 210204 Drafts + vim = URL Scheme 复用](https://sspai.com/post/64930)
- [JamesHopbourn 210405 Drafts 5 与 Bear 联手，让我可以快速追加笔记](https://sspai.com/post/65871)
- [JamesHopbourn 210430 URL Scheme 查询指南](https://sspai.com/post/66334)
- [JamesHopbourn 210801 妙用重定向，优化 iOS 的搜索体验](https://sspai.com/post/68026)
- [JamesHopbourn 210825 使用小程序 URL Scheme 一键直达页面](https://sspai.com/post/68466)
- [JamesHopbourn 210827 支付宝、云闪付小程序一键直达：URL Scheme 跳转扩展用法](https://sspai.com/post/68497)

### URL Scheme 数据清洗命令
```
cat AndroidManifest.xml|ggrep -Po 'android:scheme=".*"'|sort|uniq
android:scheme="DAI_POPLAYER"
android:scheme="DAI_bufs_kkv_storage"
android:scheme="DAI_cml_cc_hold_push_trigger_worker"
android:scheme="DAI_cml_cc_smart_android_version_update"
android:scheme="DAI_seller_region_trigger_V2"
android:scheme="__alipaysdkauth__"
android:scheme="agoo"
android:scheme="aliflowcustoms"
android:scheme="alipay"
android:scheme="alitaobao"
android:scheme="alitaobao4android"
android:scheme="alitaobaoclient"
android:scheme="alitaobaolink"
android:scheme="http"
android:scheme="https"
android:scheme="itaobao"
android:scheme="message"
android:scheme="msptaobao"
android:scheme="package"
android:scheme="phatab"
android:scheme="secondfloor"
android:scheme="taobao"
android:scheme="taobaointent"
android:scheme="taobaowebview"
android:scheme="tbopen"
android:scheme="tbout"
android:scheme="tmall"
android:scheme="youku"
```
```
cat AndroidManifest.xml|grep -P '(?<!data )android:scheme="keyword"'

cat AndroidManifest.xml|perl -ne 'print if /<data android:host=/'|
perl -pe 's/^.*<data android:host="(.*?)" android:path="(.*?)" android:scheme="(.*?)"\/>/\3:\/\/\1\2/'|
perl -pe 's/^.*<data android:host="(.*?)" android:scheme="(.*?)"\/>/\2:\/\/\1/'|
perl -pe 's/^.*<data android:host="(.*?)" android:pathPrefix="(.*?)" android:scheme="(.*)"\/>/\3:\/\/\1\2/'|
perl -pe 's/^.*<data android:host="(.*?)" android:pathPattern="(.*?)" android:scheme="(.*)"\/>/\3:\/\/\1\2/' > ' URL Scheme.txt'
```

### ChatGPT
```
chatgpt://chat.openai.com/?model=gpt-4o&q=[keyword]

chatgpt://chat.openai.com/?model=gpt-3.5&q=[keyword]
```

### IINA
```
iina://weblink?url=[encode URL]
```

### VLC
```
vlc-x-callback://x-callback-url/stream?url=[encode URL]
```

### 文件
打开「文件」应用中的文件，可用于静态固定健康码
```
shareddocuments:///private/var/mobile/Library/Mobile%20Documents/com~apple~Preview/Documents/healthCode.png
```

### Shortcuts
运行捷径
```
shortcuts://run-shortcut?name=[名称]&input=[输入]&text=[文本]
```

### Safari
搜索
```
x-web-search://?[prompt]
```

### Spotify
播放指定音乐
```
https://open.spotify.com/track/4cMCaxrAxc0XNoth9fqzf4?si=ePF6s7QtRiGsJ6xqpGBI8Q

spotify:track:4cMCaxrAxc0XNoth9fqzf4
```
搜索音乐歌曲
```
spotify:search:[keyword]
```

### Shadowrocket
添加订阅
```
shadowrocket://add/{url}
```

### 淘宝
相机拍照搜索
```
taobao://tb.cn/n/scancode
```

搜索指定物品
```
taobao://s.taobao.com?q=[prompt:商品名称]
```

使用天猫搜索
```
taobao://list.tmall.com/search_product.htm?q=[prompt:商品名称]
```

取件身份码
```
taobao://m.taobao.com/tbopen/index.html?h5Url=https://market.m.taobao.com/app/cn-yz/multi-activity/authCode.html
```

搜索指定店铺
```
taobao://shopsearch.taobao.com/search?app=shopsearch&q=[prompt:店铺名称]
```

跳转指定淘宝店铺
```
taobao://shop.m.taobao.com/shop/shop_index.htm?shopId=[prompt:店铺 ID]
```

### 天猫
```
tmall://page.tm/search?q=[prompt:商品名称]
```

### 苹果地图
搜索地址
```
https://maps.apple.com/?q=[prompt:目的地]
```
[Apple URL Scheme Reference Map Links](https://developer.apple.com/library/archive/featuredarticles/iPhoneURLScheme_Reference/MapLinks/MapLinks.html)

### 高德地图
```
iosamap://navi?sourceApplication=applicationName&poiname=目的地&poiid=BGVIS&lon=纬度&lat=经度
```

### 淘特
```
taobaolite://m.ltao.com/?q=[prompt:商品名称]
```

### 美团外卖
```
meituanwaimai://waimai.meituan.com/search?query=[prompt:商品名称]
```

### 豆瓣
搜索内容
```
douban:///search?q=[prompt:搜索内容]
```

### 新浪微博
微博搜索
```
sinaweibo://searchall?q=[prompt]
```

扫一扫
```
sinaweibo://qrcode
```

发微博
```
sinaweibo://share?content=[prompt:微博内容]
```

指定用户个人资料页
```
sinaweibo://userinfo?uid=[uid]
```

### 抖音
搜索页面
```
snssdk1128://search/tabs?keyword=[prompt:搜索内容]
```

### 小红书
搜索页面
```
xhsdiscover://search/recommend
```
搜索
```
xhsdiscover://search/result?keyword=[prompt:搜索内容]
```
扫一扫
```
xhsdiscover://scan
```
某个帖子
```
xhsdiscover://item/[postID]
```

### 美团
付款码
```
imeituan://www.meituan.com/search?q=付款码
```
全局搜索
```
imeituan://www.meituan.com/search?q=[prompt:商品名称]
```
酒店搜索
```
imeituan://www.meituan.com/hotel/search?q=[prompt:酒店名称]
```
扫码页面
```
imeituan://www.meituan.com/scanQRCode
```
美团打车
```
imeituan://www.meituan.com/cab/home
```


### 哈啰出行
扫码
```
hellobike://hellobike.com/scan_qr
```

### 大众点评
搜索商品
```
dianping://searchshoplist?keyword=[prompt:商品名称]
```

### 欧陆词典
```
eudic://dict/[prompt:生词]
```

### 什么值得买
搜索商品
```
smzdm://search?json={"channelName":"home","search_type":"1","keyWord":"[prompt:商品名称]"}
```

### 豆瓣
扫一扫
```
douban:///scan
```
搜索
```
douban:///search?q=[prompt]
```

### 云闪付
信用卡还款
```
upwallet://rn/rncredit
```
扫一扫
```
upwallet://native/scanCode
```
付款
```
upwallet://pay
```
乘车码
```
upwallet://rn/rnshcarcode
```
小程序
```
upwallet://applet?toLink=【小程序 URL 地址】&encryptAppId=【小程序 ID】
```

### 知乎
搜索问题
```
zhihu://search?q=[prompt:问题]
```
```
zhihu://zhihu.com/search?q=[prompt:问题]
```
```
zhihu://www.zhihu.com/search?q=[prompt:问题]
```
扫一扫
```
zhihu://codereader
```

### 哔哩哔哩
主页
```
bilibili://home
```
推荐
```
bilibili://pegasus/promo
```
热门
```
bilibili://pegasus/hottopic
```
追番
```
bilibili://pgc/home
```
影视
```
bilibili://pgc/cinema-tab
```
搜索视频
```
bilibili://search?keyword=[prompt:视频名称]
```
视频播放页面
```
bilibili://video/{av}or{bv}
```
扫一扫
```
bilibili://qrcode
```
个人中心
```
bilibili://user_center
```
历史记录
```
bilibili://user_center/history
```
稍后再看
```
bilibili://user_center/watch_later
```
设置
```
bilibili://user_center/setting
```
UID用户页面
```
bilibili://space/{uid}
```
直播
```
bilibili://live/home
```
打开直播间
```
bilibili://live/{id}
```
我的收藏
```
bilibili://main/favorite
```
素材投稿
```
bilibili://uper/user_center/add_archive
```

### YouTube
搜索视频，此处的 URL 在 Universal Link 的作用下会直接跳转 YouTube 客户端，如果没有安装客户端则直接打开网页搜索。
```
https://m.youtube.com/results?q=[prompt:视频名称]
```
搜索视频
```
youtube://results?search_query=[prompt:视频名称]
```

### App Store
搜索软件
```
itms-apps://search.itunes.apple.com/WebObjects/MZSearch.woa/wa/search?media=software&term=[prompt:软件名称]
```

### 京东
扫一扫
```
openjd://virtual?params={"category":"jump", "des":"saoasao"}
```
付款码
```
openjd://virtual?params={"category":"jump", "des":"jdpaymentcode"}
```
搜索商品
```
openjd://virtual?params={"des":"productList", "keyWord":"[prompt:商品名称]", "from":"search", "category":"jump"}
```
订单页面
```
openjd://virtual?params={"category":"jump", "des":"orderlist"}
```
订单保价
```
openjd://virtual?params={"category":"jump", "des":"m", "url":"https://msitepp-fm.jd.com/rest/priceprophone/priceProPhoneMenu?defaultViewTab=0"}
```

### 拼多多
搜索商品
```
pinduoduo://com.xunmeng.pinduoduo/search_result.html?search_key=[prompt:商品名称]
```

### 微信
扫一扫
```
weixin://scanqrcode
```

付款码
```
weixin://widget/pay
```

[添加企业微信联系人](https://developer.work.weixin.qq.com/document/path/97394)
```
weixin://biz/ww/profile/https://work.weixin.qq.com/ca/xxxxxxxx
```

### 企业微信
扫一扫
```
wxwork://platformId=wechat&wwact=qrcode
```
打开企业微信联系人
```
wxwork://message/?username=xxx
```

### 支付宝
付款码
```
alipay://platformapi/startapp?appId=20000056
```

付款码指定用户
```
扫描收款码获取「跳转链接」 https://qr.alipay.com/xxxxxxxxxxxxxx

alipays://platformapi/startapp?saId=10000007&qrcode=「跳转链接」
```

扫一扫
```
alipay://platformapi/startapp?appId=10000007
```

乘车码
```
alipay://platformapi/startapp?appId=200011235
```

切换账号页面
```
alipay://platformapi/startapp?appId=20000027
```

手机充值
```
alipay://platformapi/startapp?saId=10000003
```

PockytShop
```
alipay://platformapi/startapp?appId=2021003191605547
```

国家政务平台扫一扫防疫信息码
```
alipays://platformapi/startapp?appId=2019011763060066&page=pages/health-code/health-scan/health-scan
```

北京健康宝扫一扫直达
```
alipays://platformapi/startapp?appId=2021001135679870&page=pages/codeScanning/index
```

麦当劳点餐页面直达
```
alipays://platformapi/startapp?appId=2017090708602953&page=product/pages/list/index?orderType=1
```
其他支付宝相关的小程序的 URL Scheme 请参照[《URL Scheme 查询指南》](https://sspai.com/post/66334)支付宝段落自行查询，此处不再一一列举。

### 菜鸟
打开身份码
```
cainiao://desktop/station_code
```
### 钉钉
扫一扫
```
dingtalk://dingtalkclient/page/scan
```

### 飞书
扫一扫
```
feishu://applink.feishu.cn/client/qrcode/main
```
飞书妙记
```
feishu://applink.feishu.cn/minutes/home
```
考勤打卡
```
feishu://applink.feishu.cn/client/mini_program/open?appId=cli_9c21a4767c305107
```
日历页面
```
feishu://applink.feishu.cn/client/calendar/open
```
任务页面
```
feishu://applink.feishu.cn/client/todo/open
```
创建任务
```
feishu://applink.feishu.cn/client/todo/create
```
加入群聊
```
feishu://applink.feishu.cn/client/chat/chatter/add_by_link?link_token=114t35f2-d460-4b6e-8641
```
进入指定联系人聊天页面
```
feishu://applink.feishu.cn/client/chat/open?openId=ou_12345678901234567890
```
汇报小程序
```
feishu://applink.feishu.cn/client/mini_program/open?appId=cli_9d0208a7d1bbd10c
```
打开文档
```
https://applink.feishu.cn/client/docs/open?url=[文档编码链接]
```

### Telegram
根据 ID 发送消息
```
tg://msg?to=@JamesHopbourn&text=消息文本
```
根据私有链接发送消息
```
tg://msg_url?url=链接地址&text=消息文本
```

### 萤石云视频
查看指定摄像头
```
获取 resourceId：进入某个摄像头 > 右上角设置 > 设备信息 > 将设备添加到手机桌面 > URL 包含 resourceId

ysvideolink://ezviz.com/device/detail?resourceId=
```

### Launch Center Pro
QR Code Scanner
```
launch://x-callback-url/clipboard?text=[scan]&x-success={{drafts4://create?text=[clipboard]}}
```
URL Scheme Debug
```
launch://x-callback-url/clipboard?text=[prompt-return:URL Scheme Debug 🐛=[clipboard]]&x-success=[clipboard]
```
App Store 换区预览
```
http://itunes.apple.com/[list:App Store|🇺🇸US=us|🇨🇳China=cn|🤔Other=[prompt::Region]]/app/region-chager/id0123456789
```
导入 Launch Center Pro Action
```
launch://x-callback-url/import?title=【标题】&url=【URL Scheme】
```
```
URL Scheme 需要全编码

➜ python -c "import clipboard
from urllib import parse
urls = parse.quote(clipboard.paste())
name = input('\n输入动作名称：')
print('launch://x-callback-url/import?title=' + parse.quote(name) + '&url=' + urls)"
```

根据 ID 运行动作  
```
launch://?url=[action:123]
```

### 设置
捷径屏幕使用时间通知
```
prefs:root=SCREEN_TIME&path=SCREEN_TIME_SUMMARY#DAY/com.apple.shortcuts
```
```
prefs:root=SCREEN_TIME&path=SCREEN_TIME_SUMMARY#WEEK/com.apple.shortcuts
```
```
App-prefs:SCREEN_TIME&path=SCREEN_TIME_SUMMARY#DAY/com.apple.shortcuts
```
```
App-prefs:SCREEN_TIME&path=SCREEN_TIME_SUMMARY#WEEK/com.apple.shortcuts
```

### 参考文章
[iOS 快捷指令 Shortcut 频繁弹出通知及关闭通知的 URL Scheme](https://www.v2ex.com/t/775905)
