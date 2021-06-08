import { useState, useEffect } from "react";
import styled from "styled-components";
import { useSetRecoilState, useRecoilValue } from "recoil";
import {
  minPriceState,
  maxPriceState,
  thumbLeftPriceState,
  thumbRightPriceState,
  isSetPriceState,
  priceChartDataState,
  priceToString,
} from "state/atoms/fareAtoms";
import { priceFetch } from "state/selectors/priceFetch";
import { stopPropagation } from "component/searchBar/modalFunctions";
import { chartControlType } from "component/searchBar/fareChart/chartType";
import getChartData from "component/searchBar/fareChart/getChartData";
import ChartCanvas from "component/searchBar/fareChart/ChartCanvas";
import FareRangeSlider from "component/searchBar/fareChart/FareRangeSlider";

const CHART_CONTROL: chartControlType = {
  SECTIONS: 20,
  WIDTH: 600,
  HEIGHT: 240,
};

function FareModal() {
  const setPriceChartData = useSetRecoilState(priceChartDataState);
  const setMinPrice = useSetRecoilState(minPriceState);
  const setMaxPrice = useSetRecoilState(maxPriceState);
  const setLeftPrice = useSetRecoilState(thumbLeftPriceState);
  const setRightPrice = useSetRecoilState(thumbRightPriceState);
  const priceFetchResult = useRecoilValue(priceFetch);
  const isSetPrice = useRecoilValue(isSetPriceState);
  const priceOfString = useRecoilValue(priceToString);
  const [averageOfPrice, setAverageOfPrice] = useState(0);

  useEffect(() => {
    const { priceChartData, minPrice, maxPrice, averagePrice } = getChartData({
      dataArr: priceFetchResult,
      sections: CHART_CONTROL.SECTIONS,
    });
    setPriceChartData(priceChartData);
    setMinPrice(minPrice);
    setMaxPrice(maxPrice);
    setAverageOfPrice(averagePrice);
    if (!isSetPrice) {
      setLeftPrice(minPrice);
      setRightPrice(maxPrice);
    }
  }, []);

  return (
    <Modal onClick={stopPropagation}>
      <Title>가격 범위</Title>
      <FareRange>{priceOfString}</FareRange>
      <FareAverage>평균 1박 요금은 ₩{averageOfPrice.toLocaleString()}입니다.</FareAverage>
      <FareChartBox>
        <ChartCanvas chartControl={CHART_CONTROL} />
        <FareRangeSlider />
      </FareChartBox>
    </Modal>
  );
}

export default FareModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  border: 1px solid #eee;
  right: 0;
  width: 458px;
  padding: 50px 60px;
`;

const Title = styled.h3`
  font-weight: bold;
  color: ${({ theme }) => theme.color.black};
`;

const FareRange = styled.div`
  font-size: 18px;
  color: ${({ theme }) => theme.color.gray1};
  margin-top: 20px;
`;
const FareAverage = styled.div`
  font-size: 14px;
  color: ${({ theme }) => theme.color.gray3};
  font-weight: 300;
  margin-bottom: 20px;
`;
const FareChartBox = styled.div`
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
`;
