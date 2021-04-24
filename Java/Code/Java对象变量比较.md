```java
Compare c1 = new Compare();
Compare c2 = new Compare();
Field[] fields = c1.getClass().getDeclaredFields();
for (Field field : fields) {
  try{
    PropertyDescriptor pd = new PropertyDescriptor(field.getName(),c1.getClass());
    Method getMethod = pd.getReadMethod();
    Object o1 = getMethod.invoke(c2);
    Object o2 = getMethod.invoke(c1);
    if(!o1.equals(o2)){
      System.out.println("different");
    }
  }catch(Exception e) {
    e.printStackTrace();
  }
}
```
