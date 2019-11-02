# 1、(function($) {…})([jQuery](http://lib.csdn.net/base/jquery));

## 1）、原理：

这实际上是匿名函数，如下：

`function(arg){…}`
这就定义了一个匿名函数，参数为arg

而调用函数时，是在函数后面写上括号和实参的，由于操作符的优先级，函数本身也需要用括号，即：
`(function(arg){…})(param)`
这就相当于定义了一个参数为arg的匿名函数，并且将param作为参数来调用这个匿名函数

而`(function($){…})(jQuery)`则是一样的，之所以只在形参使用$，是为了不与其他库冲突，所以实参用jQuery
相当于`funtion output(s){…};output(jQuery);`或者`var fn=function(s){…};fn(jQuery);`

## 2）、作用（非常有用）：

这种写法的最大好处是形成闭包。在**(function($) {…})(jQuery)在内部定义的函数和变量只能在此范围内有效。**

**形成是否函数函数、私有变量的概念。比如：**

```js
1. var i=3;  
2. function init(){  
3.     alert("外层init："+i);  
4. }  
5. (function($) {  
6.     var i=2;  
7.     function init(){  
8.         alert("内层init："+i);  
9.     }  
10.   
11.     init();  
12. })(jQuery);  
13. init();  
```

执行结果：

**内层init：2**

**外层init：3**

------

# 2、`$(function(){…});`   `jQuery(function($) {…});` ` $(document).ready(function(){…})`

这三个的作用是一样的，本人比较需要用第一种、书写简单。

文档载入完成后执行的函数。