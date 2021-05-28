// 요일은 일0 월1 화2 수3 목4 금5 토6
// 월은 0 ~ 11

// 오늘 날짜를 기반으로 무조건 1일부터 시작하는 월을 반환, nMonthOption으로 이전 달 & 다음 달 이동 가능 / Date로 반환
export const createMonthStartFromFirstDay = (nMouthOption: number = 0): Date => {
  const today = new Date();
  return new Date(today.getFullYear(), today.getMonth() + nMouthOption);
}

// 어떤 달의 시작 요일 반환 / number로 반환
const createStartDayOfMonth = (date: Date): number => date.getDay();

// 어떤 달의 마지막 날짜 반환 / number로 반환
const createLastDateOfMonth = (date: Date): number =>
  new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

// "~년 ~월"을 나타내는 Text(string) 반환
export const createYearMonthText = (date: Date): string =>
  `${date.getFullYear()}년 ${date.getMonth() + 1}월`;

// 어떤 달의 Dates를 Number 배열로 반환 (달력의 공백까지 계산, 공백은 0)
export const createDates = (date: Date): number[] => {
  const arrResultDates: number[] = [];

  const startDay = createStartDayOfMonth(date);
  const lastDate = createLastDateOfMonth(date);

  let nInputDate = 1,
    nEmptyCnt = startDay;
  const nMaxLength = lastDate + startDay;

  for (let i = 0; i < nMaxLength; i++) {
    if (nEmptyCnt > 0) {
      arrResultDates.push(0);
      nEmptyCnt--;
    } else {
      arrResultDates.push(nInputDate);
      nInputDate++;
    }
  }

  return arrResultDates;
};
