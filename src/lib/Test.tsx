import { useState } from "react";
import styled, { css } from "styled-components";
import Calendar, { OnClickResult, Controller } from "./calendar/Calendar";

export default function Test() {
  const [target, setTarget] = useState("start");

  const onClickDay = (result: OnClickResult) => {
    setTarget(result.nextClickTarget);
  };

  return (
    <TestWrapper>
      <ControllerContainer>
        <Controller start>
          <Button
            isNext={target === "start"}
            onClick={() => {
              setTarget("start");
            }}
          >
            checkIn
          </Button>
        </Controller>
        <Controller end>
          <Button
            isNext={target === "end"}
            onClick={() => {
              setTarget("end");
            }}
          >
            checkOut
          </Button>
        </Controller>
      </ControllerContainer>
      <Calendar onClickDay={onClickDay} countOfMonth={2} />
    </TestWrapper>
  );
}

const TestWrapper = styled.div`
  width: 800px;
  margin: 150px auto;
  padding: 1rem;
  border-radius: 3rem;
  border: 1px solid black;
`;

const ControllerContainer = styled.div`
  width: 30%;
  display: flex;
  justify-content: space-around;
  margin: 0 auto;
`;
const Button = styled.div<{ isNext: boolean }>`
  height: 2rem;
  border-radius: 2rem;
  padding: 0.5rem 1rem;
  display: flex;
  justify-content: center;
  align-items: center;
  ${({ isNext }) =>
    isNext &&
    css`
      background: #21618b;
      color: white;
    `};
  & + & {
    margin-left: 2rem;
  }
`;
