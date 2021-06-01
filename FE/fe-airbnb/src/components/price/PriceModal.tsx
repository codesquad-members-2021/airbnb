import styled from 'styled-components';
import PriceChart from './PriceChart';
import RangeSlider from './RangeSlider';

const PRICE_DATA = {
  WIDTH: 365,
  INITIAL_MIN_PRICE: 10000,
  INITIAL_MAX_PRICE: 1000000,
  INITIAL_LEFT: 1000,
  INITIAL_RIGHT: 1350,
}

function PriceModal() {
  const [min, max] = [10000, 1000000];

  return (
    <PriceModalContainer>
      <PriceRangeTitle>가격 범위</PriceRangeTitle>
      <PriceRange>₩11,000 - ₩1,000,000+</PriceRange>
      <PriceAverage>평균 1박 요금은 ₩165,556 입니다.</PriceAverage>
      <PriceChart />
      <RangeSlider min={min} max={max}/>
    </PriceModalContainer>
  );
}

const PriceModalContainer = styled.div`
  width: 493px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 52px 64px;
  margin-top: 16px;
  position: absolute;
  left: 305px;
`

const PriceRangeTitle = styled.div`
  color: ${({theme}) => theme.colors.black};
  font-size: ${({theme}) => theme.fontSizes.SM};
  font-weight: bold;
  margin-bottom: 16px;
`

const PriceRange = styled.div`
  color: ${({theme}) => theme.colors.gray1};
  font-size: ${({theme}) => theme.fontSizes.M};
  margin-bottom: 4px;
`

const PriceAverage = styled.div`
  color: ${({theme}) => theme.colors.gray3};
  font-size: ${({theme}) => theme.fontSizes.S};
  margin-bottom: 40px;
`

export default PriceModal;
