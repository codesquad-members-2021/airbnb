# Back End

백엔드를 위한 디렉토리

## 프로젝트 실행법

### Docker Desktop 을 꼬옥! 미리 실행한다.

### 환경변수를 설정한다.

```sh
git revert e9e0339ed6a8b1b0f6ef768509fa08b7237334ad
```

환경변수가 어렵다면 경우 위의 커밋을 revert 한다.
아니라면, 아래대로 환경변수를 설정한다.

```sh
export GITHUB_CLIENT_ID="5064f641a3bfe7f785ab"
export GITHUB_CLIENT_SECRET="7ce7abff2a00db87a0d7c145af0b1aef1afe6da8"
export SPRING_DATASOURCE_URL="jdbc:mysql://localhost:12345/pyrodb?autoReconnect=true&useUnicode=true&characterEncoding=UTF8&serverTimeZone=Asia/Seoul"
export SPRING_DATASOURCE_USERNAME="pyro"
export SPRING_DATASOURCE_PASSWORD="pyro1234"
export SPRING_REDIS_HOST="localhost"
export SPRING_REDIS_PORT="6379"
export SPRING_REDIS_PASSWORD="redis1234"
```

### backend/start.sh 스크립트를 실행한다.

backend 디렉토리로 이동해서, start.sh 를 실행한다.

```
cd ./backend
sh ./start.sh
```
