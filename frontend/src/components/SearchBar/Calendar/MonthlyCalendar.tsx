import { useRecoilState, useRecoilValue } from "recoil";
import { useState } from "react";
import { calendarModalState, calendarFilterState } from "recoil/Atoms";
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import DateBlock from "./DateBlock";
interface MonthProps {
  monthType: string;
}

const MonthlyCalendar: React.FunctionComponent<MonthProps> = ({
  monthType,
}) => {
  const { year, month, nextMonth, today } = useRecoilValue(calendarModalState);
  const [checkInOut, setCheckInOut] = useRecoilState(calendarFilterState);
  const { checkIn, checkOut } = checkInOut;

  let currentMonth: number = 0;

  const getCalendarMonth = (type: string) => {
    switch (type) {
      case "PREVIOUS":
        currentMonth = month - 1;
        break;
      case "CURRENT":
        currentMonth = month;
        break;
      case "NEXT":
        currentMonth = month + 1;
        break;
      case "MONTH_AFTER_NEXT":
        currentMonth = month + 2;
        break;
      default:
        console.error("Unhandled month type! Check the type of the month!");
    }
  };
  const checkValidDate = (date: number) => {
    const calendarDate = new Date(year, currentMonth, date);
    return !date || calendarDate < new Date() ? "invalid-date" : "valid-date";
  };

  getCalendarMonth(monthType);

  let realMonth = new Date(year, currentMonth).getMonth() + 1;
  let realYear = new Date(year, currentMonth).getFullYear();

  const daysOfWeek: string[] = ["일", "월", "화", "수", "목", "금", "토"];
  const startDay: number = new Date(year, currentMonth, 1).getDay();
  const endDate: number = new Date(year, currentMonth + 1, 0).getDate();
  const emptyDates: number[] = Array(startDay).fill("");
  const filledDates = Array.from({ length: endDate }, (_, i) => i + 1);
  const dates = [...emptyDates, ...filledDates];
  const [clickFlag, setClickFlag] = useState(false);
  const handleDateClick = (e: React.MouseEvent<Element, MouseEvent>): void => {
    const targetDate = Number(e.currentTarget.textContent);
    if (!checkIn.month) {
      setCheckInOut({
        ...checkInOut,
        checkIn: { month: month + 1, date: targetDate },
      });
    }
    console.log(year, month);
  };
  const calendarTemplate = dates.map((date, idx) => (
    <div
      className={checkValidDate(date)}
      key={"date-" + idx}
      onClick={handleDateClick}
    >
      {date}
    </div>
  ));

  return (
    <S.CalendarLayout>
      <div className="title-container">
        <S.CurrentMonth>
          <div className="calendar-container">
            <div className="year_and_month">
              {realYear}년 {realMonth}월
            </div>
            <div className="days">
              {daysOfWeek.map((day, idx) => (
                <span key={`day-${idx}`}>{day}</span>
              ))}
            </div>
            <div className="dates">{calendarTemplate}</div>
          </div>
        </S.CurrentMonth>
      </div>
    </S.CalendarLayout>
  );
};

export default MonthlyCalendar;
