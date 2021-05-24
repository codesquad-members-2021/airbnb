import CityImage from "./CityImage";
import CityName from "./CityName";
import CityDistance from "./CityDistance";
import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  city: any;
}

const CityCard = ({ city }: Props) => {
  return (
    <S.CityCard>
      <CityImage image={city.image} />
      <div>
        <CityName name={city.name} />
        <CityDistance distance={city.distance} />
      </div>
    </S.CityCard>
  );
};

export default CityCard;
