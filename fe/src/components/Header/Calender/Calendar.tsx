import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';
import Day from './Day';

type Props = {
  calendarDate: {
    year: number;
    month: number;
  };
  idx: number;
};

const Calendar = ({ calendarDate, idx }: Props) => {
  const { year, month } = calendarDate;

  const currentMonth = new Date(year, month + idx).getMonth() + 1;
  const currentYear = new Date(year, month + idx).getFullYear();

  const firstDay: number = new Date(year, month + idx).getDay();
  const days: number = new Date(year, currentMonth, 0).getDate();

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
        {currentYear}년 {currentMonth}월
      </h3>
      <DatesWrap>
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
  margin: 48px 0;
  width: 336px;
  height: 336px;
`;
