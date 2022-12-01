# JS的window.location属性详解

如果你稍微懂一些JS代码，一般都会知道 window.location.href 这个属性。并且用该属性获取页面 URL 地址：

`window.location.href = window.location.href;`
好吧，我告诉你，这样弱掉了。其实原生 JavaScript 真是什么都有。

window.location 对象所包含的属性

| 属性     | 描述                              |
| -------- | --------------------------------- |
| hash     | 从井号 (#) 开始的 URL（锚）       |
| host     | 主机名和当前 URL 的端口号         |
| hostname | 当前 URL 的主机名                 |
| href     | 完整的 URL                        |
| pathname | 当前 URL 的路径部分               |
| port     | 当前 URL 的端口号                 |
| protocol | 当前 URL 的协议                   |
| search   | 从问号 (?) 开始的 URL（查询部分） |

window.location.hash

要使用 JS 定位锚点，完全可以使用 window.hash 配合元素 ID 完成。比如快速定位到页面的某条评论，则直接使用如下代码即可：

`window.location.hash = "#comment-5981";`
另外 Twitter、Facebook、Google 等已经开始大量使用 #! 这种形式的 hash 方法处理异步交互页面的 URL 可回溯功能。

window.location.search

如果有这样一个 URL 地址：

`http://www.google.com.hk/search?hl=zh-CN&source=hp&biw=1400&bih=935&q=%E8%8A%92%E6%9E%9C%E5%B0%8F%E7%AB%99&aq=f&aqi=&aql=&oq=`
如何利用 JS 脚本捕获页面 GET 方式请求的参数？其实直接使用 window.location.search 获得，然后通过 split 方法结合循环遍历自由组织数据格式。

另外，如果根据用户的搜索条件刷新页面，只需直接设置 window.location.search 即可。


来源： <http://www.5icool.org/a/201105/a564.html>