export default function getCalendarMatrix(momentObj) {
  const startDay = momentObj.clone().startOf('month').startOf('week');
  const endDay = momentObj.clone().endOf('month');
  const day = startDay.clone().subtract(1, 'day');
  const calendarMatrix = [];

  while (day.isBefore(endDay, 'day')) {
    calendarMatrix.push(
      Array(7)
        .fill(0)
        .map(() => day.add(1, 'day').clone())
    );
  }

  // first week에서 이전 달의 날짜 null로 바꾸기
  calendarMatrix[0] = calendarMatrix[0].map((dayMoment) =>
    dayMoment.month() === momentObj.month() ? dayMoment : null
  );

  // last week에서 다음 달의 날짜 null로 바꾸기
  calendarMatrix[calendarMatrix.length - 1] = calendarMatrix[
    calendarMatrix.length - 1
  ].map((dayMoment) =>
    dayMoment.month() === momentObj.month() ? dayMoment : null
  );

  return calendarMatrix; // 각 원소는 해당 날짜의 정보가 담긴 moment 객체
}
