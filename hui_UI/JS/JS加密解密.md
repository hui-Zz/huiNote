```html
<!doctype html>
<html>
    <body>
        <script src='https://cdn.bootcss.com/crypto-js/4.0.0/crypto-js.js'></script>
        <script>
            var text = getVar("text");
            var type = getVar('type');
            var key = getVar('key');
            var t = document.body;
            t.innerText = '';
            if (type == 'deaes') {
                t.innerText = CryptoJS.AES.decrypt(text, key).toString(CryptoJS.enc.Utf8);
            } else {
                t.innerText = {
                    'md5': CryptoJS.MD5(text),
                    'HmacMD5': CryptoJS.HmacMD5(text, key),
                    'PBKDF2': CryptoJS.PBKDF2(text, CryptoJS.enc.Utf8.parse(key), {
                        keySize: parseInt(4),
                        iterations: parseInt(1000)
                    }),
                    'aes': CryptoJS.AES.encrypt(text, key)
                }[type] || '';
            }
            function getVar(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
                var r = window.location.search.substr(1).match(reg);
                if (r != null)
                    return decodeURI(r[2]);
                return null;
            }
        </script>
    </body>
</html>

```

