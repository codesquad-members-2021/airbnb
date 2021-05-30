import CalendarData from "./CalendarData";
import makeCalendarDataId from "@/Utils/makeCalendarDataId";
import { CalendarModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  row: string[] | number[];
  year?: number;
  month?: number;
  $isDayOfWeek?: boolean;
}

const CalendarRow = ({
  row,
  year = 0,
  month = 0,
  $isDayOfWeek = false,
}: Props) => {
  return (
    <S.CalendarRow $isDayOfWeek={$isDayOfWeek}>
      {row !== null &&
        row.map((data: string | number, index: number) => {
          const calendarData = makeCalendarDataId({ data, year, month });
          return (
            <CalendarData
              key={index}
              data={data}
              dataId={calendarData.dataId}
              $isNotDate={calendarData.$isNotDate}
            />
          );
        })}
    </S.CalendarRow>
  );
};

export default CalendarRow;
