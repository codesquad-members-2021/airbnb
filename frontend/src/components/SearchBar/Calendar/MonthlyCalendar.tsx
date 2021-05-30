import { useRecoilState, useRecoilValue, useSetRecoilState } from "recoil";
import { useState } from "react";
import {
  calendarModalState,
  calendarState,
  searchBarClickState,
} from "recoil/Atoms";
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import {
  daysOfWeek,
  getDateList,
  getCalendarMonth,
  getValidDateClassName,
} from "util/Calendar";

interface MonthProps {
  monthType: string;
}

const MonthlyCalendar: React.FunctionComponent<MonthProps> = ({
  monthType,
}) => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const { year, month, today } = useRecoilValue(calendarModalState);
  const [checkInOut, setCheckInOut] = useRecoilState(calendarState);
  const { checkIn, checkOut } = checkInOut;
  const currentMonth = getCalendarMonth(monthType, month);
  const dates = getDateList(year, currentMonth);
  const realMonth = new Date(year, currentMonth).getMonth() + 1;
  const realYear = new Date(year, currentMonth).getFullYear();

  const handleDateClick = (e: React.MouseEvent<Element, MouseEvent>): void => {
    const targetDate = Number(e.currentTarget.textContent);
    const targetDateObj = new Date(year, currentMonth, targetDate);
    console.log(targetDateObj);
    if (!checkIn.month) {
      setCheckInOut({
        ...checkInOut,
        checkIn: {
          month: currentMonth + 1,
          date: targetDate,
          dateObj: new Date(year, currentMonth, targetDate),
        },
      });
      setsSearchBarClick("OUT");
    } else {
      if (targetDateObj < checkIn.dateObj) {
        setsSearchBarClick("IN");
        setCheckInOut({
          ...checkInOut,
          checkIn: {
            month: currentMonth + 1,
            date: targetDate,
            dateObj: targetDateObj,
          },
        });
      } else {
        setsSearchBarClick("OUT");
        setCheckInOut({
          ...checkInOut,
          checkOut: {
            month: currentMonth + 1,
            date: targetDate,
            dateObj: new Date(year, currentMonth, targetDate),
          },
        });
      }
      //check in으로 정한 날짜랑 지금 선택한 날짜랑 비교하는 식 필요 date 객체로 비교해야함
    }
  };

  const calendarTemplate = dates.map((date, idx) => (
    <div
      className={getValidDateClassName(year, currentMonth, date)}
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
