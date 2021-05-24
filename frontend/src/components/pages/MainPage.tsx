import { useEffect } from "react";
import styled from "styled-components";
import Header from "components/Header/Header";
import SearchBar from "components/SearchBar/SearchBar";
import Responsive from "components/common/Responsive";

const MainPage = () => {
  // const getToken = () => {
  //   const params = new URLSearchParams(window.location.search);
  //   const code = params.get("code");
  //   console.log("code", code);
  //   fetch("https://github.com/login/oauth/access_token", {
  //     method: "POST",
  //     headers: { "Content-Type": "application/json" },
  //     body: JSON.stringify({ code }),
  //   })
  //     .then(response => response.json())
  //     .then(({ token }) => {
  //       console.log(token);
  //       // localStorage.setItem('token', token);
  //       // location.href = 'http://localhost:8080/home.html';
  //     });
  // };

  // useEffect(() => {
  //   getToken();
  // }, []);

  return (
    <>
      <MainPageLayout>
        <Header />
        <SearchBar />
      </MainPageLayout>
      <HeroBackgroundImageLayer />
    </>
  );
};

const MainPageLayout = styled(Responsive)``;

const HeroBackgroundImageLayer = styled.div`
  width: 100%;
  height: 80%;
  position: absolute;
  top: 0;
  z-index: -1;
  background-image: url("https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg");
  background-size: cover;
  background-position: 0 90%; //x와 y축을 기준으로 이미지 전체 비율의 몇 퍼센트인지를 보여줌

  @media (max-width: 1024px) {
    width: 100%;
    height: 80%;
    background-image: url("https://a0.muscache.com/im/pictures/4e9fc041-1c7e-4f2d-b2bd-52c9cdc6a512.jpg");
  }
`;

export default MainPage;
