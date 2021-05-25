import styled from "styled-components";
import { useCalendarMethod } from "./CalendarProvider";
import { DAYS } from "./constant";
import { Calendar } from "./type";

export default function CalendarItem({ year, month, day, firstDay }: Calendar) {
  const empty = createEmpty(firstDay);
  const days = createDays(day);

  return (
    <CalendarItemWrapper>
      <CalendarItemYearMonth>
        {year}년 {month}월
      </CalendarItemYearMonth>
      <CalendarItemDays>
        {empty.map((el) => (
          <DayWrapper />
        ))}
        {days.map((day) => (
          <Day {...{ year, month, day, firstDay }} />
        ))}
      </CalendarItemDays>
    </CalendarItemWrapper>
  );
}

function createDays(day: number): number[] {
  const days = Array.from({ length: day }, (_, i) => i + 1);
  return days;
}
function createEmpty(firstDay: number): string[] {
  const empty = Array.from({ length: firstDay }, () => " ");
  return empty;
}

function Day({ year, month, day, firstDay }: Calendar) {
  const method = useCalendarMethod();
  const { onClickDay } = method;
  const result = {
    year,
    month,
    day,
    week: getWeek(firstDay, day),
  };

  return (
    <DayWrapper>
      <DayCircle
        onClick={() => {
          if (!onClickDay) return;
          onClickDay(result);
        }}
      >
        {day}
      </DayCircle>
    </DayWrapper>
  );
}
function getWeek(firstDay: number, day: number): string {
  const i = (firstDay + day - 1) % 7;
  return DAYS[i];
}

const CalendarItemWrapper = styled.ul``;
const CalendarItemYearMonth = styled.div`
  text-align: center;
  margin-bottom: 2.5rem;
`;
const CalendarItemDays = styled.ul`
  box-sizing: border-box;
  width: 100%;
  padding: 0 2rem;
  display: flex;
  flex-wrap: wrap;
`;
const DayWrapper = styled.li`
  position: relative;
  width: calc(100% / 7);
  &:after {
    content: "";
    display: block;
    padding-bottom: 100%;
  }
`;
const DayCircle = styled.div`
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  &:hover {
    background: tan;
  }
`;
