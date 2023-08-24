[TOC]

# 选择指定ID元素下的标签元素
```js
document.getElementById("div").getElementsByTagName("li");
```
# 选择框架下的指定元素
```js
document.getElementById(' iframe ID').contentWindow.document.getElementsByClassName("className")[0]
```
# 选择元素ID、ClassName、TagName区别
```js
document.getElementById //为唯一单一对象
document.getElementsByClassName、document.getElementsByTagName //为复数对象数组，需要用[0]指定
```
# 数组的分割和合并
```js
var arrayList = arrayStr.split(",");
arrayStr =  arrayList .join(",");
```
# 函数递归等待响应
```js
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
```js
var fn;
$(document).ready(function(){
    fn = function(){}
});
 
fn();
```
# 用switch(true)代替多重if
```js
switch (true) {
  case r.get("status_b") == "0" :
  case r.get("status_c") == "4" && r.get("status_plan") == "2" :
    break;
  default :
    return "";
}
```
# js逻辑运算符技巧
**在JS里，任何类型的值都可以转换成逻辑布尔值（手动转换使用【!!】或【Boolean()】）**

| 对象           | true     |
| :------------- | -------- |
| **非空字符串** | **true** |
| **非0数字**    | **true** |
|                |          |
| ""             | false    |
| null           | false    |
| undefined      | false    |
| NaN            | false    |
| 0              | false    |

## 【几乎所有语言中||和&&都遵循短路算法，&&中第一个表达式为假就不会去处理第二个表达式，而||正好相反。】

## <u>利用运算符精简if和switch代码：</u>
[![js逻辑运算符技巧](../../assets/images/js/JavaScript-逻辑运算符技巧.jpg)]()
成长速度与箭头相关联，5速度=1箭头，以此类推：
```js
var add_level = (add_step==5 && 1) || (add_step==10 && 2) || (add_step==12 && 3) || (add_step==15 && 4) || 0;
```

```js
var add_level={'5':1,'10':2,'12':3,'15':4}[add_step] || 0; 
```

# 遍历替换img的src属性为ess-data值
xpath：`//*[@id="conttpc"]//img/@ess-data`

```js
var img = document.getElementsByTagName('img'); var i = 0; for(;i<img.length;i++){ var face = img[i].getAttribute('ess-data'); img[i].setAttribute('src',face); }
```
