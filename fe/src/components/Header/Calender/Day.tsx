import React from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { isCheckInOut, checkDate } from '@recoil/atoms/date';
import { useEffect, useState, useRef } from 'react';

type Prop = {
  children: React.ReactNode;
  cYear: number;
  cMonth: number;
};

const Day = ({ children, cYear, cMonth }: Prop) => {
  const [isClicked, setIsClicked] = useState(false);
  const checkState = useRecoilValue(isCheckInOut);
  const selectCheckState = useRecoilValue(checkDate);
  const dateRef = useRef<HTMLTableCellElement>(null);

  const { checkin, checkout } = checkState;
  const { checkinDate, checkoutDate } = selectCheckState;

  useEffect(() => {
    if (checkin === false) return;
    const { year, month, day } = checkinDate;

    if (children === day && year === cYear && month === cMonth)
      setIsClicked(true);
  }, [cMonth, cYear, checkin, checkinDate, children]);

  useEffect(() => {
    if (checkout === false) return;
    const { year, month, day } = checkoutDate;

    if (children === day && year === cYear && month === cMonth)
      setIsClicked(true);
  }, [cMonth, cYear, checkout, checkoutDate, children]);

  return (
    <DayWrap
      className={isClicked ? 'clicked' : ''}
      checkin={checkin}
      data-idx={`${cYear}${cMonth}${children}`}
      ref={dateRef}
    >
      {children}
    </DayWrap>
  );
};

export default React.memo(Day);

type styleProps = {
  checkin: boolean;
};

const DayWrap = styled.td<styleProps>`
  margin: 0;
  padding: 0;
  line-height: 48px;
  width: 48px;
  height: 48px;
  text-align: center;
  cursor: pointer;
  position: relative;

  &:hover {
    color: ${({ theme, checkin }) =>
      checkin ? theme.color.white : theme.color.black};
  }

  &.clicked {
    color: ${({ theme }) => theme.color.white};
  }

  &.clicked::before {
    content: '';
    display: block;
    position: absolute;
    width: 48px;
    height: 48px;
    background-color: ${({ theme }) => theme.color.black};
    z-index: -1;
  }

  &.selected {
    color: ${({ theme }) => theme.color.black};
    background-color: ${({ theme }) => theme.color.gray6};
  }

  &::before {
    content: '';
    display: block;
    position: absolute;
    width: 48px;
    height: 48px;
    border-radius: ${({ theme }) => theme.borderRadius.s};
    z-index: -2;
    border: 1px solid transparent;
  }

  &:hover::before {
    border: 1px solid ${({ theme }) => theme.color.black};
    background-color: ${({ theme, checkin }) =>
      checkin ? theme.color.black : ''};
  }
`;
