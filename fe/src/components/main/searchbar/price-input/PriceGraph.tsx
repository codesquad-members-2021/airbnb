import PriceSlider from "./PriceSlider";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { priceSliderData } from "atoms/searchbarAtom";
type PriceGraphType = {
  priceData: {
    price: number;
    cnt: any;
  }[];
};

const PriceGraph = ({ priceData }: PriceGraphType) => {
  const priceSlider = useRecoilValue(priceSliderData);

  const minPrice = priceData[0].price;

  const gap = priceData[priceData.length - 1].price - minPrice;

  const curMin = Math.floor(
    minPrice + (gap * priceSlider.min) / priceSlider.width
  );
  const curMax = Math.floor(
    minPrice + (gap * priceSlider.max) / priceSlider.width
  );
  return (
    <>
      <PriceRange>
        {curMin} ~ {curMax}
      </PriceRange>
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
