import React from "react";
import styled from "styled-components";

interface Props {
  onClick: (e: React.MouseEvent) => void;
}

function Fare({ onClick }: Props) {
  return (
    <FareContainer onClick={onClick} className="betweenBorder">
      <Title>요금</Title>
      <Content>금액대 설정</Content>
    </FareContainer>
  );
}

export default Fare;

const FareContainer = styled.li`
  ${({ theme }) => theme.searchListItem}
  cursor: pointer;
  width: 255px;
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
