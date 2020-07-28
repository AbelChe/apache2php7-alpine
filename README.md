# An apache2 and php7 web server on alpine

> base on Alpine

1. use aliyun software source
2. install php7 and apach2
3. open port 80 default

```shell
docker pull abelche/apache2php7alpine
docker run -itd -p 80:80 abelche/apache2php7alpine
```
