import CardCateGory from "./CardCategory";
import CardImage from "./CardImage";
import { Accomodations as S } from "@/Components/Main/MainStyles";

interface Props {
  accomodation: any;
}

const AccomodationCard = ({ accomodation }: Props) => {
  return (
    <S.AccomodationCard>
      <CardImage image={accomodation.image} />
      <CardCateGory category={accomodation.category} />
    </S.AccomodationCard>
  );
};

export default AccomodationCard;
