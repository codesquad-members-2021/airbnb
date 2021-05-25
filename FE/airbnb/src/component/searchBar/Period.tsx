import React from "react";
import styled from "styled-components";

interface Props {
  onClick: (e: React.MouseEvent) => void;
}

function Period({ onClick }: Props) {
  return (
    <>
      <CheckInContainer onClick={onClick}>
        <Title>체크인</Title>
        <Content>날짜 입력</Content>
      </CheckInContainer>
      <CheckOutContainer onClick={onClick}>
        <Title>체크아웃</Title>
        <Content>날짜 입력</Content>
      </CheckOutContainer>
    </>
  );
}

export default Period;

const CheckInContainer = styled.li`
  ${({ theme }) => theme.searchListItem}
  padding-left: 40px;
  width: 160px;
`;

const CheckOutContainer = styled.li`
  ${({ theme }) => theme.searchListItem}
  width: 210px;
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
