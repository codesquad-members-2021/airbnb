import { useEffect, useCallback } from "react";
import { useRecoilState, useSetRecoilState } from "recoil";
import {
  showMiniSearchBarState,
  isSearchPageState,
} from "@/Components/GNB/GNBStore";
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
  const setIsSearchPageState = useSetRecoilState(isSearchPageState);

  const handleScroll = useCallback(() => {
    if (window.scrollY > 60) {
      setShowMiniSearchBarFlag(true);
    } else {
      setShowMiniSearchBarFlag(false);
    }
  }, [setShowMiniSearchBarFlag]);

  useEffect(() => {
    window.addEventListener("scroll", handleScroll);
    getMainData(setData, setError);
    setShowMiniSearchBarFlag(false);
    setIsSearchPageState(false);

    return () => window.removeEventListener("scroll", handleScroll);
  }, [
    setData,
    setError,
    setShowMiniSearchBarFlag,
    handleScroll,
    setIsSearchPageState,
  ]);

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
