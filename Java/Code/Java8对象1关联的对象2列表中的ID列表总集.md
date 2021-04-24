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

