import React, { useEffect, useState } from "react";
import styled from "styled-components";
import { DUMMY } from "../../utils/dummy";
import {
  getCloseAttracitons,
  getThemeStayContent,
  getSearchResult,
} from "../../utils/fetchFn";
import Footer from "./Footer.js";
import Location from "./Location";
import Thema from "./Thema";
const HomePage = () => {
  const [location, setLocation] = useState({
    title: "",
    contents: [],
  });
  const [theme, setTheme] = useState({ title: "", contents: [] });

  useEffect(() => {
    const callData = async () => {
      const { title: locationTitle, closeAttractions } =
        await getCloseAttracitons();
      const { title: themeTitle, themeStayContents } =
        await getThemeStayContent();

      setLocation({ title: locationTitle, contents: closeAttractions });
      setTheme({ title: themeTitle, contents: themeStayContents });
    };
    callData();
  }, []);

  return (
    <HomePageWrapper>
      <HeroImage></HeroImage>
      <Main>
        <Nav>{renderContent(location, Location)}</Nav>
        <Section>{renderContent(theme, Thema)}</Section>
      </Main>
      <Footer />
    </HomePageWrapper>
  );
};

const renderContent = (data, ContentComponent) => {
  const { title, contents } = data;
  return (
    <ContentContainer>
      <h2>{title}</h2>
      <ContentComponent contents={contents} />
    </ContentContainer>
  );
};

const HomePageWrapper = styled.div``;
const HeroImage = styled.div`
  width: 100%;
  height: 90vh;
  background: url(${DUMMY.HERO.heroURL});
  background-size: cover;
`;

const Main = styled.main`
  width: 80%;
  margin: 6rem auto;
`;
const Nav = styled.nav``;
const Section = styled.section``;
const ContentContainer = styled.div`
  margin-top: 6rem;

  & > h2 {
    font-size: 2rem;
    font-weight: bold;
    margin-bottom: 2rem;
  }
`;
export default HomePage;
