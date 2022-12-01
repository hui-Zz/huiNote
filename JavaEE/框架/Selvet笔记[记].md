# Servlet应用

>  A servlet is a Java technology-based Web component, managed by a container, that generates dynamic content.
**Servlet是一个基于Java技术的Web组件，由容器，产生动态内容管理。**


* 提高可维护性。
* 分工明确
使用Servlet将作为数据显示的JSP页面与作为处理业务逻辑的JavaBean分离，使它们各自发生变化时，彼此不再相互影响。


```java
public class Index extends HttpServlet {
  public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
    //获取对象数据
    Student hb = new StudentBizImpl();
    List<Student> result = hb.getAllStudent();
    //获取页面数据
    String name = request.getParameter("name");
    //获取配置信息
    String config = this.getInitParameter("paramName");
    //传递数据
    request.setAttribute("result",result);
    //页面跳转
    //RequestDispatcher rd = request.getRequestDispatcher("");
    if (null != name) {
      request.getRequestDispatcher("/page/student_list.jsp")
        .forward(request,response);
    }else{
      request.setAttribute("message","用户错误");
      request.sendRedirect("login.jsp");
    }
  }
}
```
## 页面跳转控制
* forward转发：
URL地址不变，能共享请求数据
> 注意转发的url链接为请求时的当前路径，所以url页面的链接应采用绝对路径！

*  sendRedirect重定向：
能转发其他服务器应用，URL地址改变，不能共享请求数据
> POST请求会提交数据到服务器，GET是取得数据。
对于POST请求建议使用重定向。


## 值传递
* 字节流传递任何类型数据
* 字符流只能传递字符型数据