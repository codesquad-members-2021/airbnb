import styled from 'styled-components';
import React, { ReactElement } from 'react';
import { useRecoilValue } from 'recoil';

import { ReservationBarBtnType } from './atoms';
import { SelectedBtn } from './atoms';

type ReservationBarBtnProps = {
  className?: string,
  dataBtnType?: ReservationBarBtnType,
  // onClick?: (target: HTMLDivElement) => void,
  onClickCapture: (target: HTMLDivElement) => void,
  children?: ReactElement[]
}

function ReservationBarBtn({ className, dataBtnType, onClickCapture, children }: ReservationBarBtnProps): ReactElement {
  const selectedBtn = useRecoilValue<ReservationBarBtnType|null>(SelectedBtn);

  const handleClickCapture = ({ target, currentTarget }: React.MouseEvent<HTMLDivElement>) => {
    onClickCapture(currentTarget as HTMLDivElement);
  }

  return (
    <StyledReservationBarBtn
      className={(className ?? '') + (dataBtnType === selectedBtn ? ' selected' : '')}
      onClickCapture={handleClickCapture}
      data-btn-type={dataBtnType}>
      {children}
    </StyledReservationBarBtn>
  );
};

export default ReservationBarBtn;

const StyledReservationBarBtn = styled.div`
  height: 100%;
  flex: 19%;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: center;
  box-sizing: border-box;
  padding-left: 1.7rem;
  border-radius: 9999px;
  position: relative;
  cursor: pointer;

  &.with-btn {
    flex: 24%;
  }

  &.selected {
    background-color: lightgray; // FIXME
  }

  &:not(.selected):hover {
    background-color: #e0e0e0;
  }

  &:not(:first-child)::before {
    content: '';
    width: 1px;
    height: 70%;
    background-color: #e0e0e0;
    position: absolute;
    left: 0;
  }

  &:hover::before, &:hover + &::before,
  &.selected::before, &.selected + &::before {
    background-color: transparent;
  }

  .entered {
    color: #333333;
    font-weight: 800;
  }
`;
