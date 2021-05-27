import styled, { css } from "styled-components";
import { MouseEvent } from "react";
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
        return [];
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
                  key={`${date.year}_${date.mon}_${item}`}
                  aria-checked={checkInTime < dayTime && dayTime < checkOutTime}
                  checkIn={checkInTime === dayTime && checkOutTime !== undefined}
                  checkOut={checkOutTime === dayTime}
                >
                  <StyldBtn
                    aria-selected={
                      checkInTime === dayTime || checkOutTime === dayTime
                    }
                    onClick={MouseEvent}
                    data-date={dayTime} //dom에다가 데이터 저장 
                    aria-disabled={checkInTime > dayTime}
                    disabled={nowDayTime > dayTime}
                    key={`${date.year}_${date.mon}_${item}btn`}
                  >
                    {item}
                  </StyldBtn>
                </StyldTd>
              ) : (
                <StyldTd
                  aria-disabled={true}
                  checkIn={false}
                  checkOut={false}
                  key={`null_${j}${i}`}
                ></StyldTd>
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
        & > button {
          &[aria-disabled="true"] {
            color: ${({ theme }) => theme.color.Gray4};
          }
          &[aria-selected="true"] {
            background-color: ${({ theme }) => theme.color.Black};
            color: ${({ theme }) => theme.color.White};
            border-radius: 50%;
          }
        }
        &[aria-checked="true"] {
          background-color: ${({ theme }) => theme.color.Gray5};
          &:hover {
            border-radius: 0;
            border: none;
            color: ${({ theme }) => theme.color.White};
          }
        }
      }
    }
  }
`;

const StyldBtn = styled.button`
  width: 100%;
  height: 100%;
  background: transparent;

  &:hover {
    border: 2px solid black;
    border-radius: 50%;
  }
`;

const StyldDay = styled.th`
  color: ${({ theme }) => theme.color.Gray4};
`;

const StyldTd = styled.td<{ checkIn: boolean; checkOut: boolean }>`
  width: 4rem;
  height: 4rem;
  text-align: center;
  cursor: pointer;

  ${({ checkIn, checkOut, theme }) => {
    const checkInCss = css`
      background: ${theme.color.Gray5};
      border-bottom-left-radius: 50%;
      border-top-left-radius: 50%; ;
    `;
    const checkOutCss = css`
      background: ${theme.color.Gray5};
      border-bottom-right-radius: 50%;
      border-top-right-radius: 50%; ;
    `;
    if (checkIn) return checkInCss;

    if (checkOut) return checkOutCss;
  }}
`;
