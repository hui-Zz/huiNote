现在到处都是JavaScript，每天都能知道点新东西。一旦你入了门，你总能从这里或是那里领悟到很多知识。

一旦我发现一些有意思的东西，我喜欢去感觉他们的源代码，看一看它是怎么办到的。

今天我想分享Addy Osmani的一行代码 ，这行代码对于你调试你的CSS是很有用的。为了可读性，我把它变成了3行。

注* Addy Osmani 是Google Chrome开发工程师，他前几天开发的字符串解析模板, 马上被兼容最新ES6标准的io.js采纳。 

```js
[].forEach.call($("*"),function(a){
  a.style.outline="1px solid #"+(~~(Math.random()*(1<<24))).toString(16)
})
```

尝试在你浏览器的Console(F12)中运行一下，你会发现页面被不同的颜色块高亮了，这个方法非常简单，但是你自己写的话可能产生非常多的代码，让我们来研究一下它是怎么实现的。

## 选择一个页面上的所有元素

我们首先需要选择页面上的所有元素。Addy使用了只能在console调试工具中使用的$函数，你可以在console中输入$('a')自己试一下。它会返回当前页面的所有anchor（链接）元素。

$与document.querySelectorAll是等价的。所以$('*')与 document.querySelectorAll('*')是等价的，有兴趣的话可以看看[$和$选择器的历史](http://ourjs.com/detail/54ab768a5695544119000007)。 

对于我来说，$的使用已经让我学到了很多。但是选择页面上的所有元素的知识还有很多。Mathias Bynens就在评论中指出document.all 其实也能选取选用元素，而且兼容所有主流浏览器。

## 遍历所有的元素

现在我们有了一个所有元素的节点列表（NodeList）,现在我们想遍历它们，并给他们加上有颜色的边框。我们先看看能从这行代码里发现什么：
```js
[].forEach.call( $('*'), function( element ) { /* And the modification code here */ });
```

NodeList看起来像一个Array（数组），你可以使用中括号来访问他们的节点，而且你还可以通过length属性知道它有多少元素。但是它并没有实现Array的所有接口，因此使用 $('*').forEach 会返回错误，在JavaScript的世界里，有一堆看起来像Array但其实不是的对象。如function中的arguments对象。因此在他们身上通过call和apply来应用数组的方法是非常有用的。我之前写过一篇文章来解析它们的用法，下面是一个例子
```js
function say(name) {
 console.log( this + ' ' + name );
}

say.call( 'hola', 'Mike' );
// 打印输出 'hola Mike'
```
之前的一行代码使用 [].forEach.call 代替 Array.prototype.forEach.call 减少了代码的编写量 ( 另外一个很有意思的地方 )；如果$('*')返回是个数组的话，它与$('*').forEach是等价的。

如果你看看评论，还有人使用for(i=0;A=$('*');)让代码变得更短，但是它在全局对象中注入了变量。

你可以带上var声明，如
```js
for(var i=0,B=document.querySelectorAll('*');A=B[i++];){ /* your code here */ }
```
其中i和B将只声明在console的上下文中。

## 改变元素的颜色

让元素有一个漂亮的边框，这行代码使用了CSS的outline属性。有一点你可能不知道，在CSS渲染的盒子模型（Box Model）中，outline并不会改变元素及其布局的位置。因此这比使用border属性要好得多，所以这一部分其实并不难理解
```js
a.style.outline="1px solid #" + color
```
怎样定义颜色值其实是比较有意思的
```js
~~(Math.random()*(1<<24))).toString(16)
```
我不是特别懂位运算，因此我最喜欢这一段。

我们想构造的其实是一个16进制的颜色值，像白色FFFFFF，蓝色0000FF等等。

首先我们学到了可以使用数字类型的toString方法进行十进制到16进制的转换。

其实你可以用它进行任意进制的转换
```js
(30).toString();   // "30"
(30).toString(10); // "30"
(30).toString(16); // "1e" 16进制
(30).toString(2); // "11110" 二进制
(30).toString(36); // "u" 36 是最大允许的进制
```
因此16进制中的ffffff其实是 parseInt("ffffff", 16) == 16777215，16777215是2^24 - 1的值

因此左位移操作乖以一个随机数 Math.random()*(1<<24) 可以得到一个0 到 16777216之间的值

但是还不够，Math.random返回的是一个浮点数字，我们只需要整数部，这里使用了“~”操作符（按位取反操作）。

这行代码并不关心正负值。因此通过两次取返就可以得到纯整数部，我们还可以将~~视为parseInt的简写：
```js
var a = 12.34, // ~~a = 12
    b = -1231.8754, // ~~b = -1231
    c = 3213.000001 // ~~c = 3213
;

~~a == parseInt(a, 10); // true
~~b == parseInt(b, 10); // true
~~c == parseInt(c, 10); // true
```
如果你仔细看评论你会知道使用 按位或 "|"操作符也可以得到相同的结果。
```js
~~a == 0|a == parseInt(a, 10)
~~b == 0|b == parseInt(b, 10)
~~c == 0|c == parseInt(c, 10)
```
我们最终得到了一个 0 到 16777216之间的随机数，然后使用toString(16)转换成16进制，它就是这样工作的。



原文地址： arqex.com
[ 非英文:1151, 总字符:2698 ]
