# JS网页定位
```JavaScript
console.info(" 网页可见区域宽：" + document.body.clientWidth );
console.info(" 网页可见区域高：" + document.body.clientHeight );
console.info(" 网页可见区域宽：" + document.body.offsetWidth + "(包括边线和滚动条的宽)" );
console.info(" 网页可见区域高：" + document.body.offsetHeight + "(包括边线的宽)" );
console.info(" 网页正文全文宽：" + document.body.scrollWidth );
console.info(" 网页正文全文高：" + document.body.scrollHeight );
console.info(" 网页被卷去的高(ff)：" + document.body.scrollTop );
console.info(" 网页被卷去的高(ie)：" + document.documentElement.scrollTop );
console.info(" 网页被卷去的高(兼容)：" + $(window).scrollTop() );

console.info(" 网页被卷去的左：" + document.body.scrollLeft );
console.info(" 网页正文部分上：" + window.screenTop );
console.info(" 网页正文部分左：" + window.screenLeft );
console.info(" 屏幕分辨率的高：" + window.screen.height );
console.info(" 屏幕分辨率的宽：" + window.screen.width );
console.info(" 屏幕可用工作区高度：" + window.screen.availHeight );
console.info(" 屏幕可用工作区宽度：" + window.screen.availWidth );
console.info(" 你的屏幕设置是 " + window.screen.colorDepth + " 位彩色" );
console.info(" 你的屏幕设置 " + window.screen.deviceXDPI + " 像素/英寸" );
```

# JS文档定位
```JavaScript

event.pageX 相对于文档左边缘的鼠标位置。
event.pageY 相对于文档上边缘的鼠标位置。
event.clientX 相对文档的水平座标
event.clientY 相对文档的垂直座标
event.offsetX 相对容器的水平坐标
event.offsetY 相对容器的垂直坐标
```
