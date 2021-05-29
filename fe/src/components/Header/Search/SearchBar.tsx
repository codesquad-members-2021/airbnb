import { useEffect } from 'react';
import { useRecoilState, useRecoilValue, useResetRecoilState } from 'recoil';
import styled from 'styled-components';

import { dateSearchClick } from '@recoil/atoms/calendarState';
import { modalStates } from '@recoil/atoms/modalState';

import SearchButton from './SearchButton';
import Date from './Date';
import Fare from './Fare';
import Guests from './Guests';
import CalendarWrap from '@components/Header/Calender/CalendarWrap';

const SearchBar = () => {
  const isOpenModal = useRecoilValue(modalStates);
  const resetModalState = useResetRecoilState(modalStates);

  useEffect(() => {
    const handleClickOutsidePriceChart = (): void => resetModalState();
    document.addEventListener('click', handleClickOutsidePriceChart);
    return () => {
      document.removeEventListener('click', handleClickOutsidePriceChart);
    };
  }, [resetModalState]);

  return (
    <>
      <Select>
        <Date />
        <Fare />
        <Guests />
        <SearchButton />
      </Select>
      {isOpenModal.calendar && <CalendarWrap />}
    </>
  );
};

export default SearchBar;

const Select = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  width: 916px;
  height: 76px;
  border-radius: 60px;
  border: 1px solid ${({ theme }) => theme.color.gray4};
  background-color: ${({ theme }) => theme.color.white};
  position: relative;
  cursor: pointer;
`;
