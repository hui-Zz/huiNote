根据请求头部参数： x-requested-with
` request.getHeader("x-requested-with") `
值为`XMLHttpRequest`表明是Ajax异步或同步请求
值为`NULL`表明是普通同步请求或Ajax