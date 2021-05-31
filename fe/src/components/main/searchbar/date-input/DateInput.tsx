import styled, { css } from "styled-components";
import InputItem from "../InputItem";
import { useState, MouseEvent, useEffect } from "react";
import Modal from "components/common/Modal";
import CalendarSlider from "./CalendarSlider";
import { useRecoilValue } from "recoil";
import {
  CalendarCheckOutSelector,
  CalendarCheckInSelector,
} from "atoms/searchbarAtom";
import { useResetRecoilState } from "recoil";
import { SearchBarHoverData } from "atoms/searchbarAtom";
const DateInput = () => {
  const [toggle, setToggle] = useState(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };
  const resetData = useResetRecoilState(SearchBarHoverData);
  const CalendarCheckOut = useRecoilValue(CalendarCheckOutSelector);
  const CalendarCheckIn = useRecoilValue(CalendarCheckInSelector);

  useEffect(() => {
    if (!toggle) resetData();
  }, [toggle, resetData]);
  return (
    <>
      <StyledDateInput>
        <InputItem
          w="50%"
          title="체크인"
          subtitle={CalendarCheckIn}
          onClick={handleClick}
        />
        <InputItem
          w="50%"
          title="체크아웃"
          subtitle={CalendarCheckOut}
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
