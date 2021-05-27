interface Args {
  data: string | number;
  year: number;
  month: number;
}

const makeCalendarDataId = ({ data, year, month }: Args) => {
  let dataId;
  let $isNotDate;
  if (typeof data === "string" || data === 0) {
    dataId = "0";
    $isNotDate = true;
  } else {
    let calMonth, calData;
    month < 9 ? (calMonth = `0${month + 1}`) : (calMonth = month + 1);
    data < 10 ? (calData = `0${data}`) : (calData = data);
    dataId = `${year}년 ${calMonth}월 ${calData}일`;
    $isNotDate = false;
  }
  return { dataId, $isNotDate };
};

export default makeCalendarDataId;
