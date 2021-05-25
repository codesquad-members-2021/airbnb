import { ReactElement, MouseEvent, useState, useEffect, useReducer } from 'react';
import { useRecoilValue, useRecoilState } from 'recoil';
import styled from 'styled-components';
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
  const selectedCheckBox = useRecoilValue(selectCheckBoxState);

  useEffect(() => {
    setDateData(monthData);
  }, [monthData]);

  const handelClick = (event: MouseEvent<HTMLElement>): void => {
    const target = event.target as HTMLElement;
    const value: number = +target.innerHTML;
    const dateWrapper = target.closest('.date__wrapper');
    const dateTime = new Date(year, month - 1, value).getTime();
    const { checkIn: checkInTime, checkOut: checkOutTime } = selectDate;
    if (isNaN(value) || value === 0) return;
    if (!dateWrapper || (dateWrapper && dateWrapper.classList.contains('disable-date'))) return;
    if (selectedCheckBox === 'checkIn') {
      if (!checkInTime) {
        //time으로 selectDate setting
        setSelectDate((selectDate) => ({ ...selectDate, checkIn: dateTime }));
        //클래스 추가해주기 위해 select 추가
        //dateDispatch({type:checkIn,day:value})
        return;
      }
      if (checkInTime === dateTime) {
        //체크아웃 dateTime으로 setting
        setSelectDate((selectDate) => ({ ...selectDate, checkOut: dateTime }));
      } else if (checkInTime < dateTime) {
        //체크 아웃 setting
        setSelectDate((selectDate) => ({ ...selectDate, checkOut: dateTime }));
        //select도 새롭게 setting
        //dateDispatch({type:checkOut,day:value})
      } else if (checkInTime > dateTime) {
        //checkInTime = dateTime setting
        setSelectDate((selectDate) => ({ ...selectDate, checkIn: dateTime }));
        //select도 새롭게 setting
        //dateDispatch({type:checkIn,day:value})
      }
    }
  };

  const getDateList = (weekData: dayType[]): ReactElement[] =>
    weekData.map(({ date, isAble }: dayType): ReactElement => {
      const dayTime = getTimes({ year, month, day: date });
      const isCheckIn = dayTime === selectDate.checkIn;
      const isCheckOut = dayTime === selectDate.checkOut;
      if (isCheckIn) {
        console.log(year, month, date);
        console.log('dayTime', dayTime);
        console.log('checkIn', selectDate.checkIn);
      }
      // const isBetween = dayTime > selectDate.checkIn && dayTime < selectDate.checkOut;
      const dateWrapperClassName = getDateWrapperClassName({ date, isAble });
      const dateClassName = getDateClassName({ date, isAble }, isCheckIn, isCheckOut);
      return (
        <div className={dateWrapperClassName}>
          <div className={dateClassName}>{date ? date : ''}</div>
        </div>
      );
    });

  const getDateWrapperClassName = ({ date, isAble }: dayType): string => {
    let dateWrapperClass: string = 'date__wrapper ';
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
    .checkIn-date {
      background-color: black;
      color: white;
    }
  }
`;
