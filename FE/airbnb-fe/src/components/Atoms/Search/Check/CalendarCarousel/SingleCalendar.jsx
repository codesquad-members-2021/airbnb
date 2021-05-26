import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '../..';
//달력 생성
const createMonthArray = (year, month) => {
  let monthArr = [];
  let weekArr = [];
  let dayCnt = 1;

  const firstDayName = new Date(year, month - 1, 1).getDay(); //6
  //이번달 마지막 날짜
  const lastDay = new Date(year, month, 0).getDate();
  // i: 1주 j:요일
  for (let i = 0; i < 7; i++) {
    for (let j = 0; j < 7; j++) {
      if (weekArr.length >= 7) {
        monthArr.push(weekArr);
        weekArr = [];
      }
      // 이번달 시작 요일 전
      if (i === 0 && j < firstDayName) weekArr.push(' ');
      //이번달 시작 요일 주
      else if (i === 0 && j >= firstDayName) {
        weekArr.push(dayCnt);
        dayCnt++;
      }
      //이번달의 마지막날, 혹은 그 이전일 때
      else if (i > 0 && dayCnt <= lastDay) {
        weekArr.push(dayCnt);
        dayCnt++;
      } else if (dayCnt > lastDay && weekArr.length > 0) weekArr.push(' ');
    }
  }
  return monthArr;
};

const SingleCalendar = ({ range }) => {
  const { calendarData, calDispatch } = useContext(SearchContext);
  const today = new Date(Date.now());
  const [year, month] = [today.getFullYear(), range + today.getMonth() + 1];
  const monthArr = createMonthArray(year, month);
  // console.log('달', monthArr);

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
    //채크인에 데이터가 있을 때
    if (checkInYear) {
      //체크아웃에 데이터가 있을 때
      if (checkOutYear) {
        //두번째로 누른 값이 저장된 checkIn 데이터보다 작을때
        if (checkInDate > clickedDate) {
          calDispatch({
            type: 'ADD_CHECKIN_DATA',
            payload: {
              year: clickedYear,
              month: clickedMonth,
              day: clickedDay,
            },
          });
          calDispatch({
            type: 'RESET_CHECKOUT_DATA',
          });
          //두번째로 누른값이 저장된 checkIn데이터보다 클때
        } else if (checkInDate <= clickedDate) {
          calDispatch({
            type: 'ADD_CHECKOUT_DATA',
            payload: {
              year: clickedYear,
              month: clickedMonth,
              day: clickedDay,
            },
          });
        }
        //체크아웃에 데이터가 없을 때
      } else {
        if (checkInDate > clickedDate) {
          calDispatch({
            type: 'ADD_CHECKIN_DATA',
            payload: {
              year: clickedYear,
              month: clickedMonth,
              day: clickedDay,
            },
          });
          //두번째로 누른값이 저장된 checkIn데이터보다 클때
        } else {
          calDispatch({
            type: 'ADD_CHECKOUT_DATA',
            payload: {
              year: clickedYear,
              month: clickedMonth,
              day: clickedDay,
            },
          });
        }
      }
    } else {
      calDispatch({
        type: 'ADD_CHECKIN_DATA',
        payload: {
          year: clickedYear,
          month: clickedMonth,
          day: clickedDay,
        },
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
