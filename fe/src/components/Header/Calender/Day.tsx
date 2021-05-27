import React, { useState } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import {
  isCheckInOut,
  checkDate,
  currentHoverDate,
  checkinNewDate,
  checkoutNewDate,
} from '@recoil/atoms/date';

type Prop = {
  children: number;
  cYear: number;
  cMonth: number;
};

type dateTypes = {
  year: number;
  month: number;
  day: number;
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

  const changeClickState = (date: dateTypes) => {
    const { year, month, day } = date;
    const checkDate = '' + year + month + day;
    const currentDate = '' + cYear + cMonth + children;
    if (checkDate === currentDate) setIsClicked(true);
  };

  (function () {
    if (isClicked === false) changeClickState(checkinDate);
    if (isClicked === false && checkout === true)
      changeClickState(checkoutDate);
  })();

  const getThisDayTime = () => {
    const day: any = children;
    return new Date(cYear, cMonth, day).getTime();
  };

  const shouldPaintBetweenSelect = (thisDay: number) => {
    return (
      0 < currentCheckOutDate &&
      currentCheckinDate < thisDay &&
      thisDay < currentCheckOutDate
    );
  };

  const shouldPaintHoveringDate = (thisDay: number) => {
    return (
      currentCheckinDate > 0 &&
      currentCheckinDate < hoverDate &&
      thisDay < hoverDate
    );
  };

  const shouldPaintNothing = () =>
    currentCheckOutDate > 0 && currentCheckOutDate < hoverDate;

  const renderClassName = () => {
    const thisDay = getThisDayTime();

    if (isClicked) return 'clicked';
    if (thisDay < currentCheckinDate) return '';
    else if (shouldPaintBetweenSelect(thisDay)) return 'selected';
    else if (shouldPaintNothing()) return '';
    else if (shouldPaintHoveringDate(thisDay)) return 'selected';
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
