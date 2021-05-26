import styled from "styled-components";
import { MouseEvent, useState } from "react";
import { useRecoilState } from "recoil";
import { CalendarData } from "atoms/searchbarAtom";

interface TableType {
  columns: string[];
  data: number[][];
  date: { year: number; mon: number };
}

const CalendarTable = ({ columns, data, date }: TableType) => {
  const [calendarDataState, setCalendarDataState] =
    useRecoilState(CalendarData);
  const [checkInTime, checkOutTime] = calendarDataState;

  const MouseEvent = ({ currentTarget }: MouseEvent<HTMLElement>) => {
    const targetTime = Number(currentTarget.dataset.date);

    setCalendarDataState(([checkInTime, checkOutTime]) => {
      if (!checkInTime) return [targetTime];
      if (checkOutTime === targetTime || checkInTime === targetTime)
        return [targetTime];
      if (targetTime < checkInTime) return [targetTime];
      return [checkInTime, targetTime];
    });
  };
  return (
    <StyldTable>
      <thead>
        <tr>
          {columns.map((column) => (
            <StyldDay key={`${date.mon}${column}`}>{column}</StyldDay>
          ))}
        </tr>
      </thead>
      <tbody>
        {data.map((row, i) => (
          <tr key={"tr" + i}>
            {row.map((item, j) => {
              const dayTime = new Date(
                `${date.year}-${date.mon}-${item}`
              ).getTime();
              const nowDayTime = new Date().getTime();
              return item ? (
                <StyldTd
                  onClick={MouseEvent}
                  aria-selected={
                    checkInTime === dayTime || checkOutTime === dayTime
                  }
                  aria-checked={checkInTime < dayTime && dayTime < checkOutTime}
                  data-date={dayTime}
                  aria-disabled={checkInTime > dayTime || nowDayTime > dayTime}
                  key={`${date.year}_${date.mon}_${item}`}
                >
                  {item}
                </StyldTd>
              ) : (
                <StyldTd aria-disabled={true} key={`null_${j}${i}`}></StyldTd>
              );
            })}
          </tr>
        ))}
      </tbody>
    </StyldTable>
  );
};
export default CalendarTable;

const StyldTable = styled.table`
  border-spacing: 0 10px;
  & > tbody {
    & > tr {
      & > td {
        &[aria-disabled="true"] {
          color: #bdbdbd;
          cursor: default;
          &:hover {
            background-color: white;
            border-radius: 0;
          }
        }
        &[aria-selected="true"] {
          background-color: black;
          border-radius: 50%;

          color: white;
        }
        &[aria-checked="true"] {
          background-color: #bdbdbd;
          &:hover {
            background-color: #bdbdbd;
            border-radius: 0;
            color: white;
          }
        }
      }
    }
  }
`;

const StyldDay = styled.th`
  color: ${({ theme }) => theme.color.Gray4};
`;

const StyldTd = styled.td`
  width: 4rem;
  height: 4rem;
  text-align: center;
  cursor: pointer;
  &:hover {
    background-color: black;
    border-radius: 50%;
    color: white;
  }
`;
