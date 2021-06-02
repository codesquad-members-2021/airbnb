import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  mainImage: string;
}

const Image = ({ mainImage }: Props) => {
  return <S.Image src={mainImage} />;
};

export default Image;
