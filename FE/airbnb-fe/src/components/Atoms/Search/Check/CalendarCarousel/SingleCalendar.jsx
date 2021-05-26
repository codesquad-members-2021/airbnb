import React, { useContext } from 'react';
import styled from 'styled-components';
import createMonthArray from './createMonthArray';
import { SearchContext } from '../..';
//달력 생성

const SingleCalendar = ({ range }) => {
  const { calendarData, calDispatch } = useContext(SearchContext);
  const today = new Date(Date.now());
  const [year, month] = [today.getFullYear(), range + today.getMonth() + 1];
  const monthArr = createMonthArray(year, month);

  const handleDisabled = (day) => {
    let tempDate = new Date(year, month - 1, day, 23, 59, 59);
    return today > tempDate;
  };

  const handleTdBtnClick = (e) => {
    console.log(e.target.dataset.day);
    const [clickedYear, clickedMonth, clickedDay] = e.target.dataset.day
      .split('-')
      .map(Number); // "2021-5-26"
    const {
      year: checkInYear,
      month: checkInMonth,
      day: checkInDay,
    } = calendarData.checkIn;
    const { year: checkOutYear } = calendarData.checkOut;
    const checkInDate = new Date(checkInYear, checkInMonth, checkInDay);
    const clickedDate = new Date(
      clickedYear,
      clickedMonth,
      clickedDay,
      23,
      59,
      59
    );

    const payLoadData = {
      year: clickedYear,
      month: clickedMonth,
      day: clickedDay,
    };

    //채크인에 데이터가 있을 때
    if (checkInYear) {
      //체크아웃에 데이터가 있을 때
      if (checkOutYear) {
        //두번째로 누른 값이 저장된 checkIn 데이터보다 작을때
        if (checkInDate > clickedDate) {
          calDispatch({
            type: 'ADD_CHECKIN_DATA',
            payload: payLoadData,
          });
          calDispatch({
            type: 'RESET_CHECKOUT_DATA',
          });
          //두번째로 누른값이 저장된 checkIn데이터보다 클때
        } else if (checkInDate <= clickedDate) {
          calDispatch({
            type: 'ADD_CHECKOUT_DATA',
            payload: payLoadData,
          });
        }
        //체크아웃에 데이터가 없을 때
      } else {
        if (checkInDate > clickedDate) {
          calDispatch({
            type: 'ADD_CHECKIN_DATA',
            payload: payLoadData,
          });
          //두번째로 누른값이 저장된 checkIn데이터보다 클때
        } else {
          calDispatch({
            type: 'ADD_CHECKOUT_DATA',
            payload: payLoadData,
          });
        }
      }
    } else {
      calDispatch({
        type: 'ADD_CHECKIN_DATA',
        payload: payLoadData,
      });
    }
  };
  return (
    <SingleCalDiv>
      <tbody>
        {monthArr?.map((week, idx) => (
          <DayTr key={idx}>
            {week?.map((day, idx) => (
              <DayTd key={idx}>
                <DayTdButton
                  disabled={handleDisabled(day)}
                  day={day}
                  data-day={`${year}-${month}-${day}`}
                  onClick={(e) => handleTdBtnClick(e)}
                >
                  {day}
                </DayTdButton>
              </DayTd>
            ))}
          </DayTr>
        ))}
      </tbody>
    </SingleCalDiv>
  );
};

const SingleCalDiv = styled.table`
  width: 21rem;
  margin: 0 2.125rem;
`;

const DayTd = styled.td`
  width: 3rem;
  height: 3rem;
`;

const DayTdButton = styled.button`
  width: 100%;
  height: 100%;
  border-radius: 3rem;
  font-size: ${({ theme }) => theme.fontSizes.XXS};
  font-weight: 700;
  background: none;
  &:hover {
    border: ${({ day, disabled }) =>
      day === ' ' || disabled ? 'none' : '1px solid gray'};
    cursor: ${({ day, disabled }) =>
      day === ' ' || disabled ? 'default' : 'pointer'};
  }
  /* &:click {
    background-color: ${({ theme }) => theme.colors.gray1};
    color: ${({ theme }) => theme.colors.white};
  } */
`;

const DayTr = styled.tr`
  width: 21rem;
`;

export default SingleCalendar;
