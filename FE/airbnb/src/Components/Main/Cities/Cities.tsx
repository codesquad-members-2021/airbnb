import Title from "./Title";
import CityCard from "./CityCard/CityCard";
import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  cities: any[];
}

const Cities = ({ cities }: Props) => {
  return (
    <S.Cities>
      <Title />
      <S.CityCardGrid>
        {cities.map((city) => (
          <CityCard key={city.id} city={city} />
        ))}
      </S.CityCardGrid>
    </S.Cities>
  );
};

export default Cities;
