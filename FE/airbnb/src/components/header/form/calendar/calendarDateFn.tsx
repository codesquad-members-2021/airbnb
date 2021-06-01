import { calendarDateType, dayType } from '../../../../recoil/calendarAtom';
import { pipe } from '../../../../util/util';

export const getMonthData = ({ year, month, todayDate }: calendarDateType): dayType[][] => {
  const { year: todayYear, month: todayMonth, date: todayDay } = todayDate;

  const monthArr: dayType[][] = [];
  const firstDay: number = new Date(year, month - 1).getDay();
  const lastDate: number = new Date(year, month, 0).getDate();
  let weekArr: dayType[] = new Array(7).fill(0);
  for (let i = 1; i <= lastDate; i++) {
    let isAble = true;
    if (year < todayYear || (year === todayYear && month < todayMonth)) isAble = false;
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

interface date {
  year: number;
  month: number;
  day: number;
}

export const getTimes = ({ year, month, day }: date): number =>
  new Date(year, month - 1, day).getTime();

export const getDateByTime = (time: number | null): date | void => {
  if (!time) return;
  const date = new Date(time);
  return { year: date.getFullYear(), month: date.getMonth() + 1, day: date.getDate() };
};

export const dateToString = (date: date | void): string => {
  if (!date) return '';
  let { year, month, day } = date;
  let newMonth = month + '';
  let newDay = day + '';
  if (month < 10) newMonth = '0' + month;
  if (day < 10) newDay = '0' + day;
  return `${year}-${newMonth}-${newDay}`;
};

const stringToDate = (date: string): date => {
  const [year, month, day] = date.split('-').map((v) => +v);
  return { year, month, day };
};

export const timeToDate = pipe(getDateByTime, dateToString);

export const dateToTime = pipe(stringToDate, getTimes);
