import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

interface Props {
  isDiscount: boolean;
  price: number;
}

const Price = ({ isDiscount, price }: Props) => {
  let _price;
  isDiscount
    ? (_price = `-₩${price.toLocaleString()}`)
    : (_price = `₩${price.toLocaleString()}`);

  return <S.Price isDiscount={isDiscount}>{_price}</S.Price>;
};

export default Price;
