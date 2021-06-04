import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  totalPrice: number;
}

const TotalPrice = ({ totalPrice }: Props) => {
  return <S.TotalPrice>총액 ₩{totalPrice.toLocaleString()}</S.TotalPrice>;
};

export default TotalPrice;
