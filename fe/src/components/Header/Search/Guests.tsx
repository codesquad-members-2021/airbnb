import Title from '@components/common/Title';
import { useRecoilState } from 'recoil';

import { isOpenGuestModal } from '@recoil/atoms/guests';
import GuestModal from './GuestModal';

const Guests = () => {
  const [isOpenModalState, setIsOpenModalState] =
    useRecoilState(isOpenGuestModal);

  const handleGuestClick = () => {
    setIsOpenModalState(true);
  };

  return (
    <>
      <div onClick={handleGuestClick}>
        <Title>인원</Title>
        <input type="text" placeholder="게스트 추가" />
        {isOpenModalState && <GuestModal />}
      </div>
    </>
  );
};

export default Guests;
