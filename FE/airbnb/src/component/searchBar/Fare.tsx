import React from "react";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { isSetPriceState, priceToString } from "state/atoms/fareAtoms";

interface Props {
  onClick: (e: React.MouseEvent) => void;
  size: string;
}

function Fare({ onClick, size }: Props) {
  const priceOfString = useRecoilValue(priceToString);
  const isSetPrice = useRecoilValue(isSetPriceState);
  let defaultTxt = "금액대 설정";
  return (
    <FareContainer onClick={onClick} className="betweenBorder" size={size}>
      <Title>요금</Title>
      <Content>{isSetPrice ? priceOfString : defaultTxt}</Content>
    </FareContainer>
  );
}

export default React.memo(Fare);

interface size {
  size: string;
}

const FareContainer = styled.li<size>`
  ${({ theme }) => theme.searchListItem}
  ${({ size, theme }) => (size === "big" ? theme.bigSearchLI : theme.miniSearchLI)}
  cursor: pointer;
  width: ${({ size }) => (size === "big" ? "220px" : "280px")};
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
