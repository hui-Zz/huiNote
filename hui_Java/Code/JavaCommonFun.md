## 字符串

```java
public static String isStr(Object obj) {
    return (null == obj) ? "" : obj.toString().trim();
}
```

## 空白

```java
public static boolean isBlank(String str) {
    return (null == str || str.trim().replace("　", "").length() == 0) ? true : false;
}
```