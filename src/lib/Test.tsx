import styled from "styled-components";
import InnerCalendar, { OnClickResult, Controller } from "./calendar/Calendar";
export default function Test() {
  const onClickDay = (result: OnClickResult) => {
    console.log(result.nextClickTarget);
  };

  return (
    <TestWrapper>
      <Controller start>checkIn</Controller>
      <Controller end>checkOut</Controller>
      <InnerCalendar onClickDay={onClickDay} countOfMonth={2} />
    </TestWrapper>
  );
}

const TestWrapper = styled.div`
  width: 800px;
  margin: 150px auto;
  outline: 1px solid black; ;
`;
