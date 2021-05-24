import { Accomodations as S } from "@/Components/Main/MainStyles";

interface Props {
  image: string;
}

const CardImage = ({ image }: Props) => {
  return <S.CardImage src={image} alt={image} />;
};

export default CardImage;
