import { useRecoilValue } from "recoil";
import { searchState } from "@/Components/Search/SearchStore";
import SelectedInfo from "./SelectedInfo";
import Title from "./Title";
import AccomodationCard from "./AccomodationCard/AccomodationCard";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

const Accomodation = () => {
  const accomodations = useRecoilValue(searchState);
  return (
    <S.Accomodation>
      <SelectedInfo />
      <Title />
      <S.AccomodationCardsScrollBox>
        {accomodations.map((accomodation) => (
          <AccomodationCard
            key={accomodation.roomId}
            accomodation={accomodation}
          />
        ))}
      </S.AccomodationCardsScrollBox>
    </S.Accomodation>
  );
};

export default Accomodation;
