import styled from 'styled-components';
import CalendarDate from './CalendarDate';
import CalendarHeader from './CalendarHeader';

interface dateType {
  year: number;
  month: number;
  date?: number;
}
export interface calendarDateType {
  year: number;
  month: number;
  todayDate?: dateType;
}

interface Props {
  calendarDate: calendarDateType;
}

const Calendar = ({ calendarDate: { year, month } }: Props) => {
  const monthData = getMonthData(year, month);
  return (
    <StyledCalendar>
      <CalendarHeader {...{ year, month }} />
      <CalendarDate {...{ monthData }} />
    </StyledCalendar>
  );
};

const getMonthData = (year: number, month: number): number[][] => {
  const monthArr: number[][] = [];
  const firstDay: number = new Date(year, month - 1).getDay();
  const lastDate: number = new Date(year, month, 0).getDate();
  let weekArr: number[] = new Array(7).fill(0);
  for (let i = 1; i <= lastDate; i++) {
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
