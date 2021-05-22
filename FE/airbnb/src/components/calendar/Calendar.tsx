import styled from 'styled-components';
import CalendarDate from './CalendarDate';
import CalendarHeader from './CalendarHeader';

interface Props {
  year: number;
  month: number;
}

const Calendar = ({ year, month }: Props) => {
  const monthData = getMonthData(year, month);

  return (
    <StyledCalendar>
      <CalendarHeader {...{ year, month }} />
      <CalendarDate {...{ monthData }} />
    </StyledCalendar>
  );
};

const isLeafYear = (year: number): boolean => {
  if (year % 400 === 0) return true;
  else if (year % 100 === 0) return false;
  else if (year % 4 === 0) return true;
  else return false;
};

const getMonthData = (year: number, month: number): number[][] => {
  const MONTH_DAYS: number[] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  const monthArr: number[][] = [];
  const firstDay: number = new Date(year, month - 1).getDay();
  let weekArr: number[] = new Array(7).fill(0);
  const lastDay: number = isLeafYear(year) && month === 2 ? 29 : MONTH_DAYS[month - 1];
  for (let i = 1; i <= lastDay; i++) {
    const dayIndex: number = (firstDay + i - 1) % 7;
    //인덱스가 0 && weekArr에 값이 하나라도 들어가있는 경우
    if (dayIndex === 0 && weekArr[weekArr.length - 1]) {
      monthArr.push(weekArr);
      weekArr = new Array(7).fill(0);
    }
    weekArr[dayIndex] = i;
  }
  monthArr.push(weekArr); //마지막 weekArr도 추가
  return monthArr;
};

export default Calendar;

const StyledCalendar = styled.div`
  width: 336px;
`;
