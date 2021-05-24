import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';

import DayOfTheWeek from './DayOfTheWeek';

type Props = {
  calendarDate: {
    year: number;
    month: number;
  };
  idx: number;
};

const Calendar = ({ calendarDate, idx }: Props) => {
  const { year, month } = calendarDate;

  const firstDay: number = new Date(year, month + idx).getDay();
  const days: number = new Date(year, month + idx, 0).getDate();

  const getDayList = (): number[][] => {
    const dayList: number[][] = [];
    let week: number[] = new Array(7).fill(0);

    for (let i = 1; i <= days; i++) {
      const dayIndex: number = (firstDay + i - 1) % 7;
      if (dayIndex % 7 === 0 || week[week.length - 1]) {
        dayList.push(week);
        week = new Array(7).fill(0);
      }
      week[dayIndex] = i;
    }
    dayList.push(week);
    return dayList;
  };

  const dayList = getDayList();

  return (
    <StyledDiv>
      <h3>
        {year}년 {month + 1 + idx}월
      </h3>
      <DatesWrap>
        <DayOfTheWeek />
        <table>
          <tbody>
            {dayList.map((week, i) => {
              return (
                <tr key={uuidv4()}>
                  {week.map((day) => {
                    if (day === 0) return <td key={uuidv4()}></td>;
                    return <Day key={day}>{day}</Day>;
                  })}
                </tr>
              );
            })}
          </tbody>
        </table>
      </DatesWrap>
    </StyledDiv>
  );
};

export default Calendar;

const StyledDiv = styled.div`
  margin: 4rem 3rem;
  width: 336px;
  height: 384px;
  text-align: center;
`;

const DatesWrap = styled.div`
  width: 336px;
  height: 336px;
`;

const Row = styled.tr`
  width: 100%;
`;

const Day = styled.td`
  width: 48px;
  height: 48px;
  text-align: center;
`;
