```js
//判断字符是否有中文字符  
function isHasChn(s)  {   
    var patrn= /[\u4E00-\u9FA5]|[\uFE30-\uFFA0]/gi;   
    if (!patrn.exec(s)){   
        return false;   
    }else{   
        return true;   
    }   
}
  
  
//判断字符是否全是中文字符  
function isAllChn(str){   
    var reg = /^[\u4E00-\u9FA5]+$/;   
    if(!reg.test(str)){   
        alert("不是中文");   
        return false;   
    }   
    lert("中文");   
    return true;   
}
```

