[TOC]

# **js和css兼容IE和FireFox(FF) ** 

(说明:下面凡说w3c代表Firefox,Chrome,Safari,Opera，FF则代表Firefox)  

目前版本Firefox3.5,Chrome3.0,Safari4.0.3,Opera 9.64  

(最后修改日期2009-11-17)  

# css:  

## **1.  ul标签中FF中有个padding值，却没有margin值，而在IE中正好相反**

解决办法:将ul的padding和margin都设为0(也可以不是0)如：padding:0;margin:0;list-style:none;  

另外form默认在IE中也会有margin值，所以最好也将其margin和padding设为0  

  

## **2.  ie中cursor:hand可以将鼠标设为手形，w3c不行**

解决：都用cursor:pointer  

  

## **3、居中问题  **

ie需要将父窗口:text-align:center;而ff则是margin-left:auto;margin-right:auto;  

  

## **4.IE和FF盒模型有区别，所以有需要特殊设置 **

IE Box的宽度是margin+width      (IE的border和padding包含在width内)  

FF Box的宽度是margin+width+border+padding   

FF: 支持 !important（优先解析）， IE 则忽略， 可用 !important 为 FF 特别设置样式  

width:600px !important;//这个要放在前面才行  

width:598px;  

另外：传说IE7会奇怪的支持!important，IE tester v0.4.2下测试无效;  

ie下：offsetWidth=width;clientWidth=width-border  

ff下:ofsetWidth=width+padding+border;clientWidth=width+padding;  

  

## 5.  IE6中在设置float的div中margin会加倍

解决办法：div里面加上display:inline;  

  

## 6.透明滤镜：  

IE：filter:progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=30);  

W3c：opacity:0.3;  

或者：  

IE：filter:alpha(opacity=60);   

FF：-moz-opacity:0.6;/*已过时，用上面的opacity代替*/  

  

## 7.禁用选择  

非ff中:使用js，onselectstart="return false;";  

FF:使用CSS，-moz-user-select:none;  

  

## 8：圆角：  

FF中：-moz-border-radius: 5px;  

其它支持:-webkit-border-radius:5px;-khtml-border-radius:5px;border-radius:5px;  

  

# js:  

## 1.  IE中innerText在w3c中没有，使用textContent;  

eg:  

```js
var obj=document.getElementById("_td");  
var text;  
if(obj.innerText) {  
    text=obj.innerText;  
} else if(obj.textContent) {  
    text=obj.textContent;  
}  
```

（DHTML手册说innerText不能用在tr，td等节点上，不过我之前明明用过的，然后昨天在测试别人的页面时用上面的方法IE取不到值，有哪位知道的希望告知下，在什么情况下不能使用innerText）  

## 2.  在Ajax中返回对象状态IE可以使用readystate但是在W3c中必须为readyState，所以最好是都写成readyState  

  

## 3.获取IE和w3c中的键盘返回值，w3c使用e.keyCode和e.which来取按键值  

另外keypress事件比较特殊，现测试如下：  

IE:  

​    `keypress:letter(65-90,97-122),digit(48-57),enter(13),Esc(27)不支持backspace(8)，del(46),insert(45),Move(35-40)，F1-F12(111-123)`  

  

FF3.5:  

​    keypress:  

​        `e.which:letter(65-90,97-122),digit(48-57),enter(13),backspace(8)不支持Esc(27),F1-F12(111-123)，del(46),insert(45),Move(35-40)`  

​        `e.keyCode:Esc(27),F1-F12(111-123),enter(13),backspace(8)，del(46),insert(45),Move(35-40) 不支持letter(65-90,97-122),digit(48-57)，`  

  

Chrome3.0:  

​    keypress:  

​        `e.which和e.keyCode:letter(65-90,97-122),digit(48-57),enter(13),不支持backspace(8),Esc(27),F1-F12(111-123),，del(46),insert(45),Move(35-40)`  

  

## 4.为对象添加移除事件  

var obj=document.getElementById("_tname');  

添加事件:  

```js
if(obj.attachEvent) {  
    obj.attachEvent("onchange",function() {//for IE  
        otherfunction(params);//这里可以给其实方法传参，也可以直接调用其它方法  
    });  
} else if(obj.addEventListener) {//for W3c  
    obj.addEventListener("change",function() {  
        otherfunction(params);  
    },false);  
}  
```

移除事件：  

```js
obj.onclick=null;  
or  
if(obj.detachEvent) {  
    obj.detachEvent("onchange",test);  
} else if(obj.removeEventListener) {  
    obj.removeEventListener("change",test,false);  
}
```

## 5.  事件位置  

通用：  

screenX,screenY:鼠标在显示屏幕上的坐标  

clientX,clientY:鼠标在页面可见区域的坐标  

IE:  

e.x,e.y  相对于可见区域的坐标(今天ie8，及ie testerv0.4.2下测试)，设置为position:relative时与e.layerX相同（即与e.offsetX只有边框的差距），  

e.offsetX,e.offsetY  鼠标相对于父元素的的位置(不包含边框，与设置position为absolute或者relative的layerX只有边框的差距）  

w3c:  

e.pageX,e.pageY 鼠标在页面上的位置  

e.layerX,e.layerY  鼠标相对于“触发事件的元素的层级关系中离该元素最近的，设置了position的父元素”的边界的位置，layerX从border的左上角开始定位，即如果这个父元素存在border，则坐标原点在border的左上角，而不是内容区域的左上角(如果未设置position为absolute或者relative，此位置表示相对于页面最左边的距离)  

  

clientY+ 滚动条滚去的高度= pageY  

  

  

## 6.IE下 input.type属性为只读，但是FF下可以修改  

  

## 7.在 IE 中，getElementsByName()、(document.all[name] (还未测试成功))均不能用来取得 div元素（是否还有其它不能取的元素还不知道）。  

  

## 8.通过js来触发事件  

```js
<script type="text/javascript">  
    function handerToClick(){  
        var obj=document.getElementById("btn1");  
        if(document.all){//IE中  
           obj.fireEvent("onclick");  
        }   else    {//W3c  
            var e=document.createEvent('MouseEvent');  
            e.initEvent('click',false,false);  
            obj.dispatchEvent(e);  
        }  
    }  
</script>
```

<input type="button" value="btn1" id="btn1" onclick=" alert('按钮btn1的click事件') " />  

<input type="button" value="触发ID为btn1的onclick事件" onclick=" handerToClick() " />  

  

## 9.IE下event对象有srcElement属性,w3c下,event对象有target属性  

e = e||window.event;  

if(e==null)//当事件在iframe中时为空  

 e=window.top.document.parentWindow.event;  

var obj=e.srcElement || e.target;  

  

IE中onmouseover和onmouseout分别有属性e.fromElement和e.toElement  

而w3c只用一个属性relatedTarget代替  



## 10.在w3c中自己定义的属性必须getAttribute()取得  

  

## 11.在FF3.0+，Ajax异步问题  

```js
var isFirefox=navigator.userAgent.indexOf("Firefox")>-1  

xhr.onreadystatechange=handler;  

            xhr.open('GET',encodeURI(sUrl),bAsync);  

            xhr.send(null);  

            if(isFirefox) {  

                /xhr.onreadystatechange=/handler();  

            } 
```

## 12.FF下没有insertAdjacentHTML问题(除ff中都有)  

两种解决办法，在如果在iframe中只能使用后一种：  

```js
①  
    insertable:function(){//insertAdjacentHTML  
        if(document.body.insertAdjacentHTML){return;}  
        HTMLElement.prototype.insertAdjacentHTML = function(sWhere, sHTML){  
            var df = null,r = this.ownerDocument.createRange();  
            switch (String(sWhere).toLowerCase()) {  
                case "beforebegin":  
                    r.setStartBefore(this);  
                    df = r.createContextualFragment(sHTML);  
                    this.parentNode.insertBefore(df, this);  
                    break;  
                case "afterbegin":  
                    r.selectNodeContents(this);  
                    r.collapse(true);  
                    df = r.createContextualFragment(sHTML);  
                    this.insertBefore(df, this.firstChild);  
                    break;  
                case "beforeend":  
                    r.selectNodeContents(this);  
                    r.collapse(false);  
                    df = r.createContextualFragment(sHTML);  
                    this.appendChild(df);  
                    break;  
                case "afterend":  
                    r.setStartAfter(this);  
                    df = r.createContextualFragment(sHTML);  
                    this.parentNode.insertBefore(df, this.nextSibling);  
                    break;  
            }  
        };  
    }(),  
②  
     insertHtml:function(where, el, html){  
        where = where.toLowerCase();  
        if(el.insertAdjacentHTML){  
            switch(where){  
                case "beforebegin":  
                     el.insertAdjacentHTML('BeforeBegin', html);  
                    return el.previousSibling;  
                case "afterbegin":  
                     el.insertAdjacentHTML('AfterBegin', html);  
                    return el.firstChild;  
                case "beforeend":  
                     el.insertAdjacentHTML('BeforeEnd', html);  
                    return el.lastChild;  
                case "afterend":  
                     el.insertAdjacentHTML('AfterEnd', html);  
                    return el.nextSibling;  
             }  
            throw 'Illegal insertion point -> "' + where + '"';  
         }  
        var range = el.ownerDocument.createRange();  
        var frag;  
        switch(where){  
             case "beforebegin":  
                 range.setStartBefore(el);  
                 frag = range.createContextualFragment(html);  
                 el.parentNode.insertBefore(frag, el);  
                return el.previousSibling;  
             case "afterbegin":  
                if(el.firstChild){  
                     range.setStartBefore(el.firstChild);  
                     frag = range.createContextualFragment(html);  
                     el.insertBefore(frag, el.firstChild);  
                    return el.firstChild;  
                 }else{  
                     el.innerHTML = html;  
                    return el.firstChild;  
                 }  
            case "beforeend":  
                if(el.lastChild){  
                     range.setStartAfter(el.lastChild);  
                     frag = range.createContextualFragment(html);  
                     el.appendChild(frag);  
                    return el.lastChild;  
                 }else{  
                     el.innerHTML = html;  
                    return el.lastChild;  
                 }  
            case "afterend":  
                 range.setStartAfter(el);  
                 frag = range.createContextualFragment(html);  
                 el.parentNode.insertBefore(frag, el.nextSibling);  
                return el.nextSibling;  
             }  
            throw 'Illegal insertion point -> "' + where + '"';  
     }
```

## 13.FF下没有outerHTML问题（除ff都支持）：  

```js
if(!document.body.outerHTML  && typeof(HTMLElement)!="undefined")   
{  
    HTMLElement.prototype.__defineGetter__("outerHTML",function()   
    {   
        var a=this.attributes, str="<"+this.tagName, i=0;for(;i<a.length;i++)   
        if(a[i].specified)   
            str+=" "+a[i].name+'="'+a[i].value+'"';   
        if(!this.canHaveChildren)   
            return str+" />";   
        return str+">"+this.innerHTML+"</"+this.tagName+">";   
    });   
    HTMLElement.prototype.__defineSetter__("outerHTML",function(s)   
    {   
        var r = this.ownerDocument.createRange();   
        r.setStartBefore(this);   
        var df = r.createContextualFragment(s);   
        this.parentNode.replaceChild(df, this);   
        return s;   
    });   
    HTMLElement.prototype.__defineGetter__("canHaveChildren",function()   
    {   
        return !/^(area|base|basefont|col|frame|hr|img|br|input|isindex|link|meta|param)$/.test(this.tagName.toLowerCase());   
    });   
}
```

或者如果只需要取值也可以：  

```js
function outerHTML(obj) {  
    if(obj.outerHTML)  
        return obj.outerHTML;  
    else {  
        var el=document.createElement("div");  
        el.appendChild(this.cloneNode(true));  
        return el.innerHTML;  
    }  
}
```

## 14.访问css的float和class：  

由于float在JavaScript中是保留字，  

`IE：obj.style.styleFloat="left";`  

`w3c:  obj.style.cssFloat="left";`  

同理获取对象的class时(IE&FF:obj.className;)：  

`IE: obj.getAttribute("className");`  

`w3c: obj.getAttribute("class");`  

  

## 15.访问<label>的for属性  

同样，for在JavaScript中是保留字：  

`IE：obj.getAttribute("htmlFor");`  

`w3c:  obj.getAttribute("for");`  

  

## 16.访问元素继承的样式：  

`IE：obj.currentStyle.width;`  

`w3c:  document.defaultView.getComputedStyle(obj,null).width;`  

  

## 17.获取网页可见区域大小：  

FF:  

`window.innerWidth;`  

`window.innerHeight;`  

IE&FF：  

```js
var getClientRect=function() {  

    var de;  

    if(document.compatMode=="CSS1Compat")   de=document.documentElement;  

    else de=document.body;  

    return {width:de.clientWidth,height:de.clientHeight};  

}  

alert(getClientRect().width +"|"+getClientRect().height);  
```

## 18.节点问题  

IE中使用parentEl.chilren()方法获取所有子 元素节点，而w3c不支持,  

IE可以用childEl.parentElement获取父元素，w3c不支持，统一使用parentNode;  

  

IE和w3c中:parentEl.childNodes属性，返回所有子节点集合，包含文本节点  

IE&w3c:parentEl.children，属性，返回所有子 元素（不包含文本）节点集合  



w3c中节点没有removeNode方法，必须使用如下方法 node.parentNode.removeChild(node)  

  