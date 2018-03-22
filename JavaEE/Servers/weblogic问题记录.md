# The requested attribute is not exposed through JMX: setCluster
**解决：WebLogic-环境-服务器-配置-添加AdminServer**

# Unable to create Provider
~~描述：Tomcat正常，WebLogic异常~~
```  javax.xml.ws.WebServiceException: Unable to create Provider: weblogic.wsee.jaxws.spi.WLSProvider cannot be cast to javax.xml.ws.spi.Provider ```
**解决：JAR包兼容问题**


# 缓存问题
**解决：**
1. 登录WebLogic的管理Console，停止并删除应用；
2. 停止WebLogic；
3. 删除域目录中的servers\XXXServer\cache和servers\XXXServer\tmp两个目录；
4. 重新启动WebLogic；
5. 部署新版应用。
>  停止并删除应用；
在servers\XXXServer\tmp\_WL_user目录中找到你的应用的相应目录，然后删掉它；
部署新版应用。


# 回滚更新操作问题
~~ 描述：直接回滚旧版项目文件，重启Weblogic~~
*原因：Weblogic回滚项目文件修改时间更旧，Weblogic重启不会自动回滚部署*
**解决：在Weblogic管理页面中手动删除回滚项目文件**

