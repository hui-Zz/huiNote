```js
// ==UserScript==
// @name         我的bilibili播放
// @namespace    http://your.homepage/
// @version      2.2
// @description  enter something useful
// @author       Zz 2017.11.15
// @match        *://bangumi.bilibili.com/*
// @match        *://www.bilibili.com/video/*
// @match        *://www.bilibili.com/watchlater/*
// @require      https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js
// @grant        none
// ==/UserScript==
var headerM=".bili-header-m";  //稍后再看头部
var header=".header";  //头部
var z_top=".z_top_container";  //顶部个人栏
var viewbox=".viewbox"; //标题
var player_wrapper=".player-wrapper"; //播放器包装
var arc_toolbar=".arc-toolbar"; //投币
var plist=".v-plist"; //分P列表

$(header).hide(); //隐藏头部
$(headerM).hide(); //隐藏头部
$(z_top).hide(); //隐藏头部
$(player_wrapper).css("padding","0"); //播放器包装填充改为0
$(player_wrapper).css("border-top","0px"); //头边框变为0
$("#bofqi").css({"margin":"0 auto","padding":"0"}); //播放器边距改为0

$(player_wrapper).insertBefore(viewbox); //移动播放器包装到标题之上
$(viewbox).insertBefore(arc_toolbar); //移动标题到投币之上
$(plist).insertBefore(arc_toolbar); //移动分P列表到投币之上

var MyTopZz = '<div id="MyTopZz" style="width:25px;height:25px; z-index:10001;left:20px;top:580px;position:absolute;'+
    'background-image: url(http://static.hdslb.com/images/base/icons.png); background-repeat: no-repeat; background-position: -915px -82px;" /> ';
$(MyTopZz).insertBefore(".main-inner:eq(0)");	//在页面插入控件

$("#MyTopZz").click(function(){
    if($(header).is(":hidden")){
        $(header).show(); //显示头部
        $(z_top).show(); //显示顶部
    }else{
        $(header).hide(); //隐藏头部
        $(z_top).hide(); //隐藏顶部
    }
});
//////////////////////////////
//滚动到评论选择按赞同数//
/////////////////////////////
var s=0;
$(window).scroll(function(){
    var ws=$(window).scrollTop();
    if (s===0 && ws > $('.common').offset().top -380 && ws < $('.common').offset().top + 380) {
        document.getElementsByClassName('tabs-order')[0].getElementsByTagName('li')[1].click();
        s=1;
    }
});
//////////////
//自动宽屏//
/////////////
setTimeout("$('.bilibili-player-video-btn-widescreen').click();",3000);
//setTimeout("document.getElementsByClassName('button ABP-WideScreen icon-tv')[0].click();


// 顶部高度
$("#biliMainHeader").css('cssText', 'height:50px !important;');
$("#biliMainHeader .mini-header").css('cssText', 'height:50px !important;');
setTimeout("$('#biliMainHeader .mini-header').css('cssText', 'height:50px !important;');",3000);
setTimeout("$('#biliMainHeader .mini-header').css('cssText', 'height:50px !important;');",6000);
```