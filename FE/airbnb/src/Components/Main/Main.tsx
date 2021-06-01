import { useEffect } from "react";
import { useRecoilState, useSetRecoilState } from "recoil";
import { showMiniSearchBarState } from "@/Components/GNB/GNBStore";
import { mainState, errorState } from "@/Components/Main/MainStore";
import GNB from "@/Components/GNB/GNB";
import HeroText from "./HeroText";
import Cities from "./Cities/Cities";
import Accomodations from "./Accomodations/Accomodations";
import Footer from "./Footer/Footer";
import { getMainData } from "@/Utils/getData";
import { Main as S } from "./MainStyles";

const Main = () => {
  const [mainData, setData] = useRecoilState(mainState);
  const [error, setError] = useRecoilState(errorState);
  const setShowMiniSearchBarFlag = useSetRecoilState(showMiniSearchBarState);

  useEffect(() => {
    window.addEventListener("scroll", handleScroll); //리턴 언마운트
    getMainData(setData, setError);
    setShowMiniSearchBarFlag(false);
  }, [setData, setError, setShowMiniSearchBarFlag]);

  const handleScroll = () => {
    if (window.scrollY > 60) {
      setShowMiniSearchBarFlag(true);
    } else {
      setShowMiniSearchBarFlag(false);
    }
  };

  if (error || !mainData) return null;

  return (
    <S.Main>
      <GNB />
      <HeroText />
      <S.HeroImage src={mainData.heroImage} alt="heroImage" />
      <Cities cities={mainData.cities} />
      <Accomodations accomodations={mainData.categories} />
      <Footer />
    </S.Main>
  );
};

export default Main;
