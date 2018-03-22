# 网页鼠标点击事件捕获
```JavaScript
document.onmousedown = function(event)
{
    var btnNum = event.button;
    if (btnNum==2)
    {
        alert("您点击了鼠标右键！")
    }
    else if(btnNum==0)
    {
        alert("您点击了鼠标左键！")
    }
        else if(btnNum==1)
        {
            alert("您点击了鼠标中键！");
        }
        else
        {
            alert("您点击了" + btnNum+ "号键，我不能确定它的名称。");
        }
}
```

# 网页键盘事件捕获
```JavaScript

document.onkeydown = function( event )
{
    if (event.keyCode == "13") {
        alert("您敲了回车键");
    }
}
```