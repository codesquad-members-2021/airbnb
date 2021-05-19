export const currentDate: Date = new Date();

export const getDate = (date: Date, monthIndex: number): Date => {
  return new Date(date.getFullYear(), date.getMonth() + monthIndex, 1);
}

export const getLastDayNumber = (date: Date): number => {
  return new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();
}

export const getFirstDayOfMonthNumber = (date: Date): number => {
  return new Date(date.getFullYear(), date.getMonth(), 1).getDay();
}

export const getYearAndMonth = (date: Date): string => {
  return `${date.getFullYear()}년 ${date.getMonth() + 1}월`;
}

export const getMonthAndDay = (dateTime:number): string => {
  const date = new Date(dateTime);
  return `${date.getMonth() + 1}월 ${date.getDate()}일`
}

export const getDayArray = (date :Date): Array<Array<string>> => {
  const lastDayNumber = getLastDayNumber(date); 
  const firstDayNumber = getFirstDayOfMonthNumber(date); 
  let dayCount = 0;

  const dayArray = Array.from({ length: 6 }, (_, idx) => Array.from({ length: 7 }, (_, i) => {
    if (lastDayNumber < dayCount + 1) return '';
    const checkPastDate  = new Date(date.getFullYear(), date.getMonth(), dayCount + 2).getTime() < currentDate.getTime();
    if (idx === 0) {
      return i >= firstDayNumber ? checkPastDate ? '-' + (++dayCount).toString() : (++dayCount).toString() : '';
    } else {
      return checkPastDate ? '-' + (++dayCount).toString() : (++dayCount).toString();
    }
  }));
  
  return dayArray.filter(arr => arr.find(day => day !== '')); //마지막 배열에 값이 없으면 삭제하기
}