import { useState, useEffect, useReducer } from "react";
import axios, { Method } from "axios";

type Action =
  | { type: "FETCH_INIT"; payload: null }
  | { type: "FETCH_SUCCESS"; payload: any }
  | { type: "FETCH_FAILURE"; payload: null };

const useAxios = (initialUrl: string, methods: Method, option?: any) => {
  const [url] = useState(initialUrl);

  const [state, dispatch] = useReducer(requestReducer, {
    isInit: true,
    isLoading: false,
    isSuccess: false,
    isError: false,
    data: null,
  });

  useEffect(() => {
    const config = () => {
      if (option) {
        return {
          method: methods,
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            "Cache-Control": "no-cache",
          },
          data: option,
        };
      } else {
        return {
          method: methods,
          headers: {
            Accept: "application/json",
            "Content-Type": "application/json",
            "Cache-Control": "no-cache",
          },
        };
      }
    };

    const fetchData = async () => {
      dispatch({ type: "FETCH_INIT", payload: null });
      try {
        if (url === "http://13.209.33.94:8080/price?fraction=10") {
          dispatch({ type: "FETCH_FAILURE", payload: null });
          return;
        }
        await axios(url, config()).then((result) =>
          dispatch({ type: "FETCH_SUCCESS", payload: result.data.data })
        );
      } catch (error) {
        dispatch({ type: "FETCH_FAILURE", payload: null });
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
    data: any;
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
