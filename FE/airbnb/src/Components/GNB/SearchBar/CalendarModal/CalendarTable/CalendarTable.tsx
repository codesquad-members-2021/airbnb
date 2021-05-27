import Title from "./Title";
import CalendarRow from "./CalendarRow";
import makeCalendar from "@/Utils/makeCanlendar";
import { CalendarModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  year: number;
  month: number;
}

const CalendarTable = ({ year, month }: Props) => {
  const dayOfTheWeek = ["일", "월", "화", "수", "목", "금", "토"];
  const calendarRows = makeCalendar(year, month);

  return (
    <S.CalendarTable>
      <Title title={`${year}년 ${month + 1}월`} />
      <S.CalendarBody>
        <CalendarRow row={dayOfTheWeek} $isDayOfWeek={true} />
        {calendarRows.map((row, index) => (
          <CalendarRow key={index} row={row} year={year} month={month} />
        ))}
      </S.CalendarBody>
    </S.CalendarTable>
  );
};

export default CalendarTable;
