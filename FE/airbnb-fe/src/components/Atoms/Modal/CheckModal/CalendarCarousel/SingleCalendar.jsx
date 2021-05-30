import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '../../../Search';
import createMonthArray from './createMonthArray';

//달력 생성

const SingleCalendar = ({ range }) => {
  const { calendarData, calDispatch } = useContext(SearchContext);
  const {
    year: checkInYear,
    month: checkInMonth,
    day: checkInDay,
  } = calendarData.checkIn;
  const {
    year: checkOutYear,
    month: checkOutMonth,
    day: checkOutDay,
  } = calendarData.checkOut;

  const checkInDate = new Date(checkInYear, checkInMonth, checkInDay);
  const checkOutDate = new Date(checkOutYear, checkOutMonth, checkOutDay);

  const calcMonth = (year, mon) => {
    if (mon <= 0) {
      const count = Math.floor(Math.abs(mon / 12)) + 1;
      mon += 12 * count;
      year = year - count;
    } else if (mon >= 13) {
      const count = Math.ceil(Math.abs(mon / 12)) - 1;
      mon -= 12 * count;
      year = year + count;
    }
    return [year, mon];
  };

  const today = new Date(Date.now());
  const [year, month] = calcMonth(
    today.getFullYear(),
    today.getMonth() + 1 + range
  );
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
    //함수에다 인자 4개의 변수로 만들어지는 경우의 수  -> 반환 하는 함수를 만들어서
    //a -> dispatch  어우....... 어우 ..... 둘다.....
    //type checkin d이냐 checkout이냐
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
            {week?.map((day, idx) => {
              const checkInTime = checkInDate.getTime();
              const checkOutTime = checkOutDate.getTime();
              const clickedTime = new Date(year, month, day).getTime();
              return (
                <DayTd
                  key={idx}
                  day={day}
                  dayInterval={
                    checkInTime <= clickedTime && clickedTime <= checkOutTime
                  }
                >
                  <DayTdButton
                    disabled={handleDisabled(day)}
                    day={day}
                    data-day={`${year}-${month}-${day}`}
                    onClick={(e) => handleTdBtnClick(e)}
                    dayClicked={
                      checkInTime === clickedTime ||
                      checkOutTime === clickedTime
                    }
                  >
                    {day}
                  </DayTdButton>
                </DayTd>
              );
            })}
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
  box-sizing: border-box;

  background: ${({ day, dayInterval }) =>
    dayInterval && day !== ' ' ? '#f2f2f2' : 'none'};
  box-shadow: ${({ day, dayInterval }) =>
    dayInterval && day !== ' '
      ? '0 0 4px 0 #F2F2F2, 4px 0 4px 0 #F2F2F2'
      : 'none'};
`;

const DayTdButton = styled.button`
  width: 100%;
  height: 100%;
  border-radius: 3rem;
  font-size: ${({ theme }) => theme.fontSizes.XXS};
  font-weight: 700;
  background: none;
  background-color: ${({ dayClicked }) => (dayClicked ? '#333' : 'none')};
  color: ${({ dayClicked }) => (dayClicked ? '#fff' : 'none')};
  :hover {
    box-shadow: ${({ day }) => (day !== ' ' ? '0 0 0 1px #333 inset' : 'none')};
    cursor: ${({ day, disabled }) =>
      day === ' ' || disabled ? 'default' : 'pointer'};
  }
`;

const DayTr = styled.tr`
  width: 21rem;
`;

export default SingleCalendar;
