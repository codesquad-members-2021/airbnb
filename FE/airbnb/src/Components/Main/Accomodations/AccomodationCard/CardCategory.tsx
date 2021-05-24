import { Accomodations as S } from "@/Components/Main/MainStyles";

interface Props {
  category: string;
}

const CardCateGory = ({ category }: Props) => {
  return <S.CardCategory>{category}</S.CardCategory>;
};

export default CardCateGory;
