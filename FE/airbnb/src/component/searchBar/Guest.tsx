import React from "react";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { numOfAdultsState, numOfChildrenState, numOfBabiesState } from "state/atoms/guestAtoms";

interface Props {
  onClick: (e: React.MouseEvent) => void;
  size: string;
}

function Guest({ onClick, size }: Props) {
  const adults = useRecoilValue(numOfAdultsState);
  const children = useRecoilValue(numOfChildrenState);
  const babies = useRecoilValue(numOfBabiesState);

  let guestContent = "";
  if (adults > 0) guestContent += `성인 ${adults}명`;
  if (children > 0) guestContent += `, 어린이 ${children}명`;
  if (babies > 0) guestContent += `, 유아 ${babies}명`;
  if (adults === 0 && children === 0 && babies === 0) guestContent = "게스트 추가";

  return (
    <GuestContainer onClick={onClick} size={size}>
      <Title>인원</Title>
      <Content>{guestContent}</Content>
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
