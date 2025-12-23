```html
<html>
<head>
    <title>网站连接速度测试</title>
    <meta http-equiv="content-type" content="text/html;charset=gb2312">
</head>
<body>
    测试网站连接速度：
    <script language="javascript">
        tim = 1
        setInterval("tim++", 10)
        b = 1
        var autourl = new Array()
        autourl[1] = "hui-zz.gitee.io/RunAny"
        autourl[2] = "https://hui-zz.github.io/RunAny"
        autourl[3] = "https://github.com/hui-Zz/RunAny"
        autourl[4] = "www.baidu.com"
        function butt() {
            document.write("<form name=autof>")
            for (var i = 1; i < autourl.length; i++) document.write("<input type=text name=txt" + i + " size=10 value=测试中……> =》<input type=text name=url" + i + " size=40> =》<input type=button value=GO onclick=window.open(this.form.url" + i + ".value)><br>")
            document.write("<input type=submit value=刷新></form>")
        }
        butt()
        function auto(url) {
            document.forms[0]["url" + b].value = url
            if (tim > 2000)
            { document.forms[0]["txt" + b].value = "链接超时" }
            else
            { document.forms[0]["txt" + b].value = "时间" + tim / 100 + "秒" }
            b++
        }
        function run() { for (var i = 1; i < autourl.length; i++) document.write("<img src=" + autourl[i] + "/" + Math.random() + " width=1 height=1 onerror=auto('" + autourl[i] + "')>") }
        run()
    </script>
</body>
</html>

```

