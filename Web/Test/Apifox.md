# 前置操作

## 访问任一接口前调用登录接口获取token值
```js
var urlObj = pm.request.url;
var host = urlObj.host.join('.');
var port = urlObj.port ? ":" + urlObj.port.toString() : "";

const echoPostRequest = {
  url: "https://" + host + port + "/api/login/storeLogin",
  method: "POST",
  header: {
    "Content-Type": "application/json"
  },
  body: {
    mode: 'raw',// 此处为 raw
    raw: JSON.stringify({ account: 'cyberpunk', psw:'c4ca4238a0b923820dcc509a6f75849b' }), // 序列化后的 json 字符串
  }
};
pm.sendRequest(echoPostRequest, function(err, res) {
  console.log(err ? err : res.json());
  pm.environment.set("token", res.json().data.token);
});

```