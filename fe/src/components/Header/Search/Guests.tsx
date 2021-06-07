import React from 'react';
import { useRecoilState, useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { totalGuestState } from '@recoil/atoms/guests';
import { modalStates } from '@recoil/atoms/modalState';

import Title from '@components/common/Title';
import GuestModal from './GuestModal';

const Guests = () => {
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);

  const guestCounts = useRecoilValue(totalGuestState);

  const handleClickGuestModal = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenModal({
      ...isOpenModal,
      calendar: false,
      price: false,
      guest: true,
    });
  };

  return (
    <>
      <GuestWrap onClick={handleClickGuestModal}>
        <Title>인원</Title>
        <Desc>{guestCounts}</Desc>
        {isOpenModal.guest && <GuestModal />}
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
