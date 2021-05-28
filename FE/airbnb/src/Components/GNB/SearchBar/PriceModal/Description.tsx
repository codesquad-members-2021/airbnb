import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  prices: number[];
}

const Description = ({ prices }: Props) => {
  const averagePrice = Math.floor(
    prices.reduce((acc, curr) => acc + curr, 0) / prices.length
  );

  return <S.Description>평균 1박 요금은 ₩{averagePrice} 입니다.</S.Description>;
};

export default Description;
