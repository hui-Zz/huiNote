```java
public static void testMapVoid () {
       Map map = new HashMap();
       map.put("a", "a1");
       map.put("b", "b1");
       map.put("c", "c1");


       List listKey = new ArrayList();
       List listValue = new ArrayList();
       Iterator it = map.keySet().iterator();
       while (it.hasNext()) {
           String key = it.next().toString();
           listKey.add(key);
           listValue.add(map.get(key));
       }
       System.out.println("Convert Finished !");


       for(int i =0 ;i<listKey.size();i++){
           System.out.print("Key :"+listKey.get(i));
           System.out.println("Value :"+listValue.get(i));
       }
   }
```
