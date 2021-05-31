import { useState } from "react";
import styled from "styled-components";
import { useRecoilState, useRecoilValue } from "recoil";
import { thumbLeftPriceState, thumbRightPriceState, isSetPriceState } from "state/atoms/fareAtoms";
import { stopPropagation } from "hooks/modalHooks";
import { mockData } from "component/searchBar/fareChart/mockData";
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
  const { SECTIONS } = CHART_CONTROL;
  // dataArr의 값으로 fetch한 값이 들어가야됨. 임시로 mockData 사용
  const { priceChartData, minPrice, maxPrice, averagePrice } = getChartData({ dataArr: mockData, sections: SECTIONS });
  const [leftPrice, setLeftPrice] = useRecoilState(thumbLeftPriceState);
  const [rightPrice, setRightPrice] = useRecoilState(thumbRightPriceState);
  const isSetPrice = useRecoilValue(isSetPriceState);
  if (!isSetPrice) {
    setLeftPrice(minPrice);
    setRightPrice(maxPrice);
  }
  return (
    <Modal onClick={stopPropagation}>
      <Title>가격 범위</Title>
      <FareRange>
        ₩{leftPrice} - ₩{rightPrice}
      </FareRange>
      <FareAverage>평균 1박 요금은 ₩{averagePrice}입니다.</FareAverage>
      <FareChartBox>
        <ChartCanvas chartControl={CHART_CONTROL} chartData={priceChartData} />
        <FareRangeSlider minPrice={minPrice} maxPrice={maxPrice} />
      </FareChartBox>
    </Modal>
  );
}

export default FareModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  right: 0;
  width: 50%;
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
