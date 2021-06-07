import styled from "styled-components";
import Header from "components/Header/Header";
import SearchBar from "components/SearchBar/SearchBar";
import Responsive from "components/common/Responsive";
import { Text } from "util/textContent"
const MainPage = () => {
  return (
    <>
      <Headline>
        <span>{Text.mainPage.headLine}</span>
      </Headline>
      <MainPageLayout>
        <Header />
        <SearchBar />
        <MainTextBox>
          {Text.mainPage.mainTextBox.map(str => <div className="main-text">{str}</div>)}
          <div className="main-slogan">{Text.mainPage.mainSlogan}</div>
          <div className="view-more-btn">{Text.mainPage.viewMore}</div>
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
