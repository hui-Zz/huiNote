# FireFox不兼容滚动参数

~~document.body.scrollTop~~

**需要使用：document.documentElement.scrollTop**

```js
var scroll = (document.body.scrollTop) ? document.body.scrollTop : document.documentElement.scrollTop; //兼容Firefox
```

# FF中不兼容document.forms("formname")

ie中可以，最好改成document.forms["formname"]的下标用法

# FF中不兼容document.all
document.all是在ie中定义的用法，最好改成document.getElementById
# FF中不兼容div的id获取div的属性如divId.style.display等
应一致改成document.getElementById("divId").style.display
# FF不兼容event