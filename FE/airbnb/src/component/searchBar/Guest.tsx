import React from "react";
import styled from "styled-components";

interface Props {
  onClick: (e: React.MouseEvent) => void;
  size: string;
}

function Guest({ onClick, size }: Props) {
  return (
    <GuestContainer onClick={onClick} size={size}>
      <Title>인원</Title>
      <Content>게스트 추가</Content>
    </GuestContainer>
  );
}

export default Guest;

interface size {
  size: string;
}

const GuestContainer = styled.li<size>`
  ${({ theme }) => theme.searchListItem}
  ${({ size, theme }) => (size === "big" ? theme.bigSearchLI : theme.miniSearchLI)}
  cursor: pointer;
  width: ${({ size }) => (size === "big" ? "298px" : "250px")};
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
