[TOC]

# jQuery1.9版本之后需使用val()取值

# 外部插入内容方法
+ 在 (content1) 之后insertAfter(content2)
+ 在 (content2) 之前insertBefore(content1)


# 选择器示例
```js
// ID .类 :元素 name :索引 :排除(:已选中的) . 紧邻的下个同辈元素() ( 选中复选框)

$("#id .class :input[name='news'] : eq(0):not(:checked)").next() .attr("checked"," checked ");

// 找到大于起始位置2结果集后，再从0开始找到小于位置3的元素
$(":checkbox:gt(2):lt(3)");
// 多条件选择器
$("p,div,span");
// 相对选择器：选择$(this)下所有td
$("td", $(this));

// 层次选择器

$("table > tbody > tr")
```


# 自动滚动
```js
document.body.scrollTop = $('.element').offset().top; 
```


# 滚动到底部或元素触发
```js

$(window).scroll(function() {
  if ($(window).scrollTop() == $(document).height() - $(window).height()) {
    alert('bottom!!');
  }
  // 滚动到一个元素之下
  if ($(window).scrollTop() > $('.element').offset().top) {
    alert('element');
  }
}); 
```


# 设置jBox生成的iframe中的元素值
```js
top.$.jBox.open('iframe:url', "标题", 810, $(top.document).height() - 240, {
loaded: function (h) {
var container = h.find("iframe")[0].contentWindow.document;
var firstGoods = $("td :checkbox:checked:first").parent().parent();
$("#categoryName", container).val(firstGoods.find("td[name='categoryTD']").text());
}
});
```
