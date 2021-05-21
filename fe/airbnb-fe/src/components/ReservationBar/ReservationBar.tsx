import styled from 'styled-components';
import React, { useRef, ReactElement } from 'react';
import { useRecoilState, useRecoilValue, useSetRecoilState } from 'recoil';

import { T_CheckInOutState } from './atoms';
import { SelectedBtnIdx, DropPopupContent, LocationSearchState, CheckInOutState } from './atoms';

import ReservationBarBtn from './ReservationBarBtn';
import ReservationBarDropPopup from './ReservationBarDropPopup';
import CalendarSlider from './CalendarSlider/CalendarSlider';

type ReservationBarProps = {
  className?: string,
};

function ReservationBar({ className }: ReservationBarProps): ReactElement {
  const ref = useRef<HTMLDivElement>(null);
  const [selectedIdx, setSelectedIdx] = useRecoilState<number|null>(SelectedBtnIdx);
  const dropPopupContent = useRecoilValue<ReactElement|null>(DropPopupContent);
  const [location, setLocation] = useRecoilState<string>(LocationSearchState);
  const checkInOut = useRecoilValue<T_CheckInOutState>(CheckInOutState);

  const handleClickCaptureBtn = (currentTarget: HTMLDivElement): void => {
    setSelectedIdx((oldSelectedIdx: number|null): number|null => {
      const newSelectedIdx = Number(currentTarget.dataset.index);

      if (oldSelectedIdx === newSelectedIdx)
        return null;

      return Number(currentTarget.dataset.index);
    });
  }

  const handleChange = ({ target }: React.ChangeEvent<HTMLInputElement>) => {
    setLocation(target.value);
  }

  return (
    <StyledReservationBar className={className} ref={ref}>
      <ReservationBarBtn dataIndex={0} onClickCapture={handleClickCaptureBtn}>
        <div className='title'>위치</div>
        <input className='content' value={location} onChange={handleChange} placeholder={'어디로 여행가세요?'}/>
      </ReservationBarBtn>
      <ReservationBarBtn dataIndex={1} onClickCapture={handleClickCaptureBtn}>
        <div className='title'>체크인</div>
        <div className='content'>{checkInOut.in ?? '날짜 입력'}</div>
      </ReservationBarBtn>        
      <ReservationBarBtn dataIndex={2} onClickCapture={handleClickCaptureBtn}>
        <div className='title'>체크아웃</div>
        <div className='content'>{checkInOut.out ?? '날짜 입력'}</div>
      </ReservationBarBtn>
      <ReservationBarBtn dataIndex={3} onClickCapture={handleClickCaptureBtn}>
        <div className='title'>요금</div>
        <div className='content'>tmp</div>
      </ReservationBarBtn>
      <ReservationBarBtn className='with-btn' dataIndex={4} onClickCapture={handleClickCaptureBtn}>
        <div className='title'>인원</div>
        <div className='content'>tmp</div>
        <button className='search-btn'>
        </button>
      </ReservationBarBtn>
      {/* {dropPopupContent && <ReservationBarDropPopup outsideBlacklist={[ref.current as HTMLElement]}>{dropPopupContent}</ReservationBarDropPopup>} */}
      <ReservationBarDropPopup>
        <CalendarSlider/>
      </ReservationBarDropPopup>
    </StyledReservationBar>
  )
};

export default ReservationBar;

const StyledReservationBar = styled.div`
  width: 64rem;
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
