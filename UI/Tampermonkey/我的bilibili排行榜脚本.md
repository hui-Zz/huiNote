```js
// ==UserScript==
// @name         �ҵ�bilibili���а�ű�
// @version      1.5
// @description  1�����а����������Ƶ
// @author       Zz_��������
// @include      *://www.bilibili.com/ranking
// @include      *://www.bilibili.com/ranking?*
// @include      *://www.bilibili.com/ranking/*
// @grant        none
// @require      http://code.jquery.com/jquery-1.11.0.min.js
// @namespace    https://greasyfork.org/users/9579
// ==/UserScript==
/////////////////////
///<<�ű���ʼ��>>///
///////////////////
var MyRankZz = '<input id="MyRankButton" type="button" style="float:left;background:#00a1d6;color:#fff;border-radius:4px;padding:0 5px;height:25px;font-size:12px;margin-right:5px;margin-top:7px;cursor:pointer;" value="����ҵ�����" />'
+ '<div style="float:left;background:#00a1d6;color:#fff;border-radius:4px;padding: 4px 5px;margin-top:1px;position: relative;top: 7px;">'
+ '<input id="MyRankCheck" type="checkbox" style="float:left;line-height:20px;margin-left:5px;cursor:pointer;text-align:center;transition:0.2s all;" />'
+ '<label for="MyRankCheck" style="cursor:pointer;">�ҵ����й���</label>'
+ '</div>';
$(MyRankZz).insertAfter(".rank-tab");	//��ҳ�����ؼ�
var MyRankCheck = localStorage.getItem("MyRankCheck");	//��ȡ���˲���
if(MyRankCheck && MyRankCheck==1){
    $("#MyRankCheck").attr("checked",true); //����ѡ��
}
var d = new Date();
var dMon = d.getMonth() + 1;
if(!MyRankCheck && MyRanking!=0){
    localStorage.setItem("MyRankCheck",0);	//��ʼ������
    localStorage.setItem("MyRanking"+dMon,"");	//��ʼ���洢
    alert("���а�ű���ʼ���ɹ���\n����bilibili���а�ű� by Zz");
    location.reload(); //ˢ��ҳ��
}
var MyRanking = localStorage.getItem("MyRanking"+dMon);	//��ȡ�洢����
if(!MyRanking && MyRanking!=""){
    localStorage.setItem("MyRanking"+dMon,"");	//�����һ�´洢
    alert("�����µ�һ���£�����bilibili���а�ű�");
}
///////////////////////////////
//==�����ݹ�ȴ����а����==//
/////////////////////////////
function loadStart(){
    if($(".dyn_list").html() == '<li class="rank-loading">loading...</li>'){
        console.info("����������ֻ�ܵ�");
        setTimeout(function(){
            loadStart();
        },100);
    }else{
        rankShow(0);	//�������бȽϹ���
    }
}

///////////////////////////////
//==���а�Ƚϡ����ˡ����==//
/////////////////////////////
function rankShow(a){
    var rankList = MyRanking.split("��");	//�洢���зָ����
    var rankItem = new Array(100);	//��ǰҳ������
    $(".info .title").each(function(i){
        rankItem[i] = $(this).html();
    });
    //--��ʼѭ���Ƚ�ҳ��������洢����--//
    for(var n=0;n<100;n++){
        var unRead = 1;	//���ķ�?
        for(var m=0;m<rankList.length;m++){
            if(rankItem[n] == rankList[m]){
                unRead = 0;	//���ġ�
                if(MyRankCheck==1){
                    $(".rank-list li:eq("+n+")").slideUp(); //��������
                }else{
                    $(".rank-list li:eq("+n+")").css("background","#c4e4b3");	//������Ƶ���˺����
                }
            }
        }
        if(unRead==1){
            if(a==0){
                $(".rank-list li:eq("+n+")").css("background","#edf2f9");	//δ����Ƶ���˺����
            }else{
                MyRanking += "��" + rankItem[n];	//���δ��
                console.info(rankItem[n]);
            }
        }
    }
    if(a==1){
        localStorage.setItem("MyRanking"+dMon,MyRanking);
        //alert("�ɹ���ӵ�ǰ���е����Ĵ洢������bilibili���а�ű�");
        location.reload();
    }
}
//++����ҵ����й���++//
$("#MyRankCheck").click(function(){
    if($("#MyRankCheck").is(":checked")){
        MyRankCheck = 1;
        localStorage.setItem("MyRankCheck",1); //�洢���˲���1
        rankShow(0); //����Ƚ���ʾ����
    }else{
        localStorage.setItem("MyRankCheck",0); //�洢���˲���0
        location.reload(); //��ԭֱ��ˢ��...͵����
    }
});
//++�л���������++//
$(".rank-menu li").click(function(){
    setTimeout(function(){
        loadStart();
    },200);
});
//++�������ҵ�����++//
$("#MyRankButton").click(function(){
    rankShow(1);
});
/////////////////////
//<<�ű���ʼ����>>//
///////////////////
loadStart();


```