# Session机制
> session机制是一种服务器端的机制，服务器使用一种类似于散列表的结构来保存信息。



HttpSession是Java平台对session机制的实现规范接口，具体实现是由Web服务器的提供商执行。


# sessionId
>  sessionId是一个不会重复也不易被找到规律以仿造的字符串



如果客户端请求包含sessionId，则服务器根据 sessionId 检索 session 使用
如果客户端请求不包含或检索不到，则为客户端创建session和 sessionId


## sessionId传递方式
* Cookie方式
  服务器分配的 sessionId，作为Cookie发给浏览器保存。再次发送HTTP请求时，浏览器      将Cookie随请求一起发送，服务器根据 sessionId找到对应的HttpSession对象。
* URL重写
  由于Cookie可以被人为禁止，所以可以采用URL重写的技术
 * 作为URL路径的附加信息
 * 作为查询字符串附加在URL后面