import { calendarDateType, dayType } from '../../../../recoil/calendarAtom';

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

export const getDateByTime = (time: number): date => {
  const date = new Date(time);
  return { year: date.getFullYear(), month: date.getMonth() + 1, day: date.getDate() };
};
