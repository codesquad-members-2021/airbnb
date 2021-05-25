import styled, { css } from "styled-components";

const LogInList = () => {
  return (
    <StyledLogInList>
      <LogInItem><a href={process.env.REACT_APP_OAUTH_URL}>로그인</a></LogInItem>
    </StyledLogInList>
  );
};

export default LogInList;

const StyledLogInList = styled.ul``;

const LogInItem = styled.li`
  width: 8.5rem;
  padding-left: 1rem;
`;
