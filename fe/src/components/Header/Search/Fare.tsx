import { useRecoilState, useResetRecoilState } from 'recoil';
import styled from 'styled-components';

import SmallText from '@components/common/SmallText';
import Title from '@components/common/Title';
import ChartModal from '@components/Header/PriceChart/ChartModal';

import { modalStates } from '@recoil/atoms/modalState';

const Fare = () => {
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);

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
      <SmallText>금액대 설정</SmallText>
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
