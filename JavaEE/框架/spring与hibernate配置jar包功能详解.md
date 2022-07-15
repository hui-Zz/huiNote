# 了解这些内容有助于我们减小发布包的大小，同时也可以增加对Spring架构的了解。

**spring.jar** 是包含有完整发布模块的单个jar 包。但是不包括mock.jar, aspects.jar, spring-portlet.jar, and spring-hibernate2.jar。

**spring-src.zip**就是所有的源代码压缩包。

除了spring.jar 文件，Spring 还包括有其它21 个独立的jar 包，各自包含着对应的Spring组件，用户可以根据自己的需要来选择组合自己的jar 包，而不必引入整个spring.jar 的所有类文件。

**spring-core.jar**
这个jar 文件包含Spring 框架基本的核心工具类。Spring 其它组件要都要使用到这个包里的类，是其它组件的基本核心，当然你也可以在自己的应用系统中使用这些工具类。外部依赖Commons Logging， (Log4J)。

**spring-beans.jar**
这个jar 文件是所有应用都要用到的，它包含访问配置文件、创建和管理bean 以及进行Inversion of Control / Dependency Injection（IoC/DI）操作相关的所有类。如果应用只需基本的IoC/DI 支持，引入spring-core.jar 及spring-beans.jar 文件就可以了。外部依赖spring-core，(CGLIB)。

**spring-aop.jar**
这个jar 文件包含在应用中使用Spring 的AOP 特性时所需的类和源码级元数据支持。使用基于AOP 的Spring特性，如声明型事务管理（Declarative Transaction Management），也要在应用里包含这个jar包。外部依赖spring-core， (spring-beans，AOP Alliance， CGLIB，Commons Attributes)。

**spring-context.jar**
这个jar 文件为Spring 核心提供了大量扩展。可以找到使用Spring ApplicationContext特性时所需的全部类，JDNI 所需的全部类，instrumentation组件以及校验Validation 方面的相关类。外部依赖spring-beans, (spring-aop)。

**spring-dao.jar**
这个jar 文件包含Spring DAO、Spring Transaction 进行数据访问的所有类。为了使用声明型事务支持，还需在自己的应用里包含spring-aop.jar。外部依赖spring-core，(spring-aop， spring-context， JTA API)。

**spring-jdbc.jar**
这个jar 文件包含对Spring 对JDBC 数据访问进行封装的所有类。外部依赖spring-beans，spring-dao。

**spring-support.jar**
这个jar 文件包含支持UI模版（Velocity，FreeMarker，JasperReports），邮件服务，脚本服务(JRuby)，缓存Cache（EHCache），任务计划Scheduling（uartz）方面的类。外部依赖spring-context, (spring-jdbc, Velocity, FreeMarker, JasperReports, BSH, Groovy,JRuby, Quartz, EHCache)

**spring-web.jar**
这个jar 文件包含Web 应用开发时，用到Spring 框架时所需的核心类，包括自动载入Web Application Context 特性的类、Struts 与JSF 集成类、文件上传的支持类、Filter 类和大量工具辅助类。外部依赖spring-context, Servlet API, (JSP API, JSTL, Commons FileUpload, COS)。

**spring-webmvc.jar**
这个jar 文件包含Spring MVC 框架相关的所有类。包括框架的Servlets，Web MVC框架，控制器和视图支持。当然，如果你的应用使用了独立的MVC 框架，则无需这个JAR 文件里的任何类。外部依赖spring-web, (spring-support，Tiles，iText，POI)。

**spring-portlet.jar**
spring自己实现的一个类似Spring MVC的框架。包括一个MVC框架和控制器。外部依赖spring-web， Portlet API，(spring-webmvc)。

**spring-struts.jar**
Struts框架支持，可以更方便更容易的集成Struts框架。外部依赖spring-web，Struts。

**spring-remoting.jar**
这个jar 文件包含支持EJB、远程调用Remoting（RMI、Hessian、Burlap、Http Invoker、JAX-RPC）方面的类。外部依赖spring-aop， (spring-context，spring-web，Hessian，Burlap，JAX-RPC，EJB API)。

**spring-jmx.jar**
这个jar包提供了对JMX 1.0/1.2的支持类。外部依赖spring-beans，spring-aop， JMX API。

**spring-jms.jar**
这个jar包提供了对JMS 1.0.2/1.1的支持类。外部依赖spring-beans，spring-dao，JMS API。

**spring-jca.jar**
对JCA 1.0的支持。外部依赖spring-beans，spring-dao， JCA API。

**spring-jdo.jar**
对JDO 1.0/2.0的支持。外部依赖spring-jdbc， JDO API， (spring-web)。

**spring-jpa.jar**
对JPA 1.0的支持。外部依赖spring-jdbc， JPA API， (spring-web)。

**spring-hibernate2.jar**
对Hibernate 2.1的支持，已经不建议使用。外部依赖spring-jdbc，Hibernate2，(spring-web)。

**spring-hibernate3.jar**
对Hibernate 3.0/3.1/3.2的支持。外部依赖spring-jdbc，Hibernate3，(spring-web)。

**spring-toplink.jar**
对TopLink框架的支持。外部依赖spring-jdbc，TopLink。

**spring-ibatis.jar**
对iBATIS SQL Maps的支持。外部依赖spring-jdbc，iBATIS SQL Maps。

另外的两个包。

**spring-mock.jar**
这个jar 文件包含Spring 一整套mock 类来辅助应用的测试。Spring 测试套件使用了其中大量mock 类，这样测试就更加简单。模拟HttpServletRequest 和HttpServletResponse 类在Web 应用单元测试是很方便的。并且提供了对JUnit的支持。外部依赖spring-core。

**spring-aspects.jar**
提供对AspectJ的支持，以便可以方便的将面向方面的功能集成进IDE中，比如Eclipse AJDT。外部依赖。WEAVER JARS (dist/weavers)说明。

**spring-agent.jar**
Spring的InstrumentationSavingAgent (为InstrumentationLoadTimeWeaver)，一个设备代理包，可以参考JDK1.5的Instrumentation功能获得更多信息。外部依赖none (for use at JVM startup: "-javaagent:spring-agent.jar")。

**spring-tomcat-weaver.jar**
扩展Tomcat的ClassLoader，使其可以使用instrumentation（设备）类。
外部依赖none (for deployment into Tomcat's "server/lib" directory)。如果需要使用JSP语言作为Spring's web MVC tags的参数，则需要JSP 2.0的支持。或者选择Jakarta的JSTL (standard.jar)。

如何选择这些发布包，决定选用哪些发布包其实相当简单。如果你正在构建Web 应用并将全程使用

Spring，那么最好就使用单个全部的spring.jar 文件；如果你的应用仅仅用到简单的Inversion of Control / Dependency Injection（IoC/DI）容器，那么只需spring-core.jar与spring-beans.jar 即可；如果你对发布的大小要求很高，那么就得精挑细选了，只取包含自己所需特性的jar 文件了。采用独立的发布包你可以避免包含自己的应用不需要的全部类。
当然你可以采用其它的一些工具来设法令整个应用包变小，节省空间的重点在于准确地找出自己所需的

Spring 依赖类，然后合并所需的类与包就可以了。Eclispe 有个插件叫ClassPathHelper 可以帮你找找所依赖的类

# Hibernate一共包括了23个jar包，令人眼花缭乱。下载Hibernate，例如2.0.3稳定版本，解压缩，可以看到一个hibernate2.jar和lib目录下有22个jar包：

**hibernate2.jar:** 
　　Hibernate的库，没有什么可说的，必须使用的jar包

**cglib-asm.jar:** 
　　CGLIB库，Hibernate用它来实现PO字节码的动态生成，非常核心的库，必须使用的jar包

**dom4j.jar:** 
　　dom4j是一个Java的XML API，类似于jdom，用来读写XML文件的。dom4j是一个非常非常优秀的Java XML API，具有性能优异、功能强大和极端易用使用的特点，同时它也是一个开放源代码的软件，可以在SourceForge上找到它。在IBM developerWorks上面可以找到一篇文章，对主流的Java XML API进行的性能、功能和易用性的评测，dom4j无论在那个方面都是非常出色的。我早在将近两年之前就开始使用dom4j，直到现在。如今你可以看到越来越多的Java软件都在使用dom4j来读写XML，特别值得一提的是连Sun的JAXM也在用dom4j。这是必须使用的jar包，Hibernate用它来读写配置文件。

**odmg.jar:** 
　　ODMG是一个ORM的规范，Hibernate实现了ODMG规范，这是一个核心的库，必须使用的jar包。

**commons-collections.jar：** 
　　Apache Commons包中的一个，包含了一些Apache开发的集合类，功能比java.util.*强大。必须使用的jar包。

**commons-beanutils.jar：** 
　　Apache Commons包中的一个，包含了一些Bean工具类类。必须使用的jar包。

**commons-lang.jar:** 
　　Apache Commons包中的一个，包含了一些数据类型工具类，是java.lang.*的扩展。必须使用的jar包。

**commons-logging.jar:** 
　　Apache Commons包中的一个，包含了日志功能，必须使用的jar包。这个包本身包含了一个Simple Logger，但是功能很弱。在运行的时候它会先在CLASSPATH找log4j，如果有，就使用log4j，如果没有，就找JDK1.4带的java.util.logging，如果也找不到就用Simple Logger。commons-logging.jar的出现是一个历史的的遗留的遗憾，当初Apache极力游说Sun把log4j加入JDK1.4，然而JDK1.4项目小组已经接近发布JDK1.4产品的时间了，因此拒绝了Apache的要求，使用自己的java.util.logging，这个包的功能比log4j差的很远，性能也一般。

后来Apache就开发出来了commons-logging.jar用来兼容两个logger。因此用commons-logging.jar写的log程序，底层的Logger是可以切换的，你可以选择log4j，java.util.logging或者它自带的Simple Logger。不过我仍然强烈建议使用log4j，因为log4j性能很高，log输出信息时间几乎等于System.out，而处理一条log平均只需要5us。你可以在Hibernate的src目录下找到Hibernate已经为你准备好了的log4j的配置文件，你只需要到Apache 网站去下载log4j就可以了。commons-logging.jar也是必须的jar包。

使用Hibernate必须的jar包就是以上的这几个，剩下的都是可选的。

**ant.jar:** 
　　Ant编译工具的jar包，用来编译Hibernate源代码的。如果你不准备修改和编译Hibernate源代码，那么就没有什么用，可选的jar包

**optional.jar：** 
　　Ant的一个辅助包。

**c3p0.jar：** 
　　C3PO是一个数据库连接池，Hibernate可以配置为使用C3PO连接池。如果你准备用这个连接池，就需要这个jar包。

**proxool.jar：** 
　　也是一个连接池，同上。

**commons-pool.jar, commons-dbcp.jar:** 
　　DBCP数据库连接池，Apache的Jakarta组织开发的，Tomcat4的连接池也是DBCP。实际上Hibernate自己也实现了一个非常非常简单的数据库连接池，加上上面3个，你实际上可以在Hibernate上选择4种不同的数据库连接池，选择哪一个看个人的偏好，不过DBCP可能更通用一些。另外强调一点，如果在EJB中使用Hibernate，一定要用App Server的连接池，不要用以上4种连接池，否则容器管理事务不起作用。

**connector.jar:** 
　　JCA 规范，如果你在App Server上把Hibernate配置为Connector的话，就需要这个jar。不过实际上一般App Server肯定会带上这个包，所以实际上是多余的包。

**jaas.jar:** 
　　JAAS是用来进行权限验证的，已经包含在JDK1.4里面了。所以实际上是多余的包。

**jcs.jar：** 
　　如果你准备在Hibernate中使用JCS的话，那么必须包括它，否则就不用。

**jdbc2_0-stdext.jar:** 
　　JDBC2.0的扩展包，一般来说数据库连接池会用上它。不过App Server都会带上，所以也是多余的。

**jta.jar：** 
　　JTA规范，当Hibernate使用JTA的时候需要，不过App Server都会带上，所以也是多余的。

**junit.jar:** 
　　Junit包，当你运行Hibernate自带的测试代码的时候需要，否则就不用。

**xalan.jar, xerces.jar, xml-apis.jar:** 
　　Xerces是XML解析器，Xalan是格式化器，xml-apis实际上是JAXP。一般App Server都会带上，JDK1.4也包含了解析器，不过不是Xerces，是Crimson，效率比较差，不过Hibernate用XML只不过是读取配置文件，性能没什么紧要的，所以也是多余的。





来源： <[spring与hibernate配置jar包功能详解 - 施杨 - 博客园](http://www.cnblogs.com/shiyangxt/archive/2009/03/10/1407968.html)>

 