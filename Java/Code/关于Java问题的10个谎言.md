下面的这些都算是比较高级的问题了，面试中一般也很少问到，因为它们可能会把面试者拒之门外。不过你可以自己找个时间来实践一下。



**1.System.exit(0)会跳过finally块的执行**


System.setSecurityManager(new SecurityManager() {
     @Override
     public void checkExit(int status) {
        throw new ThreadDeath();
     }
  });
  try {
     System.exit(0);
  } finally {
     System.out.println("In the finally block");
  }



这段代码为什么会输出In the finally block？为什么没有打印出堆栈跟踪信息呢？



**2. String str = "Hello”;其中str是一个字符串对象**



跟C++不同的是，Java里的变量要么是基础类型，要么是引用。变量不可能是对象。这意味着像这样的表达式：


String str = "Hello";
  String text = "Bye";
  str == text; // 比较两个引用，而不是内容
  str = text; // 把text的引用赋值给str



大多数情况下其实没有太大的区别，不过这么写容易引起困惑。


final StringBuilder sb = new StringBuidler();
  sb.append("Hello"); // 这个引用是final类型的，而不是这个实例。
  method(sb); // 可以通过方法来修改这个实例，不过这个变量是无法修改的



**3、Java的内存泄露跟C++程序员理解的一样**



内存泄露在维基百科上的定义是”在计算机科学中，如果程序没有正确地管理好内存分配 ，就会出现内存泄露。在面向对象编程中，如果内存中的一个对象无法在代码中访问不到的话，这就是内存泄露。”



不过在Java中，对象总是可达的，那些没有强引用的对象会被清除掉。内存泄露这个术语在Java中意味着：内存中存在着不该存在的对象，通常来说是有些不再使用的资源却仍存储在集合中。



**4、多线程编程很难**



如果你没有经验的话，多线程编程的确很难。如果你只是把一堆代码扔到一堆线程中去执行，那样出了问题根本没法解决，只能是一团糟。但如果你能进行线程的按需分配，控制线程间的交互，使用一些团队中的成员也能明白的简单的模式，问题就变得简单多了。当然还有一个挑战就是你得让团队中的所有人都遵循你的这个规则:-)



**5、不用关心不同操作间性能的不同**



最近听说有个问题，它涉及到了整数的相加，内存访问，取模，以及输出到控制台。尽管在这些操作里面，每一个都比前面一个要慢一个数量级，但这哥们就是想优化这里面最快的操作，加法，还用了些更昂贵的操作来替换它。如果你真的想要优化性能，你最好用一个廉价的操作来替换掉那些昂贵的操作，如果你的瓶颈在硬件这块，比方说要从硬盘里面读取大量的文件，修改软件的代码是没啥用了，因为问题根本就不在这。



**6、随机数都是随机的**

一组特定的随机数就像是某种模式的数字。很多人都不相信随机数生成器生成的数字其实是不随机的。



**7、应该尽量避免使用浮点数，因为它们会产生随机错误**



对于同一个操作而言，浮点数每次都会产生同样的错误。错误是可预测的，因此也是可控的。如果你清楚你要做的事情是什么，并且坚持使用一些简单的规则，比如说对结果进行舍入操作，那么浮点数出的错也不会比BigDecimal要多，除此之外它的可读性更强，而且效率快了百倍以上（同时产生的垃圾对象也更少了）。



**8、时区是永恒不变的**



之所以会有这个误解是因为，随着时间的变化，时区是在改变的。这意味着欧洲/伦敦在新纪元的时候是1970/1/1 01:00而不是00:00，为什么？因为伦敦在1968年到1971年这两年间的时间内使用的是夏令时。



在过去的这些年里面，还有不少时区也发生了变化。莫斯科以前是东三区（GMT+3），现在是东四区（GMT+4）（从2011年3月27日开始）。如果你看下2010年的时间，你会发现它是东三区而不是东四区。



还有些事你听起来或许会感觉很意外：

1721年的瑞典的2月有30天。

1751年英格兰的第一天是3月25日，和法国相比差了11天。

美国采用公历纪年后，它往前追溯了上百年，这样原先记录的那些日期都可以用两种日历来进行表示（通常为了更精确会同时提供两个日期）。比如乔治华盛顿的生日从1731年2月11变成了1732年2月22。



**9、当你在线程中读取一个非volatile变量时，你最终能读取它更新的那个值。**



前几天这个问题在StackOverflow上出现过两回了。一般来说，JIT编译器优化代码的时候会将这个线程没有修改到的非volatile类型的字段进行内联。一旦这个代码被编译了（你可以通过-XX:+PrintCompilation看到），你在另一个线程对这个字段进行的修改它很可能就永远也看不到了。加上随机的同步块或者打印语句可以推迟这个优化的执行，或者扰乱JIT编译器，让它不去执行这个优化。



**10、Java面试题都是正确的**



有很多Java面试题要么是过时了（超过10年没有更新了，和现在的Java版本已经脱节），要么是误导大家的，甚至可能是错的。不幸的是这些答案都没有检查过就被到处传来传去。



来源： <http://bbs.itcast.cn/thread-27756-1-1.html> 