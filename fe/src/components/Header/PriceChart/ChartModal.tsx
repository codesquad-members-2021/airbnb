import styled from 'styled-components';
import { useRecoilValue, useRecoilValueLoadable } from 'recoil';

import { averagePrice, priceList, priceRange } from '@recoil/atoms/price';
import { LoadingDefaultChart } from '@components/common/Loading';

import Graph from './Graph';

const ChartModal = () => {
  const { MIN_PRICE, MAX_PRICE } = useRecoilValue(priceRange);
  const averPrice = useRecoilValue(averagePrice);
  const priceListLoadable = useRecoilValueLoadable(priceList);
  const { state, contents } = priceListLoadable;

  return (
    <ModalWrap>
      <ModalInfo>
        <h4>가격 범위</h4>
        <Text title="true">
          `${MIN_PRICE.toLocaleString()} - ${MAX_PRICE.toLocaleString()}+`
        </Text>
        <Text title="">{averPrice}</Text>
      </ModalInfo>
      {state === 'loading' && <LoadingDefaultChart />}
      {state === 'hasValue' && <Graph priceContents={contents} />}
    </ModalWrap>
  );
};

export default ChartModal;

interface text {
  title: string;
}

const ModalWrap = styled.div`
  width: 493px;
  height: 364px;
  padding: 52px 64px 64px 64px;
  background-color: ${({ theme }) => theme.color.white};
  position: absolute;
  top: 128%;
  right: -85%;
`;

const ModalInfo = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 89px;

  h4 {
    font-size: ${({ theme }) => theme.fontSize.l};
    font-weight: ${({ theme }) => theme.fontWeight.bold};
    padding-bottom: 1rem;
  }
`;

const Text = styled.span<text>`
  padding: 2px 0;
  color: ${({ theme, title }) =>
    title ? theme.color.black : theme.color.gray3};
  font-size: ${({ theme, title }) =>
    title ? theme.fontSize.l : theme.fontSize.m};
`;
