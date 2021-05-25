import styled, { css } from "styled-components";

const LogOutList = () => {
  return (
    <StyledLogOutList>
      <LogOutItem>예약 취소</LogOutItem>
      <LogOutItem>위시 리스트</LogOutItem>
      <LogOutItem>로그 아웃</LogOutItem>
    </StyledLogOutList>
  );
};

export default LogOutList;

const StyledLogOutList = styled.ul``;

const LogOutItem = styled.li`
  width: 8.5rem;
  padding-left: 1rem;
`;
