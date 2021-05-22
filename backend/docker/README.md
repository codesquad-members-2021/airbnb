# MySQL 도커 실행법

```sh
cd airbnb/backend/docker

sh ./docker-clear.sh

docker build --tag pyrodb:1.0 .

docker run -d -p 12345:3306 --name=pyrodb pyrodb:1.0

mysql -h localhost -P 12345 -D pyrodb --protocol=tcp -u pyro -p
# 비밀번호: pyro1234
```
