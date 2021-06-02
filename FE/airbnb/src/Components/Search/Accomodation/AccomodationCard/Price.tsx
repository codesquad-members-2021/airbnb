import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  price: number;
}

const Price = ({ price }: Props) => {
  return (
    <S.Price>
      <span>₩{price.toLocaleString()}</span> / 박
    </S.Price>
  );
};

export default Price;
