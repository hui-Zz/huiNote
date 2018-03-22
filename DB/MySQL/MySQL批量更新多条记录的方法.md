## 简述
 
我们经常会批量入库多条数据，例如在跑日志时，同步数据等，批量插入数据的语句经常用  `insert into table value(1),(2),(3)` 这种方式，批更更新时，则在foreach里面一条条的update,这次我们实现一条sql实现批量更新不同条件下不同的值。
 
## 高效率插量插入多条数据
 
```mysql
INSERT INTO `role` (`id`, `plat_name`, `user_name`, `channel`)
VALUES
    (1,11,'11_16957','1'),
    (2,3,'3_33736','1',),
    (3,11,'11_3830','1');
```
 
------
 
## mysql更新语句很简单，更新一条数据的某个字段，一般这样写
 
```mysql
UPDATE role SET plat_name = 'value' WHERE id = '1';
```
 
## 如果更新同一字段为同一个值，mysql也很简单，修改下where即可：
 
```mysql
UPDATE role SET plat_name = 'value' WHERE id in ('1','2','3');
```
 
## 那如果更新多条数据为不同的值，可能很多人会这样写：
 
```mysql
foreach ($plat_name_list as $id => $name)
{
    $sql = "UPDATE role SET `plat_name` = $name WHERE `id` = $id";
    mysql_query($sql);
}
```
 
即是循环一条一条的更新记录。一条记录update一次，这样性能很差，也很容易造成阻塞。
那么能不能一条sql语句实现批量更新呢？mysql并没有提供直接的方法来实现批量更新，但是方法还是有的。
 
我们来创建一个test表，好方便下面做测试
 
```mysql
CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `test` (`id`, `name`)
    VALUES
(1,'value1'),
(2,'value2'),
(3,'value3'),
(4,'value4');
```
 
这里使用了case when 这个小技巧来实现批量更新
 
```mysql
UPDATE test
    SET name = CASE id
        WHEN 1 THEN 3
        WHEN 2 THEN 4
        WHEN 3 THEN 5
    END
WHERE id IN (1,2,3)
```
 
这句sql的意思是，更新name字段，如果id=1 则name 的值为3，如果id=2 则 name 的值为4，如果id=3 则 name 的值为5。
即是将条件语句写在了一起。
这里的where部分不影响代码的执行，但是会提高sql执行的效率。确保sql语句仅执行需要修改的行数，这里只有3条数据进行更新，而where子句确保只有3行数据执行。
 
如果更新多个值的话，只需要稍加修改：
 
```mysql
UPDATE test
    SET name = CASE id
        WHEN 1 THEN 3
        WHEN 2 THEN 4
        WHEN 3 THEN 5
    END,
    title = CASE id
        WHEN 1 THEN 'New Title 1'
        WHEN 2 THEN 'New Title 2'
        WHEN 3 THEN 'New Title 3'
    END
WHERE id IN (1,2,3)
```