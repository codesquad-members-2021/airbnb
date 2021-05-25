import styled from 'styled-components';
import { calendarDateType, dateType } from '../../recoil/headerAtom';
import CalendarDate from './CalendarDate';
import CalendarHeader from './CalendarHeader';

interface Props {
  calendarDate: calendarDateType;
}
export interface dayType {
  date: number;
  isAble: boolean;
}
const Calendar = ({ calendarDate: { year, month, todayDate } }: Props) => {
  const monthData = getMonthData(year, month, todayDate);
  return (
    <StyledCalendar>
      <CalendarHeader {...{ year, month }} />
      <CalendarDate {...{ monthData }} />
    </StyledCalendar>
  );
};

const getMonthData = (year: number, month: number, todayDate: dateType): dayType[][] => {
  const { year: todayYear, month: todayMonth, date: todayDay } = todayDate;

  const monthArr: dayType[][] = [];
  const firstDay: number = new Date(year, month - 1).getDay();
  const lastDate: number = new Date(year, month, 0).getDate();
  let weekArr: dayType[] = new Array(7).fill(0);
  for (let i = 1; i <= lastDate; i++) {
    let isAble = true;
    if (year < todayYear || month < todayMonth) isAble = false;
    if (year === todayYear && month === todayMonth && i < todayDay) isAble = false;
    const dayIndex: number = (firstDay + i - 1) % 7;
    //인덱스가 0 && weekArr에 값이 하나라도 들어가있는 경우
    if (dayIndex === 0 && weekArr[weekArr.length - 1]) {
      monthArr.push(weekArr);
      weekArr = new Array(7).fill(0);
    }
    weekArr[dayIndex] = { date: i, isAble };
  }
  monthArr.push(weekArr); //마지막 weekArr도 추가
  return monthArr;
};

export default Calendar;

const StyledCalendar = styled.div`
  width: 336px;
`;
