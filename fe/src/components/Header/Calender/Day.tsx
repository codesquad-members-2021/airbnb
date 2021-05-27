import React from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import {
  isCheckInOut,
  checkDate,
  currentHoverDate,
  checkinNewDate,
  checkoutNewDate,
} from '@recoil/atoms/date';
import { useEffect, useState } from 'react';

type Prop = {
  children: React.ReactNode;
  cYear: number;
  cMonth: number;
};

const Day = ({ children, cYear, cMonth }: Prop) => {
  const [isClicked, setIsClicked] = useState(false);
  const checkState = useRecoilValue(isCheckInOut);
  const selectCheckState = useRecoilValue(checkDate);
  const hoverDate = useRecoilValue(currentHoverDate);
  const currentCheckinDate = useRecoilValue(checkinNewDate);
  const currentCheckOutDate = useRecoilValue(checkoutNewDate);

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

  const getThisDayTime = () => {
    const day: any = children;
    return new Date(cYear, cMonth, day).getTime();
  };

  const renderClassName = (): string => {
    const thisDay = getThisDayTime();
    if (isClicked) return 'clicked';
    if (thisDay < currentCheckinDate) return '';
    else if (
      0 < currentCheckOutDate &&
      currentCheckinDate < thisDay &&
      thisDay < currentCheckOutDate
    ) {
      return 'selected';
    } else if (currentCheckOutDate > 0 && currentCheckOutDate < hoverDate) {
      return '';
    } else if (
      currentCheckinDate > 0 &&
      currentCheckinDate < hoverDate &&
      thisDay < hoverDate
    ) {
      return 'selected';
    }

    return '';
  };

  return (
    <DayWrap
      className={renderClassName()}
      checkin={checkin}
      data-date={`${cYear}${cMonth}${children}`}
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
  line-height: 46px;
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
    width: 46px;
    height: 46px;
    background-color: ${({ theme }) => theme.color.black};
    z-index: -1;
  }

  &.selected {
    color: ${({ theme }) => theme.color.black};
    background-color: ${({ theme }) => theme.color.gray6};
    z-index: 2;

    &:hover::before {
      background-color: transparent;
      border: 1px solid ${({ theme }) => theme.color.black};
    }
  }

  &::before {
    content: '';
    display: block;
    position: absolute;
    width: 46px;
    height: 46px;
    border-radius: ${({ theme }) => theme.borderRadius.s};
    z-index: -2;
    border: 1px solid transparent;
  }

  &:hover::before {
    z-index: -2;
    border: 1px solid ${({ theme }) => theme.color.black};
    background-color: ${({ theme, checkin }) =>
      checkin ? theme.color.black : ''};
  }
`;
