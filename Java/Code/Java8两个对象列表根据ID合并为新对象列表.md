
```java
// 两个对象列表根据ID合并为新对象列表
List<对象3> 结果对象列表3 = 对象列表1.stream()
    .filter(Objects::nonNull)
    .map(e -> 对象列表2.stream()
         .filter(r -> StringUtils.equals(e.getId(), r.getId()))
         .findFirst().map(r -> {
             对象3 对象3 = new 对象3();
             BeanUtils.copyProperties(e, 对象3);
             对象3.set对象2(r);
             return 对象3;
         }).orElseGet(() -> {
             return null;
         })
    ).filter(Objects::nonNull).collect(Collectors.toList());
```

