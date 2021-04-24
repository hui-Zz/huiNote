# 1. ` LocalDataSourceJobStore.findFailedInstances(3334) | This scheduler instance (XP1415841888986) is still active but was recovered by another instance in the cluster. This may cause inconsistent behavior. `
> 时间不同步问题



# 2 . ` net.sf.json.JSONException: A JSONObject text must begin with '{' at character 0 of `
> JSONObject 解析错误



# 3 . ` java.lang.NullPointerException ` Java空指针错误， Action层无注解调用DAO层方法，Spring注解不会生效
> 都采用注解


# 4 . ` Failed to start component [StandardEngine[Catalina].StandardHost[localhost].StandardContext[]] `
> jar包导入错误


# 5 . `  无效的列类型: 1111 `

MyBatis 插入NULL空值时，无法进行转换，需要指定jdbcType（ iBatis不需要）
> `  #{id,jdbcType= VARCHAR }, #{num,jdbcType=NUMERIC},  `


# 6 . ` org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.InternalError: Can't connect to X11 window server using 'localhost:12.0' as the value of the DISPLAY variable. `
> 在启动start.ini中加入 ` -Djava.awt.headless=true`


# 7 . Could not roll back JDBC transaction ; nested exception is java.sql.SQLException: Connection is closed!;
> 数据库连接超时，导致回滚失败


# 8.  svn: File is out of date
> 删除文件内容->还原->更新->提交


# 9. `  org.springframework.web.util.NestedServletException: Handler processing failed; nested exception is java.lang.NoSuchMethodError: com.scm.modules.goods.service.BrandService.get(Ljava/lang/String;)Lcom/scm/modules/goods/entity/Brand; `
> 解决方法：引入dubbo jar包时将依赖的spring jar包排除（如问题依旧Spring版本需要一致）
```xml
        <!--dubbo-->

        <dependency>

            <groupId>com.alibaba</groupId>

            <artifactId>dubbo</artifactId>

            <version>${dubbo.version}</version>

            <exclusions>

                <exclusion>

                    <groupId>org.springframework</groupId>

                    <artifactId>spring</artifactId>

                </exclusion>

            </exclusions>

        </dependency>

```


# 10. ` Document root element "beans", must match DOCTYPE root "null" `
因为spring 1.x 使用DOCTYPE，而2.x以上是用schema写法
> 解决方法两种：
1、解决spring版本不统一的情况：如xfire自带了spring1.2.6会与项目spring冲突
2、统一根据spring版本配置写法


