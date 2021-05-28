import { useEffect } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';

import SmallText from '@components/common/SmallText';
import Title from '@components/common/Title';
import ChartModal from '@components/Header/PriceChart/ChartModal';

import { isOpenPriceChart } from '@recoil/atoms/modalState';

//http://3.35.3.106:8080/accomodation/price

const Fare = () => {
  const [isOpenModalChart, setIsOpenModalChart] =
    useRecoilState(isOpenPriceChart);

  const handleClickPriceChart = (e: React.MouseEvent) => {
    e.stopPropagation();
    setIsOpenModalChart(true);
  };

  useEffect(() => {
    const handleClickOutsidePriceChart = (): void => setIsOpenModalChart(false);
    document.addEventListener('click', handleClickOutsidePriceChart);
    return () => {
      document.removeEventListener('click', handleClickOutsidePriceChart);
    };
  }, [setIsOpenModalChart]);

  return (
    <FareWrap onClick={handleClickPriceChart}>
      <Title>요금</Title>
      <SmallText>금액대 설정</SmallText>
      {isOpenModalChart && <ChartModal />}
    </FareWrap>
  );
};

export default Fare;

const FareWrap = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  width: 256px;
  position: relative;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
