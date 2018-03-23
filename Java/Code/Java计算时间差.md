```java
/**
 * 测试类
 */
public static void main(String[] args) throws ParseException {
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
	int month = getMonth(sdf.parse("2015.03.01"), sdf.parse("2016.02.29"));
	System.out.println(month);
	System.out.println(checkTwoDay(sdf.parse("2015.03.01"), sdf.parse("2016.02.29"), 365));
}
```

# 判断两个时间间隔是否大于指定天数

```java
/**

 * 判断两个时间间隔是否大于指定天数
 */
public static boolean checkTwoDay(Date beginDate, Date endDate, int day) {
	Calendar c1 = Calendar.getInstance();
	Calendar c2 = Calendar.getInstance();
	c1.setTime(beginDate);
	c2.setTime(endDate);
	c1.add(Calendar.DAY_OF_YEAR, day);
	if (c1.equals(c2)) {
		return false;
	}
	if (c1.after(c2)) {
		return false;
	}
	return true;
}
```

# 计算两个时间月份差

```java
/**
 * 计算两个时间月份差
 */
public static int getMonth(Date startD, Date endD) {
	Calendar startC = Calendar.getInstance();
	Calendar endC = Calendar.getInstance();
	startC.setTime(startD);
	endC.setTime(endD);
	if (endC.equals(startC) || startC.after(endC)) { // 等于或大于结束日期
		return 0;
	}
	int dayOfMonth = 0;
	if (endC.get(Calendar.DAY_OF_MONTH) < startC.get(Calendar.DAY_OF_MONTH)) {
		dayOfMonth = 1;
	}
	if (endC.get(Calendar.YEAR) > startC.get(Calendar.YEAR)) {
		return ((endC.get(Calendar.YEAR) - startC.get(Calendar.YEAR)) 
		* 12 + endC.get(Calendar.MONTH) - dayOfMonth)
		- startC.get(Calendar.MONTH);
	} else {
		return endC.get(Calendar.MONTH) - startC.get(Calendar.MONTH) - dayOfMonth;
	}
}
```