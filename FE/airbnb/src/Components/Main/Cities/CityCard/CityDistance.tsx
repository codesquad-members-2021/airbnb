import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  distance: number;
}

const CityDistance = ({ distance }: Props) => {
  return <S.CityDistance>차로 {distance}분 거리</S.CityDistance>;
};

export default CityDistance;
