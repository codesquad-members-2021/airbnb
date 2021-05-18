import React from 'react';
import styled from 'styled-components';

const Check = () => {
  return (
    <CheckDiv>
      <CheckIn>
        <CheckTitle>체크인</CheckTitle>
        <CheckInp>날짜입력</CheckInp>
      </CheckIn>
      <CheckOut>
        <CheckTitle>체크아웃</CheckTitle>
        <CheckInp>날짜입력</CheckInp>
      </CheckOut>
      <LineDiv />
    </CheckDiv>
  );
};

const CheckDiv = styled.div`
  display: grid;
  grid-template-columns: 7fr 10fr 1fr;
  grid-gap: 24px;
  flex-direction: row;
  align-items: center;
  border-radius: 3rem;
  /* border: solid 2px red; */
`;
const CheckIn = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: space-between;
  margin-right: 1rem;
`;
const CheckOut = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: space-between;
  margin-right: 1rem;
`;
const CheckTitle = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-weight: bold;
`;
const CheckInp = styled.div`
  color: ${({ theme }) => theme.colors.gray2};
`;
const LineDiv = styled.div`
  border-left: 1px solid red;
`;

export default Check;
