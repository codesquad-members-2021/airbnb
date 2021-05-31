import React from "react";
import styled from "styled-components";

interface Props {
  onClick: (e: React.MouseEvent) => void;
}

function Guest({ onClick }: Props) {
  return (
    <GuestContainer onClick={onClick}>
      <Title>인원</Title>
      <Content>게스트 추가</Content>
    </GuestContainer>
  );
}

export default Guest;

const GuestContainer = styled.li`
  ${({ theme }) => theme.searchListItem}
  cursor: pointer;
  width: 298px;
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
