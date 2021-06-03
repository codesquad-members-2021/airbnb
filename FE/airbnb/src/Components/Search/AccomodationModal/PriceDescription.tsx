import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

interface Props {
  description: string;
}

const PriceDescription = ({ description }: Props) => {
  return <S.PriceDescription>{description}</S.PriceDescription>;
};

export default PriceDescription;
