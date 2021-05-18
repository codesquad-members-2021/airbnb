import React from 'react'
import styled from 'styled-components';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { IconButton } from "@material-ui/core";
import { monthIndexAtom } from '../../recoil/atoms';
import { useRecoilState } from 'recoil';
import { getYearAndMonth, getDayArray } from '../../utils/calendar';

type MonthProps = {
  left?: string;
  right?: string;
  date: Date;
}

const Month = ({ left, right, date }: MonthProps) => {
  const [, setMonthIndex] = useRecoilState(monthIndexAtom);

  const handleClickMonthMove = (moveCount: number) => () => {
    setMonthIndex(month => month + moveCount * 2);
  }

  const dayArray = getDayArray(date);

  return (
    <MonthWrapper>
      <MonthTitle>
        <IconButton
          style={{ position: 'absolute', left, right, bottom: '-15px' }}
          onClick={handleClickMonthMove(left ? -1 : 1)}>
          {left
            ? <ArrowBackIosIcon />
            : <ArrowForwardIosIcon />}
        </IconButton>
        {getYearAndMonth(date)}
      </MonthTitle>
      <DayTable>
        <thead>
          <tr>
            <th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>
          </tr>
        </thead>
        <tbody>
          {dayArray.map((td, idx) => {
            return (<tr key={`week-tr-${idx}`}>
              {td.map((day, index) => {
                return (<td key={`day-td-${index}`}>{day}</td>);
              })}
            </tr>)
          })}
        </tbody>
      </DayTable>
    </MonthWrapper>
  )
}

const MonthWrapper = styled.div`
  width: 50%;
  height: 100%;
`;

const MonthTitle = styled.div`
  position:relative;
  font-weight:700;
  margin-bottom: 1.5rem;
  text-align: center;
`;

const DayTable = styled.table`
  width: 100%;
  font-size:12px;
  text-align:center;
  font-weight:700;
  &>thead{
    color:#828282;
  }
  &>tbody{
    &>tr{
      height: 4rem;
      margin-top:.2rem;
      &>td{
        border-radius:50%;
        &:hover{
          cursor:pointer;
        }
      }
    }
  }
`;
export default Month;
