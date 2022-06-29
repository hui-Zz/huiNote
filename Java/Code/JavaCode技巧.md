[TOC]

# 三元运算符：
```java
(expression) ? case1 : case2;
```


# if & for 代码简化：
```java
for(int i = 0;  null  !=  num && i < num; i++) {} 
```


# equals前后顺序导致是否空值异常：
```java
"".equals(var)
(null != var)
```


# 打印数组内容
```java
java.util.Arrays.toString(StrList ) 
```


# String.trim()能去掉'\u0000'至'\u0020'的所有字符


#  转义字符： "."、"|"、"*"、"+"


```java
String.split(\\|);  
```


# ArrayList.add(Object)添加是对象引用，在循环内会覆盖前面对象，应每次循环new对象。
