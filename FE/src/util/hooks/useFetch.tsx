import { useState, useEffect } from 'react';

namespace IFetchParams {
  export type url = string;
  export type options = IFetchOption;
}
// interface IFetchParams {
//   url: string,
//   options?: IFetchOption,
// }

type HTTP_METHODS = 'GET' | 'POST' | 'PATCH' | 'PUT' | 'DELETE' | 'OPTIONS';

interface IFetchOption {
  method: HTTP_METHODS,
  headers?: string,
  body?: string
}

interface IFetchState {
  endpoint: string,
  query: IFetchQuery[] | null

  isLoading: boolean,
  isError: boolean,
}

interface IFetchQuery {
  [key: string]: string
}

// { 'Content-Type': 'application/json' }
// IFetchState[keyof IFetchState]

function useFetch<T>(url: IFetchParams.url, options?: IFetchParams.options) {
  const urlObjects = new URL(url);
  const initialFetchState: IFetchState = { isLoading: true, isError: false, endpoint: urlObjects.host, query: null };
  
  if (urlObjects.search) { // queryMaker
    initialFetchState.query = urlObjects.search.substring(1).split("&").map((each) => {
      const [key, value] = each.split("=");
      return {[key]:value};
    });
  }

  const [fetchState, setFetchState] = useState<IFetchState>(initialFetchState) ;
  const [result, setResult] = useState<T|undefined>();

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch(url, options as RequestInit);
        const ParsedResult = await response.json();
        setResult(ParsedResult);
        setFetchState({...fetchState, isLoading: false});
      } catch(e) {
        const response = await fetch("/mocks/rooms.json");
        const parsedResult = await response.json();
        console.warn("error!", parsedResult);
        setResult(parsedResult);
        setFetchState({...fetchState, isLoading: false, isError: true});
      } 
    }
    fetchData();
  }, [fetchState.isLoading]);
  
  return {result, fetchState};
}

export default useFetch;