import { useState, useEffect, useReducer } from "react";
import axios, { Method } from "axios";

type Action =
  | { type: "FETCH_INIT"; payload: [] }
  | { type: "FETCH_SUCCESS"; payload: [] }
  | { type: "FETCH_FAILURE"; payload: [] };

const useAxios = (initialUrl: string, methods: Method, options?: any) => {
  const [url] = useState(initialUrl);

  const [state, dispatch] = useReducer(requestReducer, {
    isInit: true,
    isLoading: false,
    isSuccess: false,
    isError: false,
    data: [],
  });

  useEffect(() => {
    const config = {
      method: methods,
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        "Cache-Control": "no-cache",
      },
    };

    const fetchData = async () => {
      axios.defaults.headers.get["Access-Control-Allow-Origin"] = "*";
      dispatch({ type: "FETCH_INIT", payload: [] });
      try {
        await axios(url, config).then((result) =>
          dispatch({ type: "FETCH_SUCCESS", payload: result.data })
        );
      } catch (error) {
        dispatch({ type: "FETCH_FAILURE", payload: [] });
      }
    };
    fetchData();
  }, [url, methods]);

  return { ...state };
};

const requestReducer = (
  state: {
    isInit: boolean;
    isLoading: boolean;
    isSuccess: boolean;
    isError: boolean;
    data: [];
  },
  action: Action
) => {
  switch (action.type) {
    case "FETCH_INIT":
      return {
        ...state,
        isInit: false,
        isLoading: true,
        isError: false,
      };
    case "FETCH_SUCCESS":
      return {
        ...state,
        isInit: false,
        isLoading: false,
        isSuccess: true,
        isError: false,
        data: action.payload,
      };
    case "FETCH_FAILURE":
      return {
        ...state,
        isInit: false,
        isLoading: false,
        isError: true,
      };
    default:
      throw new Error();
  }
};

export default useAxios;
