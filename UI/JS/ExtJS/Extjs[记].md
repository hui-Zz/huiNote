# Ext.form.combobox取值
方法1：使用hiddenName取值
方法2：使用隐藏域取值
```js
Listeners : {
  "select" : function() {
    Ext.get("inputId").dom.value = this.value;
  }
}
```
