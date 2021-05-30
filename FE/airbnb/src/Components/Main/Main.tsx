import { useEffect } from "react";
import { useRecoilState } from "recoil";
import { mainState, errorState } from "./MainStore";
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

  useEffect(() => {
    getMainData(setData, setError);
  }, [setData, setError]);

  if (error || !mainData) return null;

  return (
    <S.Main>
      <GNB />
      <HeroText />
      <S.HeroImage src={mainData.hiroImage} alt="heroImage" />
      <Cities cities={mainData.cities} />
      <Accomodations accomodations={mainData.categories} />
      <Footer />
    </S.Main>
  );
};

export default Main;
