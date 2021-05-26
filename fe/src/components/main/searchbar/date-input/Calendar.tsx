import styled from "styled-components";
import CalendarTable from "./CalendarTable";

interface CalendarType {
  date: { year: number; mon: number };
}

const Calendar = ({ date }: CalendarType) => {
  const days = ["일", "월", "화", "수", "목", "금", "토"];
  const nowDate = new Date(date.year, date.mon - 1, 1).getDay();
  const dateLast = new Date(date.year, date.mon, 0).getDate();

  const makeDate = (startDay: number, daylength: number) => {
    let days = [];
    let arr = [];
    let day = 1;
    for (let i = 0; i < startDay; i++) arr.push(0);
    while (day <= daylength) {
      arr.push(day);
      if (arr.length === 7) {
        days.push(arr);
        arr = [];
      }
      day++;
    }
    days.push(arr);
    return days;
  };

  return (
    <StyledCalender>
      <CalenderTitle>{`${date.year}년 ${date.mon}월`}</CalenderTitle>
      <CalendarTable
        mon={date.mon}
        columns={days}
        data={makeDate(nowDate, dateLast)}
      />
    </StyledCalender>
  );
};

export default Calendar;

const StyledCalender = styled.div`
  display:flex;
  flex-direction: column;
  align-items: center;
  padding: 0 2rem;
`;
const CalenderTitle = styled.h5`
  font-size: 1rem;
  font-weight: 700;
  margin-bottom: 2rem;
`;
