[TOC]

# 选择指定ID元素下的标签元素
```JavaScript
document.getElementById("div").getElementsByTagName("li");
```
# 选择框架下的指定元素
```JavaScript
document.getElementById(' iframe ID').contentWindow.document.getElementsByClassName("className")[0]
```
# 选择元素ID、ClassName、TagName区别
```JavaScript
document.getElementById //为唯一单一对象
document.getElementsByClassName、document.getElementsByTagName //为复数对象数组，需要用[0]指定
```
# 数组的分割和合并
```JavaScript
var arrayList = arrayStr.split(",");
arrayStr =  arrayList .join(",");
```
# 函数递归等待响应
```JavaScript
function loadStart(){
    if($("#id").html() == ''){
        console.info("网速慢……只能等");
        setTimeout(function(){
            loadStart();
        },100);
    }else{
        //启动
    }
}
```
# 调取` document.ready` 里函数需要在外定义
```JavaScript
var fn;
$(document).ready(function(){
    fn = function(){}
});
 
fn();
```
# 用switch(true)代替多重if
```JavaScript
switch (true) {
  case r.get("status_b") == "0" :
  case r.get("status_c") == "4" && r.get("status_plan") == "2" :
    break;
  default :
    return "";
}
```