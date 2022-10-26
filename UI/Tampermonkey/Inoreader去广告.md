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

    setTimeout(function(){

        // 缩小缩略图
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
        // 插入一键打开
        var footer = document.getElementsByClassName("articles_feed_group_footer");
        for(var k=0;k<footer.length;k++){
            // 获取分组信息
            var mark = footer[k].getElementsByClassName("pull_right mark_section_read");
            var click = mark[0].getAttribute("onclick")
            var reg = /.*,(\d+),this.*/;
            var fid = click.replace(reg,'$1');
            // 插入链接
            var a = document.createElement("a");
            var node = document.createTextNode("——次性打开以上链接");
            a.href="#";
            a.setAttribute("data-fid", fid);
            a.style.fontSize="13px";
            a.appendChild(node);
            a.addEventListener("click", function(){
                open_click_from_grouping(this.getAttribute("data-fid"));
            });
            footer[k].appendChild(a);
            mark[0].style.padding = "0px 0px 10px";
        }
    },3500);

})();

function open_click_from_grouping(fid){
    var articleDiv = document.getElementsByClassName("ar article_unreaded article_subscribed ar_showed article_tile radius article_expanded");
    for(var l=0;l<articleDiv.length;l++){
        if(articleDiv[l].getAttribute("data-fid") == fid) {
            var content = articleDiv[l].getElementsByClassName("article_tile_content_wraper");
            var url = content[0].getElementsByTagName("a")
            var href = url[0].getAttribute("href");
            window.open(href);
        }
    }
}


```