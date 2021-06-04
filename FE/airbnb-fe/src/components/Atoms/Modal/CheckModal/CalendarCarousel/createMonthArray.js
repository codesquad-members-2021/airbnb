const createMonthArray = (year, month) => {
  let monthArr = [];
  let weekArr = [];
  let dayCnt = 1;

  const firstDayName = new Date(year, month - 1, 1).getDay();
  const lastDay = new Date(year, month, 0).getDate();
  for (let i = 0; i < 7; i++) {
    for (let j = 0; j < 7; j++) {
      if (weekArr.length >= 7) {
        monthArr.push(weekArr);
        weekArr = [];
      }
      if (i === 0 && j < firstDayName) weekArr.push(' ');
      else if (i === 0 && j >= firstDayName) {
        weekArr.push(dayCnt);
        dayCnt++;
      } else if (i > 0 && dayCnt <= lastDay) {
        weekArr.push(dayCnt);
        dayCnt++;
      } else if (dayCnt > lastDay && weekArr.length > 0) weekArr.push(' ');
    }
  }
  return monthArr;
};

export default createMonthArray;
