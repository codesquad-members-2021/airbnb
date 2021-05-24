import React from 'react';
import styled from 'styled-components';

const createMonthArray = (range) => {
  let monthArr = [];
  let weekArr = [];
  let dayCnt = 1;

  const today = new Date(Date.now());
  const [year, month] = [today.getFullYear(), range + today.getMonth()];
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
  const monthArr = createMonthArray(range);
  // console.log('달', monthArr);
  return (
    <SingleCalDiv>
      <tbody>
        {monthArr?.map((week, idx) => (
          <DayTr key={idx}>
            {week?.map((day, idx) => (
              <DayTd key={idx}>{day}</DayTd>
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
  border-radius: 3rem;
  font-size: ${({ theme }) => theme.fontSizes.TS};
  font-weight: 700;
  cursor: pointer;
  &:hover {
    border: 1px solid #333;
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
