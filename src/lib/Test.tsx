import styled from "styled-components";
import Calendar, { OnClickResult, Controller } from "./Calendar";
export default function Test() {
  const onClickDay = (result: OnClickResult) => {};

  return (
    <TestWrapper>
      <Controller start>checkIn</Controller>
      <Controller end>checkOut</Controller>
      <Calendar onClickDay={onClickDay} countOfMonth={2} />
    </TestWrapper>
  );
}

const TestWrapper = styled.div`
  width: 800px;
  margin: 150px auto;
  outline: 1px solid black; ;
`;
