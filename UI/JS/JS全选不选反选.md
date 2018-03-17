

```html
<!DOCTYPE html>
<html>
    <head><meta charset="UTF-8"></head>
    <body>
        <div id="div">
            <input type="checkbox" /><br />
            <input type="checkbox" /><br />
            <input type="checkbox" /><br />
        </div>
        <input type="button" value="全选" onclick="CheckAll()"/><br />
        <input type="button" value="不选" onclick="UnCheck()"/><br />
        <input type="button" value="反选" onclick="OtherCheck()"/><br />
        <script>
            var CheckBox=div.getElementsByTagName('input');
            //全选
            function CheckAll(){
                for(i=0;i<CheckBox.length;i++){CheckBox[i].checked=true;};
            };
            //不选
            function UnCheck(){
                for(i=0;i<CheckBox.length;i++){CheckBox[i].checked=false;};
                };
            //反选
            function OtherCheck(){
                for(i=0;i<CheckBox.length;i++){
                    if(CheckBox[i].checked==true){ CheckBox[i].checked=false;}
                    else{ CheckBox[i].checked=true}
                }
            };
// 压缩优化代码：
CheckBox=div.getElementsByTagName("input");
function CheckAll(){for(i=0;i<CheckBox.length;i++)CheckBox[i].checked=!0}
function UnCheck(){for(i=0;i<CheckBox.length;i++)CheckBox[i].checked=!1}
function OtherCheck(){for(i=0;i<CheckBox.length;i++)CheckBox[i].checked=1==CheckBox[i].checked?!1:!0}
// 点击选中框下个元素
function OpenCheck(){for(i=0;i<CheckBox.length;i++)1==CheckBox[i].checked&&CheckBox[i].nextSibling.click()}
        </script>
    </body>
</html>
```

