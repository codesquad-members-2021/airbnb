import styled from "styled-components";
import { stopPropagation } from "hooks/modalHooks";
import { mockData } from "component/searchBar/fareChart/mockData";
import { chartControlType } from "component/searchBar/fareChart/chartType";
import getChartData from "component/searchBar/fareChart/getChartData";
import ChartCanvas from "component/searchBar/fareChart/ChartCanvas";

const CHART_CONTROL: chartControlType = {
  SECTIONS: 20,
  WIDTH: 600,
  HEIGHT: 240,
};

function FareModal() {
  const { SECTIONS } = CHART_CONTROL;
  // dataArr의 값으로 fetch한 값이 들어가야됨. 임시로 mockData 사용
  const { priceChartData, minPrice, maxPrice, averagePrice } = getChartData({ dataArr: mockData, sections: SECTIONS });

  return (
    <Modal onClick={stopPropagation}>
      <Title>가격 범위</Title>
      <FareRange>
        ₩{minPrice} - ₩{maxPrice}
      </FareRange>
      <FareAverage>평균 1박 요금은 ₩{averagePrice}입니다.</FareAverage>
      <FareChart>
        <ChartCanvas chartControl={CHART_CONTROL} chartData={priceChartData} />
      </FareChart>
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
const FareChart = styled.div`
  height: 120px;
  display: flex;
  justify-content: center;
`;
