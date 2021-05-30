const createMonthArray = (year, month) => {
  let monthArr = [];
  let weekArr = [];
  let dayCnt = 1;

  const firstDayName = new Date(year, month - 1, 1).getDay(); //6
  //이번달 마지막 날짜
  const lastDay = new Date(year, month, 0).getDate();
  // i: 1주 j:요일
  for (let i = 0; i < 7; i++) {
    for (let j = 0; j < 7; j++) {
      if (weekArr.length >= 7) {
        monthArr.push(weekArr);
        weekArr = [];
      }
      // 이번달 시작 요일 전
      if (i === 0 && j < firstDayName) weekArr.push(' ');
      //이번달 시작 요일 주
      else if (i === 0 && j >= firstDayName) {
        weekArr.push(dayCnt);
        dayCnt++;
      }
      //이번달의 마지막날, 혹은 그 이전일 때
      else if (i > 0 && dayCnt <= lastDay) {
        weekArr.push(dayCnt);
        dayCnt++;
      } else if (dayCnt > lastDay && weekArr.length > 0) weekArr.push(' ');
    }
  }
  return monthArr;
};

export default createMonthArray;
