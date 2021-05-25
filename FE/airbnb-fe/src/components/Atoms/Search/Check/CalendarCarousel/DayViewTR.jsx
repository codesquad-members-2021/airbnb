import React from 'react';
import styled from 'styled-components';

const DayViewTR = () => {
  return (
    <table>
      <tbody>
        <DayViewTRDiv>
          <DayViewTD>일</DayViewTD>
          <DayViewTD>월</DayViewTD>
          <DayViewTD>화</DayViewTD>
          <DayViewTD>수</DayViewTD>
          <DayViewTD>목</DayViewTD>
          <DayViewTD>금</DayViewTD>
          <DayViewTD>토</DayViewTD>
        </DayViewTRDiv>
      </tbody>
    </table>
  );
};

const DayViewTRDiv = styled.tr`
  width: 21rem;
  display: flex;
  margin-right: 4.25rem;
  margin-bottom: 0.25rem;
`;
const DayViewTD = styled.td`
  width: 3rem;
  height: 1.5rem;
  font-size: 0.75rem;
  color: ${({ theme }) => theme.colors.gray3};
`;

export default DayViewTR;
