import { useEffect } from "react";
import { Redirect } from "react-router-dom";
import styled from "styled-components";
import API from 'util/API';

const LoadingPage = () => {
  const getToken = async() => {
    const params = new URLSearchParams(window.location.search);
    const code = params.get("code");
    const token = await API.post.code(code);
    localStorage.setItem("token", token);
};

  useEffect(() => {
    getToken();
  }, []);

  return (
    <LoadingPageLayout>
      <img src="https://thumbs.gfycat.com/GeneralUnpleasantApisdorsatalaboriosa-max-1mb.gif" />
    </LoadingPageLayout>
  );
};

const LoadingPageLayout = styled.div`
  display: flex;
  justify-content: center;
  width: 100%;
  height: 100%;
  padding-top: 30rem;

  & > img {
  }
`;

export default LoadingPage;
