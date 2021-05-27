import React from "react";
import styled from "styled-components";

function Fare() {
  return (
    <FareContainer>
      <Title>요금</Title>
      <Content>금액대 설정</Content>
    </FareContainer>
  );
}

export default Fare;

const FareContainer = styled.li`
  ${({ theme }) => theme.searchListItem}

  width: 255px;
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
