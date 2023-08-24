# 两个对象列表根据ID合并为新对象列表
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

# 对象1关联的对象2列表中的ID列表总集
```java
// 获取每个对象1关联的对象2列表中的ID列表总集
List<Long> 结果ID列表总集 = 对象1.stream()
	.map(e -> {
				if (CollectionUtils.isNotEmpty(e.对象列表2())) {
					return e.对象列表2().stream()
							.map(对象2::getId)
							.collect(Collectors.toList());
				} else {
					return null;
				}
			}
	)
	.filter(Objects::nonNull)
	.flatMap(f -> f.stream())
	.collect(Collectors.toList());
```

# 根据对象列表中某个属性值进行去重

```java
List<ObjectName> objectList = objectList.stream()
				.collect(Collectors.collectingAndThen(Collectors.toCollection(
						// 利用 TreeSet 的排序去重构造函数来达到去重元素的目的
						// 根据firstName去重
						() -> new TreeSet<>(Comparator.comparing(ObjectName::getId))), ArrayList::new));
```



# 递归组装成树形父子结构

```java
// 组装成树形父子结构
List<ClassifyListVo> 父子对象列表 = voList.stream().filter(categoryEntity ->
        StrUtil.isBlank(categoryEntity.getParentId())
).map(root -> {
    root.setChildren(getChildrens(root, voList));
    return root;
}).collect(Collectors.toList());

/**
 * 递归组装子分类
 *
 * @param root
 * @param all
 */
private List<ClassifyListVo> getChildrens(ClassifyListVo root, List<ClassifyListVo> all) {
    List<ClassifyListVo> children = all.stream().filter(c -> {
        return StrUtil.isNotBlank(c.getParentId()) && StrUtil.equals(c.getParentId(), root.getId());
    }).map(c -> {
        c.setChildren(getChildrens(c, all));
        return c;
    }).collect(Collectors.toList());
    return children;
}
```

# 统计多层级对象列表中某个属性的总和

```java
父子对象列表.forEach(e -> {
        if (e.getParentId() == null && CollectionUtil.isNotEmpty(e.getChildren())) {
            long sum = e.getChildren().stream().mapToLong(ClassifyListVo::getMaterialCount)
                    .summaryStatistics().getSum();
            e.setMaterialCount(sum);
        }
    }
);
```

# 比较两个列表内容是否相同

```java
list1.sort(Comparator.comparing(String::hashCode));
list2.sort(Comparator.comparing(String::hashCode));
return list1.toString().equals(list2.toString());
```

