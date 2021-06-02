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

  const curMin =
    minPrice +
    Math.floor((gap * priceSlider.min) / priceSlider.width / 1000) * 1000;
  const curMax =
    minPrice +
    Math.floor((gap * priceSlider.max) / priceSlider.width / 1000) * 1000;
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
