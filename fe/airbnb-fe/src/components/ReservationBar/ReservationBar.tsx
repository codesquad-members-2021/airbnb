import styled from 'styled-components';
import React, { ReactElement, useState } from 'react';
import { useRecoilState } from 'recoil';

import { T_CheckInOut } from './atoms';
import { LocationSearchState, CheckInOutState } from './atoms';

import ReservationBarBtn from './ReservationBarBtn';
import LocationSearch from './LocationSearch/LocationSearch';
import Calendar from './Calendar/Calendar';

type ReservationBarProps = {
  className?: string,
};

function ReservationBar({ className }: ReservationBarProps): ReactElement {
  const [location, setLocation] = useRecoilState<string>(LocationSearchState);
  const [checkInOut, setCheckInOut] = useRecoilState<T_CheckInOut>(CheckInOutState);
  const [selectedIdx, setSelectedIdx] = useState<number|null>();

  const handleClick = (target: HTMLDivElement) => {
    // TODO
    if (target.dataset.index) {
      setSelectedIdx(Number(target.dataset.index));
    }
  }

  return (
    <StyledReservationBar className={className}>
      <ReservationBarBtn dataIndex={0} onClick={handleClick}>
        <div className='title'>위치</div>
        <input className='content' value={location} placeholder={'어디로 여행가세요?'}/>
      </ReservationBarBtn>
      <ReservationBarBtn dataIndex={1} onClick={handleClick}>
        <div className='title'>체크인</div>
        <div className='content'>{checkInOut.in ?? '날짜 입력'}</div>
      </ReservationBarBtn>        
      <ReservationBarBtn dataIndex={2} onClick={handleClick}>
        <div className='title'>체크아웃</div>
        <div className='content'>{checkInOut.out ?? '날짜 입력'}</div>
      </ReservationBarBtn>
      <ReservationBarBtn dataIndex={3} onClick={handleClick}>
        <div className='title'>요금</div>
        <div className='content'>tmp</div>
      </ReservationBarBtn>
      <ReservationBarBtn className='with-btn' dataIndex={4} onClick={handleClick}>
        <div className='title'>인원</div>
        <div className='content'>tmp</div>
        <button className='search-btn'>
        </button>
      </ReservationBarBtn>
    </StyledReservationBar>
  )
};

export default ReservationBar;

const StyledReservationBar = styled.div`
  width: 60rem;
  height: 4.5rem;
  display: flex;
  margin: 0 auto;
  margin-top: 6rem;
  align-items: center;
  border-radius: 9999px;
  background-color: #ffffff;
  color: #010101;
  font-size: 14px;
  position: relative;

  input {
    border: none;
    outline: none;
    background-color: transparent;
  }

  .title {
    font-weight: 800;
    font-size: 1em;
  }

  .content {
    color: #4F4F4F;
    font-size: 1.1em;

    &::placeholder {
      color: #4F4F4F;
      font-size: 1em;
    }

    &.entered {
      color: #010101;
      font-weight: 800;
    }
  }

  .search-btn {
    width: 3.5rem;
    height: 3.5rem;
    background-color: #E84C60;
    border: none;
    border-radius: 9999px;
    outline: none;
    position: absolute;
    top: 0.5rem;
    right: 0.5rem;
  }
`;
