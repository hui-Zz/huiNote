# SQL多表查询优化

2009-12-07 11:00

这里提供的是执行性能的优化,而不是后台数据库优化器资料:

参考数据库开发性能方面的各种问题,收集了一些优化方案统计如下(当然,象**索引**等优化方案太过简单就不列入了,嘿嘿):

**执行路径:ORACLE**的这个功能大大地提高了SQL的执行性能并节省了内存的使用:我们发现,单表数据的统计比多表统计的速度完全是两个概念.单表统计可能只要0.02秒,但是2张表联合统计就可能要几十表了.这是因为**ORACLE**只对简单的表提供**高速缓冲**(cache buffering) ,这个功能并不适用于**多表连接查询**..数据库管理员必须在init.ora中为这个区域设置合适的参数,当这个内存区域越大,就可以保留更多的语句,当然被共享的可能性也就越大了.

当你向**ORACLE**提交一个SQL语句,**ORACLE**会首先在这块内存中查找相同的语句.  
这里需要注明的是,**ORACLE**对两者采取的是一种严格匹配,要达成共享,SQL语句必须  
完全相同(包括空格,换行等).  
共享的语句必须满足三个条件:  
**A.       字符级的比较:**   
当前被执行的语句和共享池中的语句必须完全相同.  
例如:  

```sql
SELECT * FROM EMP;  
和下列每一个都不同  
SELECT * from EMP;  
Select * From Emp;  
SELECT       *      FROM EMP;
```
**B.       两个语句所指的对象必须完全相同:**

   用户对象名                       如何访问  
Jack   sal_limit                      private synonym  
Work_city                           public synonym  
Plant_detail                         public synonym  
Jill sal_limit                         private synonym  
Work_city                           public synonym  
Plant_detail                        table owner  
考虑一下下列SQL语句能否在这两个用户之间共享.  
SQL 能否共享 原因  
select max(sal_cap) from sal_limit; 不能 每个用户都有一个private synonym - sal_limit , 它们是不同的对象  
`select count(*) from work_city where sdesc like 'NEW%';` 能 两个用户访问相同的对象public synonym - work_city  
`select a.sdesc,b.location from work_city a , plant_detail b where a.city_id = b.city_id` 不能 用户jack 通过private synonym访问plant_detail 而jill 是表的所有者,对象不同.

**C.       两个SQL语句中必须使用相同的名字的绑定变量(bind variables)**   
例如：第一组的两个SQL语句是相同的(可以共享),而第二组中的两个语句是不同的(即使在运行时,赋于不同的绑定变量相同的值)  
a.  
select pin , name from people where pin = :blk1.pin;  
select pin , name from people where pin = :blk1.pin;  
b.  
select pin , name from people where pin = :blk1.ot_ind;  
select pin , name from people where pin = :blk1.ov_ind;  

## **重点关注1:选择最有效率的表名顺序(只在基于规则的优化器中有效)** **重点关注** 

ORACLE 的解析器按照从右到左的顺序处理FROM子句中的表名,因此FROM子句中写在最后的表(基础表 driving table)将被最先处理. 在FROM子句中包含多个表的情况下,你必须选择记录条数最少的表作为基础表.当**ORACLE**处理多个表时, 会运用排序及合并的方式连接它们.首先,扫描第一个表(FROM子句中最后的那个表)并对记录进行派序,然后扫描第二个表(FROM子句中最后第二个表),最后将所有从第二个表中检索出的记录与第一个表中合适记录进行合并.  
例如:       表 TAB1 16,384 条记录  
表 TAB2 1       条记录  
选择TAB2作为基础表 (最好的方法)  
`select count(*) from tab1,tab2`    执行时间0.96秒  
选择TAB2作为基础表 (不佳的方法)  
`select count(*) from tab2,tab1`    执行时间26.09秒  
如果有3个以上的表连接查询, 那就需要选择交叉表(intersection table)作为基础表, 交叉表是指那个被其他表所引用的表.  
例如:    EMP表描述了LOCATION表和CATEGORY表的交集.  

```sql
SELECT *  
FROM LOCATION L ,  
CATEGORY C,  
EMP E  
WHERE E.EMP_NO BETWEEN 1000 AND 2000  
AND E.CAT_NO = C.CAT_NO  
AND E.LOCN = L.LOCN  
将比下列SQL更有效率  
SELECT *  
FROM EMP E ,  
LOCATION L ,  
CATEGORY C  
WHERE   E.CAT_NO = C.CAT_NO  
AND E.LOCN = L.LOCN  
AND E.EMP_NO BETWEEN 1000 AND 2000  
```

## **重点关注2:WHERE子句中的连接顺序．** **重点关注**

**ORACLE**采用自下而上的顺序解析WHERE子句,根据这个原理,表之间的连接必须写在其他WHERE条件之前, 那些可以过滤掉最大数量记录的条件必须写在WHERE子句的末尾.  
例如:  
**(低效,执行时间156.3秒)**
```sql
SELECT …  
FROM EMP E  
WHERE   SAL >; 50000  
AND     JOB = ‘MANAGER’  
AND     25 < (SELECT COUNT(*) FROM EMP  
WHERE MGR=E.EMPNO);  
```

**(高效,执行时间10.6秒)**
```sql
SELECT …  
FROM EMP E  
WHERE 25 < (SELECT COUNT(*) FROM EMP  
WHERE MGR=E.EMPNO)  
AND     SAL >; 50000  
AND     JOB = ‘MANAGER’;  
```

## **重点关注3:SELECT子句中避免使用 ‘ * ‘ ．** **重点关注**

当你想在SELECT子句中列出所有的COLUMN时,使用动态SQL列引用 ‘*’ 是一个方便的方法.不幸的是,这是一个非常低效的方法. 实际上,**ORACLE**在解析的过程中, 会将’*’ 依次转换成所有的列名, 这个工作是通过**查询**数据字典完成的, 这意味着将耗费更多的时间.  
7.      减少访问数据库的次数  
当执行每条SQL语句时, **ORACLE**在内部执行了许多工作: 解析SQL语句, 估算索引的利用率, 绑定变量 , 读数据块等等. 由此可见, 减少访问数据库的次数 , 就能实际上减少**ORACLE**的工作量.  
例如,  
以下有三种方法可以检索出雇员号等于0342或0291的职员.  
**方法1 (最低效)**    
```sql
SELECT EMP_NAME , SALARY , GRADE  
FROM EMP  
WHERE EMP_NO = 342;  
SELECT EMP_NAME , SALARY , GRADE  
FROM EMP  
WHERE EMP_NO = 291;  
```
**方法2 (次低效)**       
```sql
DECLARE  
CURSOR C1 (E_NO NUMBER) IS  
SELECT EMP_NAME,SALARY,GRADE  
FROM EMP  
WHERE EMP_NO = E_NO;  
BEGIN  
OPEN C1(342);  
FETCH C1 INTO …,..,.. ;  
OPEN C1(291);  
FETCH C1 INTO …,..,.. ;  
CLOSE C1;  
END;  
```
**方法3 (高效)**     
```sql
SELECT A.EMP_NAME , A.SALARY , A.GRADE,  
B.EMP_NAME , B.SALARY , B.GRADE  
FROM EMP A,EMP B  
WHERE A.EMP_NO = 342  
AND    B.EMP_NO = 291;  
```
注意:  
在SQL*Plus , SQL*Forms和Pro*C中重新设置ARRAYSIZE参数, 可以增加每次数据库访问的检索数据量 ,建议值为200.

## **重点关注4:使用DECODE函数来减少处理时间.** **重点关注**  
使用DECODE函数可以避免重复扫描相同记录或重复连接相同的表.  
例如:  
```sql
SELECT COUNT(*)，SUM(SAL)  
FROM　EMP  
WHERE DEPT_NO = 0020  
AND ENAME LIKE　‘SMITH%’;  
SELECT COUNT(*)，SUM(SAL)  
FROM　EMP  
WHERE DEPT_NO = 0030  
AND ENAME LIKE　‘SMITH%’;  
```
你可以用DECODE函数高效地得到相同结果  
```sql
SELECT COUNT(DECODE(DEPT_NO,0020,’X’,NULL)) D0020_COUNT,  
COUNT(DECODE(DEPT_NO,0030,’X’,NULL)) D0030_COUNT,  
SUM(DECODE(DEPT_NO,0020,SAL,NULL)) D0020_SAL,  
SUM(DECODE(DEPT_NO,0030,SAL,NULL)) D0030_SAL  
FROM EMP WHERE ENAME LIKE ‘SMITH%’;  
```
类似的,DECODE函数也可以运用于GROUP BY 和ORDER BY子句中.

## **重点关注5: 删除重复记录.** **重点关注**

最高效的删除重复记录方法 ( 因为使用了ROWID)  
```sql
DELETE FROM EMP E  
WHERE E.ROWID >; (SELECT MIN(X.ROWID)  
FROM EMP X  
WHERE X.EMP_NO = E.EMP_NO);
```

## **重点关注6: 用TRUNCATE替代DELETE** **.** **重点关注**

当删除表中的记录时,在通常情况下, 回滚段(rollback segments ) 用来存放可以被恢复的信息. 如果你没有COMMIT事务,**ORACLE**会将数据恢复到删除之前的状态(准确地说是恢复到执行删除命令之前的状况)  
而当运用TRUNCATE时, 回滚段不再存放任何可被恢复的信息.当命令运行后,数据不能被恢复.因此很少的资源被调用,执行时间也会很短.  
(译者按: TRUNCATE只在删除全表适用,TRUNCATE是DDL不是DML)

## **重点关注7: 尽量多使用COMMIT** **.** **重点关注**

只要有可能,在程序中尽量多使用COMMIT, 这样程序的性能得到提高,需求也会因为COMMIT所释放的资源而减少:  
COMMIT所释放的资源:  
a.        回滚段上用于恢复数据的信息.  
b.        被程序语句获得的锁  
c.        redo log buffer 中的空间  
d.       **ORACLE**为管理上述3种资源中的内部花费  
(译者按: 在使用COMMIT时必须要注意到事务的完整性,现实中效率和事务完整性往往是鱼和熊掌不可得兼)  

## **重点关注8:减少对表的查询.** **重点关注**

在含有子**查询**的SQL语句中,要特别注意减少对表的**查询**.

例如:  
低效  
```sql
SELECT TAB_NAME  
FROM TABLES  
WHERE TAB_NAME = ( SELECT TAB_NAME  
FROM TAB_COLUMNS  
WHERE VERSION = 604)  
AND　DB_VER= ( SELECT DB_VER  
FROM TAB_COLUMNS  
WHERE VERSION = 604)  
```
高效  
```sql
SELECT TAB_NAME  
FROM TABLES  
WHERE   (TAB_NAME,DB_VER)  
= ( SELECT TAB_NAME,DB_VER)  
FROM TAB_COLUMNS  
WHERE VERSION = 604)  
Update 多个Column 例子:  
```
低效:  
```sql
UPDATE EMP  
SET EMP_CAT = (SELECT MAX(CATEGORY) FROM EMP_CATEGORIES),  
SAL_RANGE = (SELECT MAX(SAL_RANGE) FROM EMP_CATEGORIES)  
WHERE EMP_DEPT = 0020;  
```
高效:  
```sql
UPDATE EMP  
SET (EMP_CAT, SAL_RANGE)  
= (SELECT MAX(CATEGORY) , MAX(SAL_RANGE)  
FROM EMP_CATEGORIES)  
WHERE EMP_DEPT = 0020;  
```

## **重点关注9:用EXISTS替代IN.** **重点关注**

在许多基于基础表的查询中,为了满足一个条件,往往需要对另一个表进行联接.在这种情况下, 使用EXISTS(或NOT EXISTS)通常将提高查询的效率.  
低效:  
```sql
SELECT *  
FROM EMP (基础表)  
WHERE EMPNO >; 0  
AND DEPTNO IN (SELECT DEPTNO  
FROM DEPT  
WHERE LOC = ‘MELB’)  
```
高效:  
```sql
SELECT *  
FROM EMP (基础表)  
WHERE EMPNO >; 0  
AND EXISTS (SELECT ‘X’  
FROM DEPT  
WHERE DEPT.DEPTNO = EMP.DEPTNO  
AND LOC = ‘MELB’)  
```
(译者按: 相对来说,用NOT EXISTS替换NOT IN 将更显著地提高效率,下一节中将指出)  
## **重点关注10:用NOT EXISTS替代NOT IN .** **重点关注**

在子查询中,NOT IN子句将执行一个内部的排序和合并. 无论在哪种情况下,NOT IN都是最低效的 (因为它对子查询中的表执行了一个全表遍历).   为了避免使用NOT IN ,我们可以把它改写成外连接(Outer Joins)或NOT EXISTS.  
例如:  
```sql
SELECT …  
FROM EMP  
WHERE DEPT_NO NOT IN (SELECT DEPT_NO  
FROM DEPT  
WHERE DEPT_CAT=’A’);  
```
为了提高效率.改写为:  
(方法一: 高效)  
```sql
SELECT ….  
FROM EMP A,DEPT B  
WHERE A.DEPT_NO = B.DEPT(+)  
AND B.DEPT_NO IS NULL  
AND B.DEPT_CAT(+) = ‘A’  
```
(方法二: 最高效)  
```sql
SELECT ….  
FROM EMP E  
WHERE NOT EXISTS (SELECT ‘X’  
FROM DEPT D  
WHERE D.DEPT_NO = E.DEPT_NO  
AND DEPT_CAT = ‘A’);  
```
**当然,最高效率的方法是有表关联.直接两表关系对联的速度是最快的!**  

## **重点关注11:识别’低效执行’的SQL语句.** **重点关注**

用下列SQL工具找出低效SQL:  
```sql
SELECT EXECUTIONS , DISK_READS, BUFFER_GETS,  
ROUND((BUFFER_GETS-DISK_READS)/BUFFER_GETS,2) Hit_radio,  
ROUND(DISK_READS/EXECUTIONS,2) Reads_per_run,  
SQL_TEXT  
FROM    V$SQLAREA  
WHERE   EXECUTIONS>;0  
AND      BUFFER_GETS >; 0  
AND (BUFFER_GETS-DISK_READS)/BUFFER_GETS < 0.8  
ORDER BY 4 DESC;  
```
(译者按: 虽然目前各种关于SQL优化的图形化工具层出不穷,但是写出自己的SQL工具来解决问题始终是一个最好的方法)