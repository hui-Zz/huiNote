```xml
<web-app xmlns="http://java.sun.com/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
	http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
	version="3.0" metadata-complete="true">
	
    <!-- 描述信息 -->
	<display-name>SpringMVC</display-name>
	<servlet>
		<servlet-name>springMVC</servlet-name>
		<!-- 加载SpringMVC的servlet引用类 -->
		<servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
		<init-param>
			<!-- 加载SpringMVC配置文件路径 -->
			<param-name>contextConfigLocation</param-name>
			<param-value>classpath*:config/springMVC.xml</param-value>
		</init-param>
		<!-- 在启动时初始化这个Servlet -->
		<load-on-startup>1</load-on-startup>
	</servlet>
	<servlet-mapping>
		<servlet-name>springMVC</servlet-name>
		<!-- 默认拦截所有路径映射 -->
		<url-pattern>/</url-pattern>
	</servlet-mapping>

	<filter>
		<!-- 过滤器名称 -->
		<filter-name>encodingFilter</filter-name>
		<!-- 统一编码 -->
		<filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
		<init-param>
			<param-name>encoding</param-name>
			<param-value>UTF-8</param-value>
		</init-param>
		<init-param>
			<!-- 强制编码 -->
			<param-name>forceEncoding</param-name>
			<param-value>true</param-value>
		</init-param>
	</filter>
	<filter-mapping>
		<!-- 过滤所有请求 -->
		<filter-name>encodingFilter</filter-name>
		<url-pattern>/*</url-pattern>
	</filter-mapping>

	<!-- 欢迎页面 -->
	<welcome-file-list>
		<welcome-file>home.jsp</welcome-file>
	</welcome-file-list>
	<!-- 错误页面跳转设置 -->
	<!-- 403 禁止访问 -->
	<error-page>
		<error-code>403</error-code>
		<location>/error.jsp</location>
	</error-page>
	<!-- 404 访问的资源不存在 -->
	<error-page>
		<error-code>404</error-code>
		<location>/error.jsp</location>
	</error-page>
	<!-- 500 内部服务器错误 -->
	<error-page>
		<error-code>500</error-code>
		<location>/error.jsp</location>
	</error-page>
	<!-- 内部服务器错误 空指针异常 -->
	<error-page>
		<exception-type>java.lang.NullPointerException</exception-type>
		<location>/error.jsp</location>
	</error-page>
	<!-- 内部服务器错误 顶层父类异常，捕获所有未配置的异常 -->
	<error-page>
		<exception-type>java.lang.Exception</exception-type>
		<location>/error.jsp</location>
	</error-page>

</web-app>

```