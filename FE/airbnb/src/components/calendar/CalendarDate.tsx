import { ReactElement, MouseEvent, useState, useEffect, useReducer } from 'react';
import { useRecoilValue, useRecoilState } from 'recoil';
import styled from 'styled-components';
import { createPartiallyEmittedExpression } from 'typescript';
import {
  calendarDateType,
  dayType,
  selectCheckBoxState,
  selectDateState,
} from '../../recoil/calendarAtom';
import { getTimes } from '../header/form/calendar/calendarDateFn';

interface Props {
  monthData: dayType[][];
  calendarDate: calendarDateType;
}

const CalendarDate = ({ monthData, calendarDate }: Props) => {
  const { year, month } = calendarDate;
  const [dateData, setDateData] = useState<dayType[][]>(monthData);
  // const [dateData, aDateDispatch] = useReducer(dateReducer, monthData);

  const [selectDate, setSelectDate] = useRecoilState(selectDateState);
  const { checkIn: checkInTime, checkOut: checkOutTime } = selectDate;
  const [selectedCheckBox, setSelectedCheckBox] = useRecoilState(selectCheckBoxState);

  useEffect(() => {
    setDateData(monthData);
  }, [monthData]);

  const handelClick = (event: MouseEvent<HTMLElement>): void => {
    const target = event.target as HTMLElement;
    const value: number = +target.innerHTML;
    const dateWrapper = target.closest('.date__wrapper');
    const selectTime = new Date(year, month - 1, value).getTime();

    if (isNaN(value) || value === 0) return;
    if (!dateWrapper || (dateWrapper && dateWrapper.classList.contains('disable-date'))) return;

    if (selectedCheckBox === 'checkIn') clickCheckInBox(selectTime);
    if (selectedCheckBox === 'checkOut') clickCheckOutBox(selectTime);
    return;
  };

  const clickCheckInBox = (selectTime: number): void => {
    if (!checkOutTime) {
      setSelectDate({ checkIn: selectTime, checkOut: null });
      setSelectedCheckBox('checkOut');
      return;
    }
    //체크아웃 먼저 누르고 checkInBox로 Focus 넘어온 경우
    if (checkOutTime === selectTime) {
      setSelectDate((selectDate) => ({ ...selectDate, checkIn: selectTime }));
    } else if (checkOutTime < selectTime) {
      setSelectDate({ checkIn: selectTime, checkOut: null });
    } else if (selectTime < checkOutTime) {
      setSelectDate((selectDate) => ({ ...selectDate, checkIn: selectTime }));
    }
    setSelectedCheckBox('checkOut');
    return;
  };

  const clickCheckOutBox = (selectTime: number): void => {
    if (!checkInTime) {
      setSelectDate((selectDate) => ({ ...selectDate, checkOut: selectTime }));
      setSelectedCheckBox('checkIn');
      return;
    }
    if (checkInTime === selectTime) {
      //체크인 먼저 누르고 checkOutBox로 Focus 넘어온 경우
      setSelectDate((selectDate) => ({ ...selectDate, checkOut: selectTime }));
    } else if (checkInTime < selectTime) {
      setSelectDate((selectDate) => ({ ...selectDate, checkOut: selectTime }));
    } else if (selectTime < checkInTime) {
      setSelectDate((selectDate) => ({ ...selectDate, checkIn: selectTime }));
    }
    setSelectedCheckBox('checkOut');
    return;
  };

  const getDateList = (weekData: dayType[]): ReactElement[] =>
    weekData.map(({ date, isAble }: dayType): ReactElement => {
      const dayTime = getTimes({ year, month, day: date });
      const isCheckIn = dayTime === checkInTime;
      const isCheckOut = dayTime === checkOutTime;
      const isBetween =
        checkInTime && checkOutTime && dayTime > checkInTime && dayTime < checkOutTime;
      const dateWrapperClassName = getDateWrapperClassName(
        { date, isAble },
        isCheckIn,
        isCheckOut,
        isBetween
      );
      const dateClassName = getDateClassName({ date, isAble }, isCheckIn, isCheckOut);
      return (
        <div className={dateWrapperClassName}>
          <div className={dateClassName}>{date ? date : ''}</div>
        </div>
      );
    });

  const getDateWrapperClassName = (
    { date, isAble }: dayType,
    isCheckIn: boolean,
    isCheckOut: boolean,
    isBetween: boolean | null | 0
  ): string => {
    let dateWrapperClass: string = 'date__wrapper ';
    if (isCheckIn) dateWrapperClass += 'checkIn-date__wrapper ';
    if (isCheckOut) dateWrapperClass += 'checkOut-date__wrapper ';
    if (isBetween) dateWrapperClass += 'between-date__wrapper ';
    if (!isAble && date) dateWrapperClass += 'disable-date date__wrapper ';
    else dateWrapperClass += 'able-date ';
    return dateWrapperClass;
  };

  const getDateClassName = ({ date }: dayType, isCheckIn: boolean, isCheckOut: boolean): string => {
    let dateClass: string = 'date ';
    if (date) dateClass += 'selectable-date ';
    if (isCheckIn) dateClass += 'checkIn-date ';
    if (isCheckOut) dateClass += 'checkOut-date ';
    return dateClass;
  };

  const weekList: ReactElement[] = monthData.map((week) => {
    return <div className='week'>{getDateList(week)}</div>;
  });
  return (
    <StyledCalendarDate>
      <div className='month' onClick={handelClick}>
        {weekList}
      </div>
    </StyledCalendarDate>
  );
};

export default CalendarDate;

const StyledCalendarDate = styled.div`
  .week,
  .date__wrapper {
    display: flex;
  }
  .week {
    margin-bottom: 3px;
  }
  .date,
  .date__wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 3rem;
    height: 3rem;
    font-size: ${({ theme }) => theme.fontSize.small};
  }
  .date {
    font-weight: bold;
    cursor: pointer;
    border-radius: 100%;
  }
  .disable-date {
    color: #bdbdbd;
    cursor: default;
    background-color: ${({ theme }) => theme.colors.gray6};
    .date:hover {
      border: ${({ theme }) => `1px dashed ${theme.colors.gray4}`};
    }
  }
  .able-date {
    .selectable-date:hover {
      border: 1px solid black;
    }
    .checkIn-date,
    .checkOut-date {
      background-color: black;
      color: white;
    }
  }
  .checkIn-date__wrapper {
    border-radius: 50% 0 0 50%;
    background-color: ${({ theme }) => theme.colors.gray5};
  }
  .checkOut-date__wrapper {
    border-radius: 0 50% 50% 0;
    background-color: ${({ theme }) => theme.colors.gray5};
  }
  .between-date__wrapper {
    background-color: ${({ theme }) => theme.colors.gray5};
  }
`;
