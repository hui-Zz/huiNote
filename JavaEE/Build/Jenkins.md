# Jenkins

1. Unlock Jenkins

   `D:\Program Files (x86)\Jenkins\secrets\initialAdminPassword`

2. 安装流程

3. 设置管理员密码

4. 安装Java项目需要插件：

   - Maven Integration
   - SSH
   - Deploy to container

5. 构建Maven项目

6. 设置JDK环境

7. 设置Tomcat

   ```ini
     <role rolename="manager-gui"/>
     <role rolename="manager-script"/>
     <role rolename="manager-jmx"/>
     <role rolename="manager-status"/>
     <role rolename="admin-gui"/>
     <role rolename="admin-script"/>
     <user username="admin" password="admin" roles="manager-gui,manager-script,manager-jmx,manager-status,admin-gui,admin-script"/>
   ```

   