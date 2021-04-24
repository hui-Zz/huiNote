



 object

 # 别名映射->实体类：resultClass

 ```xml
 < select  id = "selectAll"  resultClass = "AppLog" >
     select
       ID  as id ,
       TYPE  as type ,
       DESCR  as descr
     from APP_LOG
     where ID = #id#
 </ select >

 List  list =  sqlMapper .queryForList( "selectAll" );
 for  ( int  i = 0; i < list.size(); i ) {
     AppLog log = (AppLog) list.get(i);
    //add your code here;
 }
 ```

 # 别名映射->Map类：resultClass

 ```xml
 < select  id = "selectAll"  resultClass = "java.util.HashMap" >
     select
       ID  as id ,
       TYPE  as type ,
       DESCR  as descr
     from APP_LOG
     where ID = #id#
 </ select >

 List  list =  sqlMapper .queryForList( "selectAll" );
 for  ( int  i = 0; i < list.size(); i ) {
      Map  map = ( Map ) list.get(i);
     String id = (String) map.get( "id" );
     String type = (String) map.get( "type" );
     String descr = (String) map.get( "descr" );
    //add your code here;
 }
 ```

 # 显式映射->实体类：resultMap

 ```xml
 < resultMap  id = "AppLogResult"  class = "AppLog" >
      < result  property = "id"  column = "ID" />
      < result  property = "type"  column = "Type" />
      < result  property = "descr"  column = "DESCR" />    
 </ resultMap >
 < select  id = "selectAll"  resultMap = "AppLogResult" >
     select * from APP_LOG
 </ select >

 List  list =  sqlMapper .queryForList( "selectAll" );
 for  ( int  i = 0; i < list.size(); i ) {
     AppLog log = (AppLog) list.get(i);
    //add your code here;
 }
 ```

 # 显式映射->Map类：resultMap

 ```xml
      < resultMap  id = "map-result"  class = "java.util.HashMap" >
         < result  property = "id"  column = "ID" />
      < result  property = "type"  column = "Type" />
      < result  property = "descr"  column = "DESCR" />
      </ resultMap >
 < select  id = "selectAll2"  resultMap = "map-result" >
     select * from APP_LOG
 </ select >

 List list = sqlMapper.queryForList("selectAll2");
        for (int i = 0; i < list.size(); i ) {
            Map map = (Map) list.get(i);
            String id = (String) map.get("id");
            String type = (String) map.get("type");
            String descr = (String) map.get("descr");       
        }
 ```

 # 无映射

 ```xml
 < select  id = "selectAll3"  resultClass = "java.util.HashMap" >
     select * from APP_LOG
 </ select >

 List list = sqlMapper.queryForList("selectAll3");
 for (int i = 0; i < list.size(); i ) {
     Map map = (Map) list.get(i);
     String id = (String) map.get("ID");
     String type = (String) map.get("TYPE");
     String descr = (String) map.get("DESCR");
 }
 ```

xml
 # 返回xml

 ```xml
 < select  id = "selectxml"  parameterClass = "java.lang.String"  resultClass = "xml"  xmlResultName = "log" >
     select
       ID as id,
       TYPE as type,
       DESCR as descr
     from APP_LOG
     where ID = #id#
 </ select >

 String o=(String)  sqlMapper .queryForObject( "selectxml" , id);
 System. out .println(o);
 ```








Lambert  2010年10月20日21:48:23

--------------------------------------------------------------------------------

1 对于返回的对象，如果是普通类如HashMap、String、java.lang.Integer等的，返回直接

   写 resultClass，如果是返回一个对象（pojo bean）的则要成resultMap

2 对于Map类型的返回，返回要写成java.util.HashMap

3 对于xml返回的情况不熟悉,估计用的情况也不多吧