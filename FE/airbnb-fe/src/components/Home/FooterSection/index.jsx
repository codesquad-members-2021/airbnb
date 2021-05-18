import React from 'react';
import styled from 'styled-components';
import { footerMock } from '../../utils/mock/footerMock';
import FooterContent from './FooterContent';

const FooterSection = () => {
  return (
    <FooterDiv>
      <FooterContentsDiv>
        {footerMock.map((footerData, idx) => (
          <FooterContent {...footerData} key={idx} />
        ))}
      </FooterContentsDiv>
      <FooterLineDivider />
      <FooterCompDataDiv>
        <span>© 2021 Airbnb, Inc.</span>
        <span>·</span>
        <span>개인정보 처리방침</span>
        <span>·</span>
        <span>이용약관</span>
        <span>·</span>
        <span>사이트맵</span>
        <span>·</span>
        <span>한국의 변경된 환불 정책</span>
        <span>·</span>
        <span>회사 세부정보</span>
      </FooterCompDataDiv>
    </FooterDiv>
  );
};

const FooterDiv = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
  background: ${({ theme }) => theme.colors.gray6};
  height: fit-content;
`;

const FooterContentsDiv = styled.div`
  display: flex;
  justify-content: space-between;
  gap: 1.25rem;
  width: 88.88%;
  margin: 4rem auto;
`;

const FooterLineDivider = styled.div`
  width: 88.88%;
  margin: 0 auto;
  border-bottom: 1px solid ${({ theme }) => theme.colors.gray5};
`;

const FooterCompDataDiv = styled.div`
  display: flex;
  width: 88.88%;
  gap: 1rem;
  margin: 2rem auto;
  color: ${({ theme }) => theme.colors.gray1};
`;

export default FooterSection;
