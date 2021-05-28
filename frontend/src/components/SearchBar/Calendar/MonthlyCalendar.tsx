import { useRecoilValue } from 'recoil';
import { calendarModalState } from 'recoil/Atoms';
import * as S from "components/SearchBar/Calendar/CalendarStyles";

interface MonthProps {
    monthType: string
}

const MonthlyCalendar:React.FunctionComponent<MonthProps> = ({monthType}) => {
  const { year, month, today} = useRecoilValue(calendarModalState);
  const daysOfWeek: string[] = ["일", "월", "화", "수", "목", "금", "토"];
  const startDay: number = new Date(year, month, 1).getDay();
  const endDate: number = new Date(year, month, 0).getDate();
  const emptyDates: (number | string)[] = Array(startDay).fill("");
  const filledDates = Array.from({ length : endDate },(_, i) => i + 1);
  const dates = [...emptyDates, ...filledDates];
  const calendarTemplate = dates.map((date, idx) => <div key={'date-' + idx}>{date}</div>)
  console.log(monthType);

  return (
      <S.CalendarLayout>
        <div className="title-container">
          <S.CurrentMonth>
            <div className="calendar-container">

              <div className="year_and_month">{year}년 {month}월</div>
              <div className="days">{daysOfWeek.map(day => <span>{day}</span>)}</div>
              <div className="dates">{calendarTemplate}</div>
            </div>
          </S.CurrentMonth>
        </div>
      </S.CalendarLayout>
  );
};

export default MonthlyCalendar;

