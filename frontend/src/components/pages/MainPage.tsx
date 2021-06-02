import { useEffect } from "react";
import styled from "styled-components";
import Header from "components/Header/Header";
import SearchBar from "components/SearchBar/SearchBar";
import Responsive from "components/common/Responsive";

const MainPage = () => {
  return (
    <>
      <Headline>
        <span>
          에어비앤비의 코로나19 대응 방안에 대한 최신 정보를 확인하세요.
        </span>
      </Headline>
      <MainPageLayout>
        <Header />
        <SearchBar />
        <MainTextBox>
          <div className="main-text">슬기로운</div>
          <div className="main-text">자연생활</div>
          <div className="main-slogan">
            에어비앤비가 엄선한 위시리스트를 만나보세요.
          </div>
          <div className="view-more-btn">여행 아이디어 얻기</div>
        </MainTextBox>
      </MainPageLayout>
      <HeroBackgroundImageLayer />
    </>
  );
};

const Headline = styled.div`
  text-align: center;
  background-color: black;
  font-size: 1.5rem;
  padding: 2rem 10rem;

  & > span {
    color: #ffffffb2;
    cursor: pointer;
    text-decoration-line: underline;

    &:hover {
      color: #ffffff7f;
    }
  }
`;
const MainPageLayout = styled(Responsive)`
  position: relative;
`;

const HeroBackgroundImageLayer = styled.div`
  width: 100%;
  height: 90%;
  position: absolute;
  top: 0;
  z-index: -1;
  background-image: url("https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg");
  background-size: cover;
  background-position: 0% 90%; //x와 y축을 기준으로 이미지 전체 비율의 몇 퍼센트인지를 보여줌

  @media (max-width: 1024px) {
    width: 100%;
    height: 80%;
    background-image: url("https://a0.muscache.com/im/pictures/4e9fc041-1c7e-4f2d-b2bd-52c9cdc6a512.jpg");
  }
`;

const MainTextBox = styled.div`
  position: absolute;
  width: 40rem;
  top: 50%;
  left: 20%;
  transform: translate(-50%, -50%);

  .main-text {
    font-size: 6rem;
    font-weight: 600;
  }

  .main-slogan {
    padding-top: 2rem;
    font-size: 2rem;
    font-weight: 400;
  }

  .view-more-btn {
    font-weight: 400;
    font-size: 1.5rem;
    color: #fff;
    background-color: black;
    padding: 1rem;
    width: 12rem;
    margin-top: 2rem;
    text-align: center;
    border-radius: 10px;
  }
`;

export default MainPage;
