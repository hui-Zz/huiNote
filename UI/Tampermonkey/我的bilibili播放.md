```js
// ==UserScript==
// @name         �ҵ�bilibili����
// @namespace    http://your.homepage/
// @version      2.2
// @description  enter something useful
// @author       Zz 2017.11.15
// @match        *://bangumi.bilibili.com/*
// @match        *://www.bilibili.com/video/*
// @match        *://www.bilibili.com/watchlater/*
// @grant        none
// ==/UserScript==
var headerM=".bili-header-m";  //�Ժ��ٿ�ͷ��
var header=".header";  //ͷ��
var z_top=".z_top_container";  //����������
var viewbox=".viewbox"; //����
var player_wrapper=".player-wrapper"; //��������װ
var arc_toolbar=".arc-toolbar"; //Ͷ��
var plist=".v-plist"; //��P�б�

$(header).hide(); //����ͷ��
$(headerM).hide(); //����ͷ��
$(z_top).hide(); //����ͷ��
$(player_wrapper).css("padding","0"); //��������װ����Ϊ0
$(player_wrapper).css("border-top","0px"); //ͷ�߿��Ϊ0
$("#bofqi").css({"margin":"0 auto","padding":"0"}); //�������߾��Ϊ0

$(player_wrapper).insertBefore(viewbox); //�ƶ���������װ������֮��
$(viewbox).insertBefore(arc_toolbar); //�ƶ����⵽Ͷ��֮��
$(plist).insertBefore(arc_toolbar); //�ƶ���P�б�Ͷ��֮��

var MyTopZz = '<div id="MyTopZz" style="width:25px;height:25px; z-index:10001;left:20px;top:580px;position:absolute;'+
    'background-image: url(http://static.hdslb.com/images/base/icons.png); background-repeat: no-repeat; background-position: -915px -82px;" /> ';
$(MyTopZz).insertBefore(".main-inner:eq(0)");	//��ҳ�����ؼ�

$("#MyTopZz").click(function(){
    if($(header).is(":hidden")){
        $(header).show(); //��ʾͷ��
        $(z_top).show(); //��ʾ����
    }else{
        $(header).hide(); //����ͷ��
        $(z_top).hide(); //���ض���
    }
});
//////////////////////////////
//����������ѡ����ͬ��//
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
//�Զ�����//
/////////////
setTimeout("$('.bilibili-player-video-btn-widescreen').click();",3000);
//setTimeout("document.getElementsByClassName('button ABP-WideScreen icon-tv')[0].click();
```