import { Cities as S } from "@/Components/Main/MainStyles";

interface Props {
  image: string;
}

const CityImage = ({ image }: Props) => {
  return <S.CityImage src={image} alt={image} />;
};

export default CityImage;
