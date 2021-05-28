import React from "react";
import styled from "styled-components";
import { useRecoilValue } from "recoil";
import { checkinDateState, checkoutDateState } from "state/atoms/calendarAtoms";

interface Props {
  onClick: (e: React.MouseEvent) => void;
}

function Period({ onClick }: Props) {
  const checkinDate = useRecoilValue(checkinDateState);
  const checkoutDate = useRecoilValue(checkoutDateState);
  const checkinText: string =
    checkinDate !== "날짜 입력" ? `${checkinDate.substr(4, 2)}월 ${checkinDate.substr(6, 2)}일` : checkinDate;
  const checkoutText: string =
    checkoutDate !== "날짜 입력" ? `${checkoutDate.substr(4, 2)}월 ${checkoutDate.substr(6, 2)}일` : checkoutDate;
  return (
    <>
      <CheckInContainer onClick={onClick} className="betweenBorder">
        <Title>체크인</Title>
        <Content>{checkinText}</Content>
      </CheckInContainer>
      <CheckOutContainer onClick={onClick} className="betweenBorder">
        <Title>체크아웃</Title>
        <Content>{checkoutText}</Content>
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
