import PriceSlider from "./PriceSlider";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { priceSelector } from "atoms/searchbarAtom";
type PriceGraphType = {
  prices: number[];
  minPrice: number;
  maxPrice: number;
};

const PriceGraph = ({ prices, minPrice, maxPrice }: PriceGraphType) => {
  const priceValue = useRecoilValue(priceSelector);


  return (
    <>
      <PriceRange>{priceValue}</PriceRange>
      <PriceSubtitle>평균 1박요금은 원 입니다.</PriceSubtitle>
      <PriceSlider />
    </>
  );
};

export default PriceGraph;

const PriceRange = styled.span`
  font-size: 18px;
`;

const PriceSubtitle = styled.span`
  font-size: 0.8rem;
  font-weight: 400;
  color: ${({ theme }) => theme.color.Gray3};
`;
