```Java

	@Test
	public void updateEventUserR() {
		// 通过多用户UserIds和多执行者executorUserIds来生成创建对象列表
		Long eventId = 10l;
		Long[] userIds = {new Long(1), new Long(2), new Long(3)};
		Long[] executorUserIds = {new Long(2), new Long(3)};
		List<Long> userIdList = Arrays.asList(userIds);
		List<Long> executorUserIdList = Arrays.asList(executorUserIds);
		List<SlyxEventUserREntity> slyxEventUserREntityList = userIdList.stream()
				.filter(f -> ObjectUtils.isNotNull(f))
				.map(e -> executorUserIdList.stream().filter(executorUserId -> executorUserId.equals(e))
						.findFirst().map(executoruserId -> {
							return new SlyxEventUserREntity(eventId, e, e.equals(executoruserId), null, null);
						}).orElseGet(() -> {
							return new SlyxEventUserREntity(eventId, e, false, null, null);
						})
				).collect(Collectors.toList());
		JSONObject josn = new JSONObject();
		System.out.println(josn.toJSONString(slyxEventUserREntityList));
	}

```