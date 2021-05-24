import React from 'react';
import styled from 'styled-components';

const SingleCalendar = ({ range }) => {
  const createMonthArray = (range) => {
    const today = new Date(Date.now());
    const MonthArr = [];
    const weekArr = [];
    const [year, month] = [today.getFullYear(), range + today.getMonth()];
    //요일
    const firstDay = new Date(year, today.getMonth(), 1);
    const lastDay = new Date(year, today.getMonth() + 1, 0);
    // const lasDay = new Date(year, month, 0).getDate();

    for (let i = 0; i <= 6; i++) {
      //firstDay의 요일까지  week에 공백으로 채우고,
      // first DAy부터 쭉 숫자를 week에 하나씩 넣는데
      // week의 length가 7이되면 줄바꿈 용도로 montharr.push(week)
    }

    console.log('firstDaty', firstDay.getDay());
    console.log('hi lastDay', lastDay.getDay());
    // console.log(new Date(today.getYear(), today.getMonth() + 1, 1));
  };
  createMonthArray(range);

  return (
    <SingleCalDiv>
      <thead></thead>
      <tbody>
        {Array.from({ length: 6 }).map((v) => (
          <DayTr>
            <DayTd>1</DayTd>
            <DayTd>2</DayTd>
            <DayTd>3</DayTd>
            <DayTd>4</DayTd>
            <DayTd>5</DayTd>
            <DayTd>6</DayTd>
            <DayTd>7</DayTd>
          </DayTr>
        ))}
      </tbody>
    </SingleCalDiv>
  );
};

const SingleCalDiv = styled.table`
  height: 16.5rem;
  border: 1px solid #ff0000;
  width: 21rem;
  margin: 0 2.125rem;
`;

const DayTd = styled.td`
  width: 3rem;
  height: 3rem;
  border: 1px solid gray;
  font-size: ${({ theme }) => theme.fontSizes.XXS};
`;

const DayTr = styled.tr`
  width: 21rem;
`;

export default SingleCalendar;
