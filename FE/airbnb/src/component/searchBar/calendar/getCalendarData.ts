interface Args {
  dayCount: number;
  lastDay: number;
  firstDayName?: number;
}

const getWeekData = ({ dayCount, lastDay, firstDayName = 0 }: Args): [number, string[]] => {
  const emptyWeek = new Array(7).fill(null);
  const week = emptyWeek.map((_, i) => {
    if (i < firstDayName || dayCount >= lastDay) return "";
    dayCount++;
    return `${dayCount}`;
  });
  return [dayCount, week];
};

const getCalendarData = (year: number, month: number): string[][] => {
  let weeksData: string[][] = [];
  const setFirstDate: Date = new Date(year, month, 1);
  const setLastDate: Date = new Date(year, month + 1, 0);
  const firstDayName: number = setFirstDate.getDay();
  const lastDay: number = setLastDate.getDate();

  let dayCount: number = 0;

  for (let i = 0; i < 6; i++) {
    if (dayCount === 0) {
      const [count, firstWeek] = getWeekData({ dayCount, lastDay, firstDayName });
      dayCount = count;
      weeksData.push(firstWeek);
    } else if (dayCount < lastDay) {
      const [count, restWeek] = getWeekData({ dayCount, lastDay });
      dayCount = count;
      weeksData.push(restWeek);
    }
    if (dayCount >= lastDay) break;
  }
  return weeksData;
};

const getTodayText = () => {
  const today = new Date();
  const [todayMonth, todayDate] = [today.getMonth(), today.getDate()];
  const yearStr = `${today.getFullYear()}`;
  const monthStr = todayMonth < 9 ? `0${todayMonth + 1}` : `${todayMonth + 1}`;
  const dateStr = todayDate < 10 ? `0${todayDate}` : `${todayDate}`;
  const todayText = yearStr + monthStr + dateStr;
  return todayText;
};

export { getCalendarData, getTodayText };
