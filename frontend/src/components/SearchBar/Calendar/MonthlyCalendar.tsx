import { useRecoilValue } from 'recoil';
import { calendarModalState,clickCountState } from 'recoil/Atoms';
import * as S from "components/SearchBar/Calendar/CalendarStyles";

interface MonthProps {
    monthType: string
}

const MonthlyCalendar:React.FunctionComponent<MonthProps> = ({monthType}) => {
  const { year, month, nextMonth, today} = useRecoilValue(calendarModalState);
  const clickCount = useRecoilValue(clickCountState)

  let currentMonth: number = 0;
  const getCalendarMonth = (type: string) => {
    switch (type){
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
        console.error("Unhandled month type! Check the type of the month!")
    }
  }

  getCalendarMonth(monthType);
  console.log("current", currentMonth) 
  let realMonth = new Date(year, currentMonth).getMonth()+1
  let realYear = new Date(year, currentMonth).getFullYear()

  const daysOfWeek: string[] = ["일", "월", "화", "수", "목", "금", "토"];
  const startDay: number = new Date(year, currentMonth, 1).getDay(); 
  const endDate: number = new Date(year, currentMonth+1 , 0).getDate();
  const emptyDates: (number | string)[] = Array(startDay).fill("");
  const filledDates = Array.from({ length : endDate },(_, i) => i + 1);
  const dates = [...emptyDates, ...filledDates];
  const calendarTemplate = dates.map((date, idx) => <div key={'date-' + idx}>{date}</div>)

  return (
      <S.CalendarLayout>
        <div className="title-container">
          <S.CurrentMonth>
            <div className="calendar-container">
              <div className="year_and_month">{realYear}년 {realMonth}월</div>
              <div className="days">{daysOfWeek.map(day => <span>{day}</span>)}</div>
              <div className="dates">{calendarTemplate}</div>
            </div>
          </S.CurrentMonth>
        </div>
      </S.CalendarLayout>
  );
};

export default MonthlyCalendar;

