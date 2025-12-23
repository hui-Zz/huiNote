```js
var a = "";
var b = "";

for (var i=0; i<10; i++) {
  a += '\\u' + (Math.round(Math.random() * 20901) + 19968).toString(16);
  b += 'u' + (Math.round(Math.random() * 20901) + 19968).toString(16);

}
str1 = eval("'" + a + "'"); // Unicode 转码方式一
str2 = unescape(b.replace(/\u/g, "%u")); //Unicode转码方式二

document.write(str1 + "<br>" + str2);
```