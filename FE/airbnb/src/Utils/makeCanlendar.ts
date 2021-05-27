const makeCalendar = (year: number, month: number) => {
  const calendarRows = [];
  let dateCount = 1;
  const firstDay = new Date(year, month, 1).getDay();
  const lastDate = new Date(year, month + 1, 0).getDate();
  const week = Math.floor((lastDate + firstDay - 1) / 7) + 1;

  for (let i = 0; i < week; i++) {
    let calendarDatas = [];
    for (let j = 0; j < 7; j++) {
      if (i === 0 && j < firstDay) {
        calendarDatas.push(0);
      } else if (i === 0 && j === firstDay) {
        calendarDatas.push(dateCount++);
      } else if (i === 0 && j > firstDay) {
        calendarDatas.push(dateCount++);
      } else if (i > 0 && dateCount <= lastDate) {
        calendarDatas.push(dateCount++);
      } else if (dateCount > lastDate) {
        calendarDatas.push(0);
      }
    }
    calendarRows.push(calendarDatas);
  }

  return calendarRows;
};

export default makeCalendar;
