```Java
// 获取每个事件关联的动态创建者ID列表
List<Long> dynamicCreateUserIdList = records.stream()
	.map(e -> {
				if (CollectionUtils.isNotEmpty(e.getEventDynamicDetailResponseList())) {
					return e.getEventDynamicDetailResponseList().stream()
							.map(DescribeEventAndDynamicPageByProjectIdResponse.EventDynamicDetailResponse::getCreateBy)
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

