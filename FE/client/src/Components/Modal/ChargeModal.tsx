import { useEffect, useState } from 'react';
import styled from 'styled-components';
import { useRecoilState, useRecoilValueLoadable } from 'recoil';
import Slider from './Slider';
import Graph from './Graph';
import { ChargeType } from '@Components/commons/baseType';
import { RangeAtom } from '@/recoil/atoms';
import { fetchPriceListSelector } from '@/recoil/fetchAtoms';
import { getConvertedChartPrices } from '@/utils/graphUtil';
import { getAveragePrice } from '@/utils/graphUtil';

const ChargeModal = ({ charge }: ChargeType) => {
  const [rangeState, setRangeState] = useRecoilState(RangeAtom);
  const { leftRange, rightRange } = rangeState;
  const priceLoadable = useRecoilValueLoadable(fetchPriceListSelector);
  const [priceArray, setPriceArray] = useState([[0]]);
  const averagePrice = getAveragePrice({ rangeState, priceArray });

  useEffect(() => {
    if (priceLoadable.state !== 'hasValue') return;
    setPriceArray(getConvertedChartPrices(priceLoadable.contents.prices));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [priceLoadable.state]);

  return (
    <ChargeModalWrapper {...{ charge }}>
      <PriceRangeTitle>가격범위</PriceRangeTitle>

      <PriceRange>
        ₩{(leftRange * 10000).toLocaleString()} - ₩{(rightRange * 10000).toLocaleString()}
        {rightRange === 100 && '+'}
      </PriceRange>

      {priceLoadable.state === 'hasValue' &&
        <>
          <PriceRangeDesc>
            {averagePrice && averagePrice
              ? `평균 1박요금은 ₩${averagePrice.toLocaleString()} 입니다`
              : `범위를 다시 지정해주세요`}

          </PriceRangeDesc>
          <Graph {...{ rangeState, priceArray }} />
        </>
      }

      {priceLoadable.state === 'loading' && <>loading...</>}

      {priceLoadable.state === 'hasError' && <>error...</>}

      <Slider {...{ rangeState, setRangeState }} />
    </ChargeModalWrapper >
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
