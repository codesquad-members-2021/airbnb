# Back End

백엔드를 위한 디렉토리

## 프로젝트 실행법

### Docker Desktop 을 꼬옥! 미리 실행한다.

### 환경변수를 설정한다.

```bashrc
export GITHUB_CLIENT_ID="5064f641a3bfe7f785ab"
export GITHUB_CLIENT_SECRET="7ce7abff2a00db87a0d7c145af0b1aef1afe6da8"
export SPRING_DATASOURCE_URL="jdbc:mysql://localhost:12345/pyrodb?autoReconnect=true&useUnicode=true&characterEncoding=UTF8&serverTimeZone=Asia/Seoul"
export SPRING_DATASOURCE_USERNAME="pyro"
export SPRING_DATASOURCE_PASSWORD="pyro1234"
export SPRING_REDIS_HOST="localhost"
export SPRING_REDIS_PORT="6379"
export SPRING_REDIS_PASSWORD="redis1234"
```

backend 디렉토리로 이동해서, start.sh 를 실행한다.

M1 맥북에서는 sudo 권한이 없으면 제대로 동작하지 않는다. 주의하자.

### backend/start.sh 스크립트를 실행한다.

```
cd ./backend
sudo sh ./start.sh
```
