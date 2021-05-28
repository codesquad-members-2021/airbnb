import React, { useEffect } from 'react';
import { useRecoilState, useRecoilValue } from 'recoil';
import styled from 'styled-components';

import GuestModal from './GuestModal';
import Title from '@components/common/Title';
import { isOpenGuestModal, totalGuestState } from '@recoil/atoms/guests';

const Guests = () => {
  const [isOpenModalState, setIsOpenModalState] =
    useRecoilState(isOpenGuestModal);

  const guestCounts = useRecoilValue(totalGuestState);

  const handleGuestClick = (e: React.MouseEvent) => {
    e.stopPropagation();
    setIsOpenModalState(true);
  };

  useEffect(() => {
    const handleClickOutsideGuestModal = (): void => setIsOpenModalState(false);
    document.addEventListener('click', handleClickOutsideGuestModal);
    return () => {
      document.removeEventListener('click', handleClickOutsideGuestModal);
    };
  }, [setIsOpenModalState]);

  return (
    <>
      <GuestWrap onClick={handleGuestClick}>
        <Title>인원</Title>
        <Desc>{guestCounts}</Desc>
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

const Desc = styled.div`
  display: flex;
  align-items: center;
  width: 100%;
  padding: 0;
  height: 23px;
  color: ${({ theme }) => theme.color.gray3};
  outline: 0;
  border: 0;
  font-size: ${({ theme }) => theme.fontSize.s};
`;
