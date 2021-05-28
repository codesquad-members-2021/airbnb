import styled from "styled-components";

export const renderWeeks = (count: number) => {
  return (
    <WeeksContainer>
      {Array(count)
        .fill(null)
        .map((el) => (
          <Weeks count={count}>
            <li>일</li>
            <li>월</li>
            <li>화</li>
            <li>수</li>
            <li>목</li>
            <li>금</li>
            <li>토</li>
          </Weeks>
        ))}
    </WeeksContainer>
  );
};

const WeeksContainer = styled.div`
  position: absolute;
  top: 1.5rem;
  width: 100%;
  display: flex;
  justify-content: space-around;
`;

const Weeks = styled.ul<{ count: number }>`
  width: ${({ count }) => `calc(100% / ${count})`};
  padding: 0 2rem;
  display: flex;
  justify-content: space-around;
`;
