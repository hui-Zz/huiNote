[TOC]

> 官方入库教程：https://spring.io/guides/gs/spring-boot/#initial

# Spring Boot 搭建

1. 登录网站 https://start.spring.io/

2. 选择项目类型、填写项目信息、选择需要的依赖架包、下载项目zip文件
3. 打开IDEA、导入项目、导入Maven架包
4. 运行Application类即可

# Spring Boot Web

- Spring Boot默认扫描目录为

- ```
  └── src
      └── main
          └── java
              └── com
                  └── 项目名
  ```

- 默认在项目名的目录外文件均不扫描，会报错 `Whitelabel Error Page 404`

- 可在Application类注解扫描目录 `@ComponentScan("com")`来改变默认扫描目录

- > 在JUnitTest时，项目名路径外仍无法正确识别，无法正常测试

# Spring Boot 热部署

```xml
<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-devtools</artifactId>
        <optional>true</optional>
    </dependency>
<dependencies>
<build>
	<plugins>
		<plugin>
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-maven-plugin</artifactId>
			<configuration>
				<fork>true</fork>
			</configuration>
		</plugin>
	</plugins>
</build>
```

## Spring Boot 热部署IDEA设置

+ File-Settings-Compiler-勾选`Build Project automatically`
+ ctrl + shift + alt + /,选择Registry,勾上 `Compiler autoMake allow when app running`
+ 运行/调试配置：
  + On 'update' action:`Hot swap classes and update trigger file if failed`
  + On frame deactivation:`Update classes and resources`

