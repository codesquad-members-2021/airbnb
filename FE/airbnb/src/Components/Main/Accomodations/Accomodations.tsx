import Title from "./Title";
import AccomodationCard from "./AccomodationCard/AccomodationCard";
import { Accomodations as S } from "@/Components/Main/MainStyles";

interface Props {
  accomodations: any[];
}

const Accomodations = ({ accomodations }: Props) => {
  return (
    <S.Accomodations>
      <Title />
      <S.AccomodationCardGrid>
        {accomodations.map((accomodation) => (
          <AccomodationCard accomodation={accomodation} />
        ))}
      </S.AccomodationCardGrid>
    </S.Accomodations>
  );
};

export default Accomodations;
