--------httpd.conf-------
```
#   Deny from all
    Allow from all
#   Allow from 127.0.0.1
```
-------------------------
-----phpmyadmin.conf-----
```
# Deny from all
Allow from all
# Allow from 127.0.0.1
```
-------------------------

```
use mysql
update user set password=PASSWORD('123456') where user='root';
flush privileges;
quit
```


"C:\wamp\apps\phpmyadmin3.4.10.1\config.inc.php"


```
$cfg['Servers'][$i]['hide_db'] ='information_schema|mysql|performance_schema|test';
```