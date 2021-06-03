import { useEffect } from 'react';
import qs from 'qs';

//참고로 callbackURL이 컴포넌트 라우트에 매칭되어야 한다~!
const Callback = ({ history, location }) => {
  const authUri = `http://3.35.226.74/auth/github`;

  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(location.search, {
        ignoreQueryPrefix: true,
      });

      console.log('code', code);

      try {
        const response = await fetch(`${authUri}?code=${code}`);
        console.log('response', response);

        const data = await response.json();
        console.log('토큰넘어오는곳', data);

        localStorage.setItem('token', data.jwt);
        localStorage.setItem('ProfileURL', data.avatar_url);
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
