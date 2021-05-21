// 테스트 중.. @ts-ignore 부분 체크하고 수정하기..

import { useState, useEffect } from 'react';

interface FetchOptions {
  callback: null,
  isExecuteFunc: boolean,
  options: object,
  addProps: Array<any>,
  returnType: string,
}

const useFetch = (
  url: string, fetchOptions: FetchOptions,
) => {
  const { callback, isExecuteFunc, options, addProps, returnType} = fetchOptions;

  const [response, setResponse] = useState();
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const fetchData = async () => {
    try {
      if (!url) setError(`Error: URL IS NULL`);

      const res = await fetch(url, options);
      if (!res.ok) return setError(`Error: code ${res.status}`);

      let result = null;
      //@ts-ignore
      if (returnType) result = res[returnType];
      else result = await res.json();

      if (!result) return setError(`Error: NO DATA`);

      setResponse(result);
    } catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (!addProps || !url) return;
    if (addProps.length > 0) {
      const flag = addProps.some((v) => !v);
      if (flag) {
        //@ts-ignore
        isExecuteFunc && callback && callback();
        return;
      }
    }

    fetchData();
    //@ts-ignore
    isExecuteFunc && callback && callback();

    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [...addProps]);

  return { response, loading, error };
};

export default useFetch;
