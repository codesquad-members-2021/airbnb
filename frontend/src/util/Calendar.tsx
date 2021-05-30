export const daysOfWeek: string[] = ["일", "월", "화", "수", "목", "금", "토"];

export const getDateList = (year: number, currentMonth: number) => {
  const startDay: number = new Date(year, currentMonth, 1).getDay();
  const endDate: number = new Date(year, currentMonth + 1, 0).getDate();
  const emptyDates: number[] = Array(startDay).fill("");
  const filledDates = Array.from({ length: endDate }, (_, i) => i + 1);

  return [...emptyDates, ...filledDates];
};

export const getCalendarMonth = (type: string, month: number) => {
  switch (type) {
    case "PREVIOUS":
      return month - 1;
      break;
    case "CURRENT":
      return month;
      break;
    case "NEXT":
      return month + 1;
      break;
    case "MONTH_AFTER_NEXT":
      return month + 2;
      break;
    default:
      console.error("Unhandled month type! Check the type of the month!");
      return 0;
  }
};

export const getValidDateClassName = (
  year: number,
  currentMonth: number,
  date: number
) => {
  const calendarDate = new Date(year, currentMonth, date);
  return !date || calendarDate < new Date() ? "invalid-date" : "valid-date";
};
