```js
function getRating(rating) {
    if(rating > 5 || rating < 0) throw new Error('数字不在范围内');
    return '★★★★★☆☆☆☆☆'.substring(5 - rating, 10 - rating );
}

```

作者：郑航
链接：https://www.zhihu.com/question/37904806/answer/74109099
来源：知乎
