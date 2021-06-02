import { useEffect } from 'react';
import qs from 'qs';

//참고로 callbackURL이 컴포넌트 라우트에 매칭되어야 한다~!
const Callback = ({ history, location }) => {
  const authUri = `http://3.35.226.74/auth`;

  useEffect(() => {
    const getToken = async () => {
      //https://github.com/login/oauth/authorize?client_id=c7adc71d1700acad7b68&redirect_uri=http://3.35.226.74/callback
      // 로그인페이지에서 로그인버튼을 누르면 위 창으로 이동하도록 설정하고,
      //사용자가 로그인하고 Authroize버튼을 누르면, redirectURI로 승인코드를 url에 딸려 보내는거같음
      //그럼 Callback에서는 location.search에서 ?code=어쩌구저쩌구 부분을 파싱해오면 됨
      // code = 앱 승인 코드
      const { code } = qs.parse(location.search, {
        ignoreQueryPrefix: true,
      });
      console.log('codem', code);

      try {
        //access_token을 발급받기 위해선 승인코드를 포함하여
        // authUri에다가 POST요청을 보내야함
        //POST보내서 받은 데이터에 jwt_token이 포함되어있음
        // const response = await fetch(`${authUri}`, {
        //   method: 'POST',
        //   headers: {
        //     // 'Accept': 'application/json',
        //     'Content-Type': 'application/json',
        //   },
        //   body: JSON.stringify(code),
        // });
        // const data = await response.json();
        const response = await fetch(`${authUri}`);
        console.log('respone', response);
        const data = await response.json();

        // const data = await fetch(`${authUri}`);

        //axios 버전
        // const { data } = await axios.post(authUri, {
        //   code,
        // });

        console.log('토큰넘어오는곳', data);
        //보통 sessionStorage나 localStorage에 저장하는것같음
        localStorage.setItem('token', data.jwt_token);
        history.push('/');
      } catch (error) {
        //에러처리 에러페이지로 이동시키거나 하면 될것같음
      }
    };

    getToken();
  }, [location, history, authUri]);

  return null;
};

export default Callback;
//loginUri = `https://github.com/login/oauth/authorize?client_id=${clientId}&redirect_uri=http://${URLS.gcphost}:3000/callback`;
