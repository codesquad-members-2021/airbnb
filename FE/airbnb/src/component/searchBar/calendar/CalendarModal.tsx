import React from "react";
import styled from "styled-components";
import Calendar from "component/searchBar/calendar/Calendar";
import { ReactComponent as LeftButton } from "assets/left_arrow.svg";
import { ReactComponent as RightButton } from "assets/right_arrow.svg";
import { stopPropagation } from "hooks/modalHooks";

function CalendarModal() {
  return (
    <Modal onClick={stopPropagation}>
      <LeftButton className="arrow left" />
      <Calendar />
      <Calendar />
      <RightButton className="arrow right" />
    </Modal>
  );
}

export default CalendarModal;

const Modal = styled.div`
  position: absolute;
  top: 100px;
  left: 0;
  box-sizing: border-box;
  width: 916px;
  padding: 65px 88px;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.calendar};

  display: flex;
  justify-content: space-between;

  .arrow {
    position: absolute;
    top: 58px;
    cursor: pointer;
    path {
      stroke: ${({ theme }) => theme.color.gray4};
    }
    &:hover {
      path {
        stroke: ${({ theme }) => theme.color.black};
      }
    }
  }
  .left {
    left: 90px;
  }
  .right {
    right: 90px;
  }
`;
