import styled, { css } from "styled-components";

const LogInList = () => {
  return (
    <StyledLogInList>
      <LogInItem>로그인</LogInItem>
    </StyledLogInList>
  );
};

export default LogInList;

const StyledLogInList = styled.ul``;

const LogInItem = styled.li`
  width: 8.5rem;
  padding-left: 1rem;
`;
