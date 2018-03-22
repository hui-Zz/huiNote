```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:util="http://www.springframework.org/schema/util"
xmlns:p="http://www.springframework.org/schema/p"
xmlns:aop="http://www.springframework.org/schema/aop"
xmlns:tx="http://www.springframework.org/schema/tx"
xmlns:context="http://www.springframework.org/schema/context"
xmlns:mvc="http://www.springframework.org/schema/mvc"
xsi:schemaLocation="
http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-4.2.xsd
http://www.springframework.org/schema/util http://www.springframework.org/schema/util/spring-util-4.2.xsd
http://www.springframework.org/schema/tx http://www.springframework.org/schema/tx/spring-tx-4.2.xsd
http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop-4.2.xsd
http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context-4.2.xsd
http://www.springframework.org/schema/mvc http://www.springframework.org/schema/mvc/spring-mvc-4.2.xsd">

```
```xml
<!-- 单方法例子 -->
<bean name="/test1/helloworld" class="com.web.controller.HelloWorldController"></bean>

<!-- 多方法调用 -->
<bean name="/test1/multi" class="com.web.controller.MultiController">
<property name="methodNameResolver">
<ref bean="paramMethodResolver" />
</property>
</bean>
<bean id="paramMethodResolver" class="org.springframework.web.servlet.mvc.multiaction.ParameterMethodNameResolver">
<!-- 请求后缀 -->
<property name="paramName" value="do"></property>
</bean>

```
```xml
<!-- 注解扫描包 -->
<context:component-scan base-package="com.web.controller" />

<!-- 开启注解 -->
<mvc:annotation-driven/>

<!-- Spring<3.0 -->

<bean class="org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter"></bean>
<bean class="org.springframework.web.servlet.mvc.annotation.DefaultAnnotationHandlerMapping"></bean>
```
```xml
<!-- 静态资源访问 -->
<mvc:resources location="/img/" mapping="/img/**"/>
<!-- 配置视图解析器 -->
<bean id="viewResolver" class="org.springframework.web.servlet.view.InternalResourceViewResolver">
<property name="prefix" value="/"></property>
<!-- 响应文件后缀 -->
<property name="suffix" value=".jsp"></property>
</bean>
</beans>
```