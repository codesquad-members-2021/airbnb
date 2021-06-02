import { useRecoilState, useRecoilValue, useSetRecoilState } from "recoil";
import {
  calendarModalState,
  checkInState,
  checkOutState,
  searchBarClickState,
} from "recoil/Atoms";
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import {
  daysOfWeek,
  getDateList,
  getCalendarMonth,
  getValidDateClassName,
} from "util/Calendar";
import { search } from "util/enum";
interface MonthProps {
  monthType: string;
}

const MonthlyCalendar: React.FunctionComponent<MonthProps> = ({
  monthType,
}) => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const { year, month, today } = useRecoilValue(calendarModalState);
  const [checkIn, setCheckIn] = useRecoilState(checkInState);
  const [checkOut, setCheckOut] = useRecoilState(checkOutState);
  const currentMonth = getCalendarMonth(monthType, month); //text
  const dates = getDateList(year, currentMonth);
  const monthText = new Date(year, currentMonth).getMonth() + 1;
  const yearText = new Date(year, currentMonth).getFullYear();

  const handleDateClick = (e: React.MouseEvent<Element, MouseEvent>): void => {
    const targetDate = Number(e.currentTarget.textContent);
    const targetDateObj = new Date(year, currentMonth, targetDate);
    if (!checkIn.month) {
      setCheckIn({
        year: targetDateObj.getFullYear(),
        month: currentMonth,
        date: targetDate,
        dateObj: new Date(year, currentMonth, targetDate),
      });
      setsSearchBarClick(search.out);
    } else {
      if (targetDateObj < checkIn.dateObj) {
        setsSearchBarClick(search.in);
        setCheckIn({
          year: targetDateObj.getFullYear(),
          month: targetDateObj.getMonth(),
          date: targetDate,
          dateObj: targetDateObj,
        });
      } else {
        setsSearchBarClick(search.out);
        setCheckOut({
          year: targetDateObj.getFullYear(),
          month: currentMonth,
          date: targetDate,
          dateObj: targetDateObj,
        });
      }
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
              {yearText}년 {currentMonth + 1 === 13 ? 1 : currentMonth + 1}월
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
