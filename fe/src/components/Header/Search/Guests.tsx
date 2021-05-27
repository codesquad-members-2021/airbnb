import Title from '@components/common/Title';
import { useRecoilState } from 'recoil';

import { isOpenGuestModal } from '@recoil/atoms/guests';
import GuestModal from './GuestModal';
import SmallText from '@components/common/SmallText';
import styled from 'styled-components';

const Guests = () => {
  const [isOpenModalState, setIsOpenModalState] =
    useRecoilState(isOpenGuestModal);

  const handleGuestClick = () => {
    setIsOpenModalState(true);
  };

  return (
    <>
      <GuestWrap onClick={handleGuestClick}>
        <Title>인원</Title>
        <SmallText>게스트 추가</SmallText>
        {isOpenModalState && <GuestModal />}
      </GuestWrap>
    </>
  );
};

export default Guests;

const GuestWrap = styled.div`
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  width: 200px;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
