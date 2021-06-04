import { useRecoilState, useRecoilValue } from 'recoil';
import styled from 'styled-components';

import SmallText from '@components/common/SmallText';
import Title from '@components/common/Title';
import ChartModal from '@components/Header/PriceChart/ChartModal';

import { modalStates } from '@recoil/atoms/modalState';
import { searchBarPriceShow, selectedPrice } from '@recoil/atoms/price';
import { checkinNewDate, checkoutNewDate } from '@recoil/atoms/date';

const Fare = () => {
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);
  const selectPrice = useRecoilValue(selectedPrice);
  const priceRangeValue = useRecoilValue(searchBarPriceShow);
  const checkInTime = useRecoilValue(checkinNewDate);
  const checkOutTime = useRecoilValue(checkoutNewDate);

  const handleClickPriceChart = (e: React.MouseEvent) => {
    e.stopPropagation();
    if (checkInTime < 0 || checkOutTime < 0) return;
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
        {selectPrice.length > 0 ? `${priceRangeValue}` : '금액대 설정'}
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
  width: 25%;
  position: relative;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
