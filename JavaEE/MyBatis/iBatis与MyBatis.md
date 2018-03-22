# resultClass和resultType
1. 实体类
2. Map类


# #{}和${}区别
\#{}：是占位符，并且会自动为变量加上单引号 ' '

\${}：是直接字符串拼接，小心SQL注入问题


# 关联查询
```XML
<resultMap id="myInformation" class="MyBean">  
  <result property="id" column="id" />  
  <result property="name" column="name" />  
  <result property="address" column="address_id" select="Address.getAddressById"/>  
</resultMap>


<select id="getMyInformation" resultClass="myInformation" parameterClass="string">  
    select * from table where id=#id#  
</select>  
  
<!--  对应的Address.getAddressById  -->
<select id="getAddressById" resultClass="AddressBean" parameterClass="string">  
    select * from address where id=#id#  
</select>
```