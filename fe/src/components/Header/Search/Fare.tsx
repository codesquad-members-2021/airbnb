import { useRecoilState, useRecoilValue, useResetRecoilState } from 'recoil';
import styled from 'styled-components';

import SmallText from '@components/common/SmallText';
import Title from '@components/common/Title';
import ChartModal from '@components/Header/PriceChart/ChartModal';

import { modalStates } from '@recoil/atoms/modalState';
import { priceRange, selectedPrice } from '@recoil/atoms/price';

interface price {
  MIN_PRICE: number;
  MAX_PRICE: number;
}

const Fare = () => {
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);
  const priceRangeValues = useRecoilValue(priceRange);
  const selectPrice = useRecoilValue(selectedPrice);

  const renderPriceRangeText = ({ MIN_PRICE, MAX_PRICE }: price) =>
    `$${MIN_PRICE.toLocaleString()} ~ $${MAX_PRICE.toLocaleString()}`;

  const handleClickPriceChart = (e: React.MouseEvent) => {
    e.stopPropagation();
    setIsOpenModal({
      ...isOpenModal,
      price: true,
      calendar: false,
      guest: false,
    });
  };

  return (
    <FareWrap onClick={handleClickPriceChart}>
      <Title>요금</Title>
      <SmallText>
        {selectPrice.length > 0
          ? renderPriceRangeText(priceRangeValues)
          : '금액대 설정'}
      </SmallText>
      {isOpenModal.price && <ChartModal />}
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
