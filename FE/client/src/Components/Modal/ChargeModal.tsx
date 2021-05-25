import styled from 'styled-components';
import { ChargeType } from '../commons/searchBarType';
import Slider from './Slider';
import Graph from './Graph';
import { useRecoilState } from 'recoil';
import { RangeAtom } from '../../recoil/atoms';
import graphData from '../../utils/graphData';
import { getConvertedChartPrices } from '../../utils/graphUtil';
import { getAveragePrice } from './../../utils/graphUtil';

const ChargeModal = ({ charge }: ChargeType) => {
  const [rangeState, setRangeState] = useRecoilState(RangeAtom);
  const { left, right } = rangeState;
  const priceArray = getConvertedChartPrices(graphData);
  const averagePrice = getAveragePrice({rangeState, priceArray});

  return (
    <ChargeModalWrapper {...{ charge }}>
      <PriceRangeTitle>가격범위</PriceRangeTitle>

      <PriceRange>
        ₩{(left * 10000).toLocaleString()} - ₩{(right * 10000).toLocaleString()}
        {right === 100 && '+'}
      </PriceRange>
      <PriceRangeDesc>
        {averagePrice   
         ? `평균 1박요금은 ₩${averagePrice.toLocaleString()} 입니다`
         :  `범위를 다시 지정해주세요`}
        
      </PriceRangeDesc>
      <Graph {...{ rangeState,priceArray }} />
      <Slider {...{ rangeState, setRangeState  }} />
    </ChargeModalWrapper>
  )
}

// eslint-disable-next-line no-mixed-operators
const ChargeModalWrapper = styled.div<ChargeType>`
  position: relative;
  display: ${({ charge }) => charge ? 'block' : 'none'};
  width: 60%;
  background: #fff;
  margin-left: auto;
  padding: 3% 7% 5%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

const PriceRangeTitle = styled.div`
  font-weight: 700;
  margin-bottom: 1rem;
`;

const PriceRange = styled.div`

`;

const PriceRangeDesc = styled.div`
  color: #828282;
  font-size: 14px;
`;


export default ChargeModal;
