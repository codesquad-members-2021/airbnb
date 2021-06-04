import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  distance: number;
}

const CityDistance = ({ distance }: Props) => {
  let time;
  const hours = Math.floor(distance / 60);
  const minutes = Math.floor(distance % 60);
  hours > 0 ? (time = `${hours}시간 ${minutes}분`) : (time = `${minutes}분`);
  return <S.CityDistance>차로 {time} 거리</S.CityDistance>;
};

export default CityDistance;
