import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '..';
import CloseButton from '../../buttons/CloseBtn';

const Check = ({ dispatch }) => {
  const { calendarData, calDispatch } = useContext(SearchContext);
  const {
    year: checkInYear,
    month: checkInMonth,
    day: checkInDay,
  } = calendarData.checkIn;

  return (
    <CheckDiv>
      <CheckIn onClick={() => dispatch({ type: 'CHECKINOUT' })}>
        <CheckTitle>체크인</CheckTitle>
        <CheckInp>
          {calendarData.checkIn.month !== 0
            ? `${calendarData.checkIn.month}월${calendarData.checkIn.day}일`
            : `날짜 입력`}
        </CheckInp>
      </CheckIn>
      <CheckOut onClick={() => dispatch({ type: 'CHECKINOUT' })}>
        <CheckTitle>체크아웃</CheckTitle>
        <CheckInp>
          {calendarData.checkOut.month !== 0
            ? `${calendarData.checkOut.month}월${calendarData.checkOut.day}일`
            : `날짜 입력`}
        </CheckInp>
      </CheckOut>
      {checkInYear ? (
        <CloseButton fn={() => calDispatch({ type: 'RESET_CAL' })} />
      ) : (
        ''
      )}
      <LineDiv />
    </CheckDiv>
  );
};

const CheckDiv = styled.div`
  display: grid;
  grid-template-columns: 7fr 9fr 2fr 0.1fr;
  justify-content: space-around;
  align-items: center;
  border-radius: 3rem;
`;
const CheckIn = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: space-between;
  border-radius: 3rem;
  padding: 0.9rem 1.5rem;
  &:hover {
    background: ${({ theme }) => theme.colors.gray6};
  }
`;
const CheckOut = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: space-between;
  padding: 0.9rem 1.5rem;
  border-radius: 3rem;
  &:hover {
    background: ${({ theme }) => theme.colors.gray6};
  }
`;
const CheckTitle = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-weight: bold;
`;
const CheckInp = styled.div`
  color: ${({ theme }) => theme.colors.gray2};
`;
const LineDiv = styled.div`
  border-left: 1px solid #c0c0c0;
  height: 2rem;
`;

export default Check;
