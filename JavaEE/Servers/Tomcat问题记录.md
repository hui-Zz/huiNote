
[TOC]
# 1. MyEclipse无法加入Tomcat

目录不全：[bin]、[conf]、[lib]、[logs]、[temp]、[webapps]、[work]


# 2. 常见缓存残留问题
- 项目清理：Eclipse——Project——Clean
- Tomcat项目清理： Servers —— Clean  ( Redeploy Servers Project )
- Tomcat页面缓存清理： Servers —— Clean Tomcat Work Directory ( Tomcat\work\Catalina\localhost\)


# 3.  ` Server Tomcat v7.0 Server at localhost failed to start.  `
Web.xml错误


# 4. 访问中文名文件
  1.  img标签的src属性做Encode
  2. 更改tomcat配置，添加URIEncoding为UTF-8
  3. 过滤器，过滤图片资源的解析


# 5. 文件名大小写敏感