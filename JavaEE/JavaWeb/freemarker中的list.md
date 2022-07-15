freemarker list (长度,遍历,下标,嵌套,排序)
1. freemarker获取list的size ：
 
Java
```Java
ArrayList<String> list = new ArrayList<String>();
 
Freemaker
${list?size}
```

2. list的遍历：
```xml
<#list animals as being>
    <tr>
        <td>${being.name}${being.price}<td>
    </tr>
</#list>
```

3. 遍历MAP 
```xml
 <#list map?keys as k>
    <option value="${k}">${map[k]}</option>
</#list>
```
 
4. list遍历中的下标序号：
```xml
_index是list的一个属性
<#list list as a>
     ${a_index}
</#list> 
```
5. 取LIST中第i个元素的值
```
${list[i]} 
嵌套时前面要有括号，如下，将字符串变成list，然后取第i个元素的值
 ${(str?split(","))[i]} 
```
 
6. list的嵌套：
```xml
<#list jsskList as jsskVO>
   <#list kcList as kcVO>
           <#if kcVO.kch=jsskVO.kch> （kcVO里有编号和名称，而jsskVO里只有编号）
                  ${kcVO.kcm} 
           </#if>
   </#list>
</#list>
```
 
7. list排序：
```xml
      升序 .sort_by()
<#list list?sort_by("字段") as x>
</#list>
 
 
     降序 .sort_by()?reverse
<#list list?sort_by("字段")?reverse as x> 
</#list>
```

8. item_has_next,size使用：
```xml
<#list userList as user>

  <#if !user_has_next>
   共有${userList?size}最后一个用户是:${user.userName}
  </#if>
</#list>
```