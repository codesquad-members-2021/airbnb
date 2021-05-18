import styled from 'styled-components';
import React, { ReactElement } from 'react';

type ReservationBarBtnProps = {
  className?: string,
  dataIndex?: number,
  onClick: (target: HTMLDivElement) => void,
  children?: ReactElement[]
}

function ReservationBarBtn({ className, dataIndex, onClick, children }: ReservationBarBtnProps): ReactElement {
  const handleClick = ({ target }: React.MouseEvent<HTMLDivElement>) => {
    onClick(target as HTMLDivElement);
  }

  return (
    <StyledReservationBarBtn
      className={className}
      onClick={handleClick}
      data-index={dataIndex}>
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

  &.with-btn {
    flex: 24%;
  }

  &.select {

  }

  &:hover {
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

  &:hover::before, &:hover + &::before {
    background-color: transparent;
  }
`;
