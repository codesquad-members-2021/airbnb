import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '../..';

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
    const dateArr = e.target.dataset.day.split('-').map(Number); // "2021-5-26"
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

    if (checkInYear && checkInMonth && checkInDay) {
      if (checkOutYear && checkOutMonth && checkOutDay) {
      } else if (
        checkInYear > parseInt(dateArr[0]) ||
        checkInMonth > parseInt(dateArr[1]) ||
        checkInDay > parseInt(dateArr[2])
      ) {
        //두번째로 누른 값이 저장된 checkIn 데이터보다 작을때
        calDispatch({
          type: 'ADD_CHECKIN_DATA',
          payload: {
            year: parseInt(dateArr[0]),
            month: parseInt(dateArr[1]),
            day: parseInt(dateArr[2]),
          },
        });
        // calDispatch({
        //   type: 'ADD_CHECKOUT_DATA',
        //   payload: {
        //     year: 0,
        //     month: 0,
        //     day: 0,
        //   },
        // });
      } else {
        //두번째로 누른 값이 저장된 checkIn 데이터보다 클 때 ( 즉 정상 작동 )
        calDispatch({
          type: 'ADD_CHECKOUT_DATA',
          payload: {
            year: parseInt(dateArr[0]),
            month: parseInt(dateArr[1]),
            day: parseInt(dateArr[2]),
          },
        });
      }
    } else {
      calDispatch({
        type: 'ADD_CHECKIN_DATA',
        payload: {
          year: parseInt(dateArr[0]),
          month: parseInt(dateArr[1]),
          day: parseInt(dateArr[2]),
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
  /* height: 16.5rem; */
  border: 1px solid #ff0000;
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
  font-size: ${({ theme }) => theme.fontSizes.TS};
  font-weight: 700;
  /* cursor: pointer; */
  background: none;
  &:hover {
    border: ${({ day, disabled }) =>
      day === ' ' || disabled ? 'none' : '1px solid gray'};
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
