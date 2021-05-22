# Back End

백엔드를 위한 디렉토리

## 프로젝트 실행법

**Docker Desktop 을 꼬옥! 미리 실행한다.**

backend 디렉토리로 이동해서, start.sh 를 실행한다.

M1 맥북에서는 sudo 권한이 없으면 제대로 동작하지 않는다. 주의하자.

```
cd ./backend
sudo sh ./start.sh
```

## Oauth 작동 확인법

1. start.sh 를 통해 프로젝트를 실행한다.
2. `http://localhost:8080` 에 브라우저로 접근한다.
3. "GitHub Login" 을 클릭한다.
4. 못생긴 로딩스크린이 사라질때까지 기다린다.
5. 로딩 스크린이 사라지면, "Hello World!" 버튼을 클릭한다.
6. "안녕하세요! 로그인 한 유저는 언제나 환영합니다!" 라고 뜨면 성공이다.
