import styled from "styled-components";
import InputItem from "../InputItem";

const DateInput = () => {
  return (
    <StyledDateInput>
      <InputItem w="40%" title="체크인" subtitle="날짜입력" />
      <InputItem w="60%" title="체크아웃" subtitle="날짜입력" />
    </StyledDateInput>
  );
};

export default DateInput;

const StyledDateInput = styled.div`
  display: flex;
  width: 40%;
`;
