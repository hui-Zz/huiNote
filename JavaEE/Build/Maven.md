# Maven 环境
## Maven 3
* Maven 3.3.1 - 3.3.3 : Java 7 * Maven 3.2.1 - 3.2.5 : Java 6
* Maven 3.1.1 - : Java 5


## Maven 2
* Maven 2.2.0 - 2.2.1 : Java 5
* Maven 2.1.0 - : Java 1.4


` 添加Maven路径为环境变量%M2_HOME% `
` 追加Path路径 %M2_HOME%\bin;  `


# Maven 命令

* ` mvn -version ` 查询版本
* `  mvn dependency:list  `查询 已解析依赖列表
* `  mvn dependency:tree  `查询 已解析依赖树

1.  ` mvn -clean `清理输出目录target

2.  ` mvn -compile `编译项目主代码

3.  ` mvn -test `项目运行测试

4.  ` mvn -package `项目打包

5. ` mvn -install `项目安装


## 安装本地架包：
` install:install-file -DgroupId=com.oracle -DartifactId=ojdbc14 -Dversion=10.1.0.2.0 -Dpackaging=jar -Dfile=ojdbc14-10.1.0.2.0.jar `


## 生成项目：
* Maven 3 : ` mvn archetype:generate `
* Maven 2 : ` mvn org.apache.maven.plugins:maven-archetype-plugin:2.0-alpha-5:generate `


# 依赖范围
依赖范围 <br> （Scope） |  对于编译<br> classpath有效 |  对于测试 <br> classpath有效 |  对于运行时 <br> classpath有效 | 例子
------------------|-----------------------|-----------------------|--------------------------|------
compile  | Y | Y | Y | spring-core
test     | - | Y | - | JUnit
provided | Y | Y | - | servlet-api
runtime  | - | Y | Y | JDBC 驱动实现
system   | Y | Y | - |  本地的，Maven 仓库之外的 类库文件
