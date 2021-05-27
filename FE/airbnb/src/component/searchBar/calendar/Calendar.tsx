import styled from "styled-components";
import { useRecoilState, useSetRecoilState } from "recoil";
import { checkinDateState, checkoutDateState, hoverDateState } from "state/atoms/calendarAtoms";
import Day from "component/searchBar/calendar/Day";
import getCalendarData from "component/searchBar/calendar/getCalendarData";

interface Props {
  year: number;
  month: number;
  today: string;
}

function Calendar({ year, month, today }: Props) {
  const days = ["일", "월", "화", "수", "목", "금", "토"];
  const [checkinDate, setCheckinDate] = useRecoilState(checkinDateState);
  const [checkoutDate, setCheckoutDate] = useRecoilState(checkoutDateState);
  const setHoverDate = useSetRecoilState(hoverDateState);

  if (month < 0) {
    month += 12;
    year--;
  }
  if (month > 11) {
    month -= 12;
    year++;
  }
  const weeksData = getCalendarData(year, month);
  const didntSelect = "날짜 입력";

  const handleClickDate = (e: React.MouseEvent<HTMLTableElement>): void => {
    const target = e.target as HTMLElement;
    const div: HTMLDivElement | null = target.closest(".dayDiv");
    if (!div || !div.dataset.date) return;
    if (+div.dataset.date < +today) return;

    const selectedDate: string = div.dataset.date;
    if (checkinDate === didntSelect) setCheckinDate(selectedDate);
    else if (+selectedDate < +checkinDate) {
      setCheckinDate(selectedDate);
      setCheckoutDate(didntSelect);
      setHoverDate(selectedDate);
    } else {
      setCheckoutDate(selectedDate);
      setHoverDate(selectedDate);
    }
  };

  const handleMouseOverDate = (e: React.MouseEvent<HTMLTableElement>): void => {
    if (checkinDate === didntSelect || checkoutDate !== didntSelect) return;
    const target = e.target as HTMLElement;
    const div: HTMLDivElement | null = target.closest(".dayDiv");
    if (!div || !div.dataset.date) return;

    const enteredDate: string = div.dataset.date;
    setHoverDate(enteredDate);
  };

  return (
    <CalendarContainer>
      <CalendarTitle>
        {year}년 {month + 1}월
      </CalendarTitle>
      <CalendarTable onClick={handleClickDate} onMouseOver={handleMouseOverDate}>
        <thead>
          <tr>
            {days.map((day) => (
              <th key={day}>{day}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {weeksData.map((week, i) => (
            <tr key={year + month + i}>
              {week.map((day, i) => (
                <Day key={day + i} day={day} year={year} month={month} today={today} />
              ))}
            </tr>
          ))}
        </tbody>
      </CalendarTable>
    </CalendarContainer>
  );
}

export default Calendar;

const CalendarContainer = styled.div`
  width: 336px;
  display: flex;
  flex-direction: column;
  align-items: center;
`;
const CalendarTitle = styled.div`
  margin: 5px 0 24px;
  font-weight: bold;
`;
const CalendarTable = styled.table`
  th {
    width: 48px;
    height: 24px;
    font-size: 12px;
    color: ${({ theme }) => theme.color.gray3};
    line-height: 24px;
  }
`;
