import { ReactElement, MouseEvent, useState, useEffect } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import {
  calendarDateType,
  dayType,
  selectCheckBoxState,
  selectDateState,
  hoverDateState,
} from '../../recoil/calendarAtom';
import { getTimes } from '../header/form/calendar/calendarDateFn';

interface Props {
  monthData: dayType[][];
  calendarDate: calendarDateType;
}

const CalendarDate = ({ monthData, calendarDate }: Props) => {
  const { year, month } = calendarDate;

  const [selectDate, setSelectDate] = useRecoilState(selectDateState);
  const { checkIn: checkInTime, checkOut: checkOutTime } = selectDate;
  const [hoverDate, setHoverDate] = useRecoilState(hoverDateState);
  const [selectedCheckBox, setSelectedCheckBox] = useRecoilState(selectCheckBoxState);

  const handelClick = (event: MouseEvent<HTMLElement>): void => {
    const target = event.target as HTMLElement;
    const value: number = +target.innerHTML;
    const dateWrapper = target.closest('.date__wrapper');
    const selectTime = new Date(year, month - 1, value).getTime();

    if (isNaN(value) || value === 0) return;
    if (!dateWrapper || (dateWrapper && dateWrapper.classList.contains('disable-date'))) return;

    if (selectedCheckBox === 'checkIn') clickCheckInBox(selectTime);
    if (selectedCheckBox === 'checkOut') clickCheckOutBox(selectTime);
  };

  const clickCheckInBox = (selectTime: number): void => {
    if (!checkOutTime) {
      setCheckInSelectDate(selectTime);
      setSelectedCheckBox('checkOut');
      return;
    }
    //체크아웃 먼저 누르고 checkInBox로 Focus 넘어온 경우
    if (checkOutTime === selectTime) setCheckInSelectDate(selectTime);
    else if (checkOutTime < selectTime) setSelectDate({ checkIn: selectTime, checkOut: null });
    else if (selectTime < checkOutTime) setCheckInSelectDate(selectTime);
    setSelectedCheckBox('checkOut');
  };

  const clickCheckOutBox = (selectTime: number): void => {
    if (!checkInTime) {
      setCheckOutSelectDate(selectTime);
      setSelectedCheckBox('checkIn');
      return;
    }
    if (checkInTime === selectTime) setCheckOutSelectDate(selectTime);
    else if (checkInTime < selectTime) setCheckOutSelectDate(selectTime);
    else if (selectTime < checkInTime) setCheckInSelectDate(selectTime);

    setSelectedCheckBox('checkOut');
  };

  const setCheckInSelectDate = (date: number): void =>
    setSelectDate((selectDate) => ({ ...selectDate, checkIn: date }));
  const setCheckOutSelectDate = (date: number): void =>
    setSelectDate((selectDate) => ({ ...selectDate, checkOut: date }));

  const handleMouseEnter = (event: MouseEvent<HTMLElement>): void => {
    if (checkInTime && checkOutTime) return;
    const target = event.target as HTMLElement;
    const dateWrapper = target.closest('.date__wrapper');
    if (!dateWrapper?.classList.contains('able-date')) return;
    let value: number = +target.innerHTML;
    if (dateWrapper?.firstElementChild && isNaN(value)) {
      value = +dateWrapper.firstElementChild?.innerHTML;
    }
    const hoverTime = new Date(year, month - 1, value).getTime();
    if (selectedCheckBox === 'checkIn') mouseEnterCheckInBox(hoverTime);
    if (selectedCheckBox === 'checkOut') mouseEnterCheckOutBox(hoverTime);
  };

  const mouseEnterCheckInBox = (hoverTime: number): void => {
    if (checkOutTime && hoverTime < checkOutTime) setHoverDate(hoverTime);
  };
  const mouseEnterCheckOutBox = (hoverTime: number): void => {
    if (checkInTime && checkInTime < hoverTime) setHoverDate(hoverTime);
  };

  const handleMouseLeave = (): void => setHoverDate(null);

  const getDateList = (weekData: dayType[]): ReactElement[] =>
    weekData.map(({ date, isAble }: dayType): ReactElement => {
      const dayTime = getTimes({ year, month, day: date });
      const isCheckIn = getIsCheckIn(dayTime);
      const isCheckOut = getIsCheckOut(dayTime);
      const isBetween = getIsBetween(dayTime);
      const dateWrapperClassName = getDateWrapperClassName(
        { date, isAble },
        isCheckIn,
        isCheckOut,
        isBetween
      );
      const dateClassName = getDateClassName({ date, isAble }, isCheckIn, isCheckOut);
      return (
        <div
          className={dateWrapperClassName}
          onMouseEnter={handleMouseEnter}
          onMouseLeave={handleMouseLeave}
        >
          <div className={dateClassName}>{date ? date : ''}</div>
        </div>
      );
    });

  const getIsCheckIn = (dayTime: number): boolean => {
    if (dayTime === checkInTime) return true;
    if (isHoverCheckIn(dayTime)) return true;
    return false;
  };
  const getIsCheckOut = (dayTime: number): boolean => {
    if (dayTime === checkOutTime) return true;
    if (isHoverCheckOut(dayTime)) return true;
    return false;
  };
  const getIsBetween = (dayTime: number): boolean => {
    if (isHoverBetweenCheckIn(dayTime)) return true;
    if (isHoverBetweenCheckOut(dayTime)) return true;
    if (isBetweenSelected(dayTime)) return true;
    return false;
  };

  const isHoverCheckIn = (dayTime: number) =>
    hoverDate && checkOutTime && dayTime === hoverDate && hoverDate < checkOutTime;
  const isHoverCheckOut = (dayTime: number) =>
    hoverDate && checkInTime && dayTime === hoverDate && checkInTime < hoverDate;
  const isHoverBetweenCheckIn = (dayTime: number) =>
    hoverDate && checkOutTime && hoverDate < dayTime && dayTime < checkOutTime;
  const isHoverBetweenCheckOut = (dayTime: number) =>
    hoverDate && checkInTime && checkInTime < dayTime && dayTime < hoverDate;
  const isBetweenSelected = (dayTime: number) =>
    checkInTime && checkOutTime && checkInTime < dayTime && dayTime < checkOutTime;

  const getDateWrapperClassName = (
    { date, isAble }: dayType,
    isCheckIn: boolean,
    isCheckOut: boolean,
    isBetween: boolean
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
