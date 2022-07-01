```sql


declare   @str   varchar(100)  
  set   @str=''     --要搜索的字符串  
   
  declare   @s   varchar(8000)  
  declare   tb   cursor   local   for  
  select   s='if   exists(select   1   from   ['+b.name+']   where   ['+a.name+']   like   ''%'+@str+'%'')  
  print   ''所在的表及字段:   ['+b.name+'].['+a.name+']'''  
  from   syscolumns   a   join   sysobjects   b   on   a.id=b.id  
  where   b.xtype='U'   and   a.status>=0  
     and   a.xusertype   in(175,239,231,167)  
  open   tb  
  fetch   next   from   tb   into   @s  
  while   @@fetch_status=0  
  begin  
  exec(@s)  
  fetch   next   from   tb   into   @s  
  end  
  close   tb  
  deallocate   tb




=========================================================================================================


declare @t varchar(255),@c varchar(255)
declare table_cursor cursor for select a.name,b.name 
from sysobjects a,syscolumns b ,systypes c 
where a.id=b.id and a.xtype='u' and c.name /*"u"为你要操作的数据类型，不改为全部数据类型，不想麻烦就不用修改了*/
in ('char', 'nchar', 'nvarchar', 'varchar','text','ntext' /* --这里如果你的text(ntext)类型没有超过8000(4000)长度，才可以使用*/)
declare @str varchar(500),@str2 varchar(500) 
set @str='' /*这里是你要替换的字符*/
set @str2='' /*替换后的字符*/
open table_cursor 
fetch next from table_cursor 
into @t,@c while(@@fetch_status=0) 
begin exec('update [' + @t + '] set [' + @c + ']=replace(cast([' + @c + '] as varchar(8000)),'''+@str+''','''+ @str2 +''')')
fetch next from table_cursor 
into @t,@c end close table_cursor deallocate table_cursor;


=========================================================================================================


declare @sql nvarchar(100) 
declare @tableName nvarchar(100)
declare cur cursor for
select name from sysobjects where xtype='U'  --搜索所有表名
open cur 
while @@fetch_status=0
 begin 
   set @sql='select * from  [' + @tableName + '] '      --循环查询表数据
   exec sp_executesql @sql
   fetch next from cur into @tableName
 end 
close cur 
deallocate cur 
set nocount off 

```