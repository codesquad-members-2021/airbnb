import React from "react";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { thumbLeftPriceState, thumbRightPriceState, isSetPriceState } from "state/atoms/fareAtoms";

interface Props {
  onClick: (e: React.MouseEvent) => void;
  size: string;
}

function Fare({ onClick, size }: Props) {
  const thumbLeftPrice = useRecoilValue(thumbLeftPriceState);
  const thumbRightPrice = useRecoilValue(thumbRightPriceState);
  const isSetPrice = useRecoilValue(isSetPriceState);
  let contentTxt = "금액대 설정";
  if (isSetPrice) contentTxt = `₩${thumbLeftPrice}-₩${thumbRightPrice}`;
  return (
    <FareContainer onClick={onClick} className="betweenBorder" size={size}>
      <Title>요금</Title>
      <Content>{contentTxt}</Content>
    </FareContainer>
  );
}

export default Fare;

interface size {
  size: string;
}

const FareContainer = styled.li<size>`
  ${({ theme }) => theme.searchListItem}
  ${({ size, theme }) => (size === "big" ? theme.bigSearchLI : theme.miniSearchLI)}
  cursor: pointer;
  width: ${({ size }) => (size === "big" ? "220px" : "250px")};
`;

const Title = styled.span`
  ${({ theme }) => theme.searchTitle}
`;

const Content = styled.span`
  ${({ theme }) => theme.searchContent}
`;
