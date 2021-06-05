import { useState, useEffect } from "react";
import styled from "styled-components";
import { Redirect } from "react-router-dom";
import API from 'util/API';

const LoadingPage = () => {
  // state -> fetch 끝나면 트루로 바꿔서 redirect를 리턴해준다
  const getToken = () => {
    const params = new URLSearchParams(window.location.search);
    const code = params.get("code");
    const token = API.post.code(code)
    // localStorage.setItem("token", token);
    // const setToken = (({ token }) => {
    //     localStorage.setItem("token", token);
    //     window.location.href="http://localhost:3000";
    //   });
  };

  // <Redirect
  // to={{
  //   pathname: "/",
  // }}/>}
  useEffect(() => {
    getToken();
  }, []);

  return (
    <Test>
     
      <img src="https://thumbs.gfycat.com/GeneralUnpleasantApisdorsatalaboriosa-max-1mb.gif" />
    </Test>
  );
};

const Test = styled.div`
  display: flex;
  justify-content: center;
  width: 100%;
  height: 100%;
  padding-top: 30rem;

  & > img {
  }
`;

export default LoadingPage;
