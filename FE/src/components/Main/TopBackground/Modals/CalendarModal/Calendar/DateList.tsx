import { useEffect } from 'react';
import styled, { css } from 'styled-components';
import {
  useSearchBarDispatch,
  useSearchBarState,
} from '../../../../../../contexts/SearchBarContext';
import DefaultButton from '../../../../../Common/DefaultButton';

interface IDateList {
  arrDays: string[];
  arrDates: number[];
  monthDate: Date;
}

interface IDateType {
  disabled?: boolean;
  isClicked?: boolean;
  isStartDate?: boolean;
  isEndDate?: boolean;
  isBetween?: boolean;
}

const DateList = ({ arrDays, arrDates, monthDate, ...props }: IDateList) => {
  const dispatch = useSearchBarDispatch();
  const state = useSearchBarState();
  const {
    calendar: { startDate, endDate },
  } = state;

  const handleDateClick = (date: Date) =>
    dispatch({ type: 'SET_CALENDAR_DATE', payload: date });

  const dayItems = arrDays.map((day, i) => <DayItem key={i}>{day}</DayItem>);
  const dateItems = arrDates.map((date, i) => {
    const thisDate = new Date(
      monthDate.getFullYear(),
      monthDate.getMonth(),
      date,
    );

    const todayTmp = new Date();
    const today = new Date(
      todayTmp.getFullYear(),
      todayTmp.getMonth(),
      todayTmp.getDate(),
    );

    const isPrevDate = today.valueOf() > thisDate.valueOf();
    const isStartDate = thisDate.valueOf() === startDate?.valueOf();
    const isEndDate = thisDate.valueOf() === endDate?.valueOf();

    const isClicked = isStartDate || isEndDate;
    const isDisabled = isPrevDate || date === 0;

    const isBetween =
      thisDate.valueOf() >= startDate?.valueOf()! &&
      thisDate.valueOf() <= endDate?.valueOf()!;

    return (
      <DateItem
        key={i}
        isBetween={isBetween}
        isStartDate={isStartDate}
        isEndDate={isEndDate}
        disabled={isDisabled}
      >
        <DateButton
          disabled={isDisabled}
          data-date={thisDate}
          isClicked={isClicked}
          onClick={() => handleDateClick(thisDate)}
        >
          {date || ''}
        </DateButton>
      </DateItem>
    );
  });

  return (
    <DateListLayout {...props}>
      {dayItems}
      {dateItems}
    </DateListLayout>
  );
};

export default DateList;

// --- Styled Components ---
const DateListLayout = styled.ul`
  display: grid;
  justify-content: center;
  grid-template-columns: repeat(7, 40px);
`;

const Item = styled.li`
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: ${({ theme }) => theme.fontSize.S};
  height: 40px;
`;

const DayItem = styled(Item)`
  color: ${({ theme }) => theme.colors.gray3};
  height: 24px;
`;

const DateItem = styled(Item)<IDateType>`
  background-color: ${({ theme, disabled, isBetween }) =>
    isBetween && !disabled && theme.colors.gray6};

  border-top-left-radius: ${({ isStartDate }) => isStartDate && '50%'};
  border-bottom-left-radius: ${({ isStartDate }) => isStartDate && '50%'};
  border-top-right-radius: ${({ isEndDate }) => isEndDate && '50%'};
  border-bottom-right-radius: ${({ isEndDate }) => isEndDate && '50%'};
`;

const DateButton = styled(DefaultButton)<IDateType>`
  font-weight: ${({ theme }) => theme.fontWeight.bold};
  cursor: ${({ disabled }) => (disabled ? 'default' : 'pointer')};
  border-radius: 50%;
  width: 100%;
  height: 100%;

  background-color: ${({ theme, disabled, isClicked }) =>
    isClicked && !disabled && theme.colors.gray1};
  color: ${({ theme, disabled, isClicked }) =>
    isClicked && !disabled && theme.colors.white};

  &:hover {
    border: ${({ theme, disabled }) => !disabled && `1px solid ${theme.colors.black1}`};
  }
`;
