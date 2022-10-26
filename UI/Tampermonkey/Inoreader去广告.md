```js
// ==UserScript==
// @name Inoreader去广告
// @description 去掉Inoreader的页面广告和升级按钮
// @author heartnn
// @version 1.0.0
// @grant none
// @noframes
// @include        http*://www.inoreader.com/*
// @include        http*://www.innoreader.com/*
// @include        http*://www.innoreader.com/folder/*
// @include        http*://inoreader.com/*
// @include        http*://innoreader.com/*
// @include        http*://beta.inoreader.com/*
// @include        http*://beta.innoreader.com/*
// @icon http://www.inoreader.com/favicon.ico
// @namespace https://greasyfork.org/users/10250
// ==/UserScript==
/*jshint multistr: true */

var styleEl = document.createElement('style');
styleEl.type = 'text/css';
styleEl.innerHTML = "\
#sb_rp_tools,#sb_rp_notifications,#sb_rp_gear{margin-right:0px;}\
.block_article_ad,.ad_title,#sinner_container,#sb_rp_upgrade_button,div.trc_rbox_container,div.ad_size_large_rectangle,div.sinner_under_footer{display: none !important;}\
#reader_pane.reader_pane_sinner{padding-right:0px;}\
";
document.documentElement.appendChild(styleEl);

var num = 0;

document.querySelector('#reader_pane').addEventListener('DOMNodeInserted', function (e) {
    num++;
    if(num % 10 == 0){
        var article = document.getElementsByClassName("article_tile");
        for(var i=0;i<article.length;i++){
            article[i].style.width = "10%";
            article[i].style.height = "270px";
            article[i].style.minWidth = "214px";
        }
        var picture = document.getElementsByClassName("article_tile_picture");
        for(var j=0;j<picture.length;j++){
            picture[j].style.height = "132px";
        }
        // console.info(num);
    }
}, false);

(function() {

    // 缩小缩略图
    setTimeout(function(){
        var article = document.getElementsByClassName("article_tile");
        for(var i=0;i<article.length;i++){
            article[i].style.width = "10%";
            article[i].style.height = "270px";
            article[i].style.minWidth = "214px";
        }
        var picture = document.getElementsByClassName("article_tile_picture");
        for(var j=0;j<picture.length;j++){
            picture[j].style.height = "132px";
        }
    },3500);

})();


```