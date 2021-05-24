import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  name: string;
}

const CityName = ({ name }: Props) => {
  return <S.CityName>{name}</S.CityName>;
};

export default CityName;
