import React from 'react';
import styled from 'styled-components';

const SingleCalendar = ({ range }) => {
  return (
    <SingleCalDiv>
      <table>
        <DayTr>
          <DayTd>1</DayTd>
          <DayTd>2</DayTd>
          <DayTd>3</DayTd>
          <DayTd>4</DayTd>
          <DayTd>5</DayTd>
          <DayTd>6</DayTd>
          <DayTd>7</DayTd>
        </DayTr>
        <DayTr>
          <DayTd>7</DayTd>
          <DayTd>8</DayTd>
          <DayTd>9</DayTd>
          <DayTd>10</DayTd>
          <DayTd>11</DayTd>
          <DayTd>12</DayTd>
          <DayTd>7</DayTd>
        </DayTr>
        <DayTr>
          <DayTd>7</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
        </DayTr>
        <DayTr>
          <DayTd>7</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
        </DayTr>
        <DayTr>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
          <DayTd>1</DayTd>
        </DayTr>
      </table>
    </SingleCalDiv>
  );
};

const SingleCalDiv = styled.div`
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
