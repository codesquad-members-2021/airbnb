import styled, { css } from "styled-components";
import InputItem from "../InputItem";
import { useState, MouseEvent } from "react";
import Modal from "components/common/Modal";
import Calendar from "./Calendar";
import CalendarSlider from "./CalendarSlider";

const DateInput = () => {
  const [toggle, setToggle] = useState(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  return (
    <>
      <StyledDateInput>
        <InputItem
          w="40%"
          title="체크인"
          subtitle="날짜입력"
          onClick={handleClick}
        />
        <InputItem
          w="60%"
          title="체크아웃"
          subtitle="날짜입력"
          onClick={handleClick}
        />
      </StyledDateInput>
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="40px"
        position={ModalPosition}
      >
        <CalendarSlider CalendarType="DOUBLE" />
      </Modal>
    </>
  );
};

export default DateInput;

const StyledDateInput = styled.div`
  display: flex;
  width: 40%;
`;

const ModalPosition = css`
  top: 115%;
  left: 0;
  width: 100%;
`;
