import { useEffect } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';

import { dateSearchClick } from '@recoil/atoms/calendarState';

import SearchButton from './SearchButton';
import Date from './Date';
import Fare from './Fare';
import Guests from './Guests';
import CalendarWrap from '@components/Header/Calender/CalendarWrap';

const SearchBar = () => {
  const [isOpenCalendar, setIsOpenCalendar] = useRecoilState(dateSearchClick);

  useEffect(() => {
    const handleClickOutsideCalendar = (): void => setIsOpenCalendar(false);
    document.addEventListener('click', handleClickOutsideCalendar);
    return () => {
      document.removeEventListener('click', handleClickOutsideCalendar);
    };
  }, [setIsOpenCalendar]);

  return (
    <>
      <Select>
        <Date />
        <Fare />
        <Guests />
        <SearchButton />
      </Select>
      {isOpenCalendar && <CalendarWrap />}
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

  input {
    height: 30px;
    padding: 0;
    color: ${({ theme }) => theme.color.black};
    outline: 0;
    border: 0;

    &::placeholder {
      font-size: ${({ theme }) => theme.fontSize.base};
    }
  }
`;
