import queryString from "query-string";
import styled from "styled-components";
import { useEffect } from "react";

import useAxios from "hooks/useAxios";

const LogIn = (props: any) => {
  const result = queryString.parse(props.location.search);

  const url =
    process.env.REACT_APP_API_URL + `/oauth/login?code=${result.code}`;
  const { isInit, isLoading, isSuccess, isError, data } = useAxios(url, "get");

  useEffect(() => {
    if (isSuccess) {
      localStorage.setItem("token", JSON.stringify(data));
      localStorage.setItem("isLogIn", JSON.stringify(true));
      props.history.push("/");
    }
  });

  return <LogInLoading>loginPage</LogInLoading>;
};

export default LogIn;

const LogInLoading = styled.div`
  position: fixed;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
`;
