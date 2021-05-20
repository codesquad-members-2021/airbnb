import React from 'react'
import styled from 'styled-components';
import ArrowBackIosIcon from '@material-ui/icons/ArrowBackIos';
import ArrowForwardIosIcon from '@material-ui/icons/ArrowForwardIos';
import { IconButton } from "@material-ui/core";
import { monthIndexAtom, calendarClickAtom } from '../../recoil/atoms';
import { useRecoilState } from 'recoil';
import { getYearAndMonth, getDayArray } from '../../utils/calendarUtil';

type MonthProps = {
  left?: string;
  right?: string;
  date: Date;
}

const Month = ({ left, right, date }: MonthProps) => {
  const [, setMonthIndex] = useRecoilState(monthIndexAtom);
  const [calendarClickState, setCalendarClickState] = useRecoilState(calendarClickAtom);
  const [checkInTime, checkOutTime] = calendarClickState;

  const handleClickMonthMove = (moveCount: number) => () => {
    setMonthIndex(month => month + moveCount * 2);
  }

  const handleClickDaySelect = ({ currentTarget }: React.MouseEvent<HTMLElement>) => {
    if (currentTarget.getAttribute('aria-disabled') === 'true' || !currentTarget.innerText) return;
    const targetTime = Number(currentTarget.dataset.date);
    setCalendarClickState(([checkInTime, checkOutTime]) => {
      if (!checkInTime) return [targetTime];
      if (!checkOutTime) return [checkInTime, targetTime];
      if (checkOutTime === targetTime) return [targetTime, checkOutTime];
      return targetTime < checkInTime ? [targetTime, checkOutTime] : [checkInTime, targetTime];
    })
  }

  const dayArray = getDayArray(date);
  const yearAndMonth = getYearAndMonth(date);
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
        {yearAndMonth}
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
                const dayTime = new Date(yearAndMonth.replace(/\D+/g, '-') + day).getTime();
                return (
                  <td
                    key={`day-td-${index}`}
                    onClick={handleClickDaySelect}
                    aria-selected={checkInTime === dayTime || checkOutTime === dayTime}
                    aria-checked={checkInTime < dayTime && dayTime < checkOutTime}
                    aria-disabled={!!day.replace(/\d/g, '')}
                    data-date={day && dayTime ? dayTime : ''}
                  >
                    {day.replace(/\D/g, '')}
                  </td>
                );
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
      margin-top:.2rem;
    }
  }
  td{  
      &[aria-disabled='true'] {
          color: #BDBDBD;
      }
      &[aria-selected='true']:not(:empty) {
        background: #333333;
        border-radius: 50%;
        color:#fff;
      
      }
      &[aria-checked='true']:not(:empty){
        background: #F7F7F7;
        box-shadow: 0 0 4px 0 #F7F7F7, 4px 0 4px 0 #F7F7F7
      }
      &:hover{
        &[aria-disabled='false']:not(:empty){
            cursor:pointer;
        }
      }
      &:before {
        content: '';
        display:block;
        padding-bottom: 37%;
      }   
      &:after {
        content: '';
        display:block;
        padding-bottom: 37%;
      }     
    }
`;
export default Month;
