import { useEffect } from 'react';
import qs from 'qs';
import Loader from './Loader';

const Callback = ({ history, location }) => {
  const authUri = `http://3.35.226.74/auth/github`;

  useEffect(() => {
    const getToken = async () => {
      const { code } = qs.parse(location.search, {
        ignoreQueryPrefix: true,
      });

      try {
        const response = await fetch(`${authUri}?code=${code}`);
        const data = await response.json();

        localStorage.setItem('token', data.jwt);
        localStorage.setItem('ProfileURL', data.avatar_url);

        history.push('/');
      } catch (error) {}
    };

    getToken();
  }, [location, history, authUri]);

  return <Loader />;
};

export default Callback;
