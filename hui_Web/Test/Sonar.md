# SonarQube

## 环境

1. jdk1.8
2. MySql 5.7
3. sonarqube-6.7.4.zip：http://www.sonarqube.org/downloads/

## 配置

- \conf\sonar.properties文件

```ini
sonar.jdbc.username=root
sonar.jdbc.password=123456

sonar.jdbc.url=jdbc:mysql://地址:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance&useSSL=false
```

- \conf\wrapper.conf

```ini
wrapper.java.command=D:/Users/OneDrive/Apps/Code/Java/jdk1.8.0_121/bin/java
```

- 访问http://localhost:9000 admin admin
  - 配置-应用市场-搜索chinese Pack-安装中文语言包
- 环境变量
  - SONAR_RUNNER_HOME：D:\Program Files\sonarqube-6.7.4
  - Path：%SONAR_RUNNER_HOME%\bin

## 使用

- 项目JDK切换为Java1.8

- Maven添加sonar-scanner插件，修改项目pom.xml

   - ```xml
      <plugin>
          <groupId>org.sonarsource.scanner.maven</groupId>
          <artifactId>sonar-maven-plugin</artifactId>
          <version>3.3.0.603</version>
      </plugin>
      ```

- 执行Maven命令：` sonar:sonar`

