import React from 'react';
import styled from 'styled-components';

const FooterContent = ({ ...footerData }) => {
  return (
    <FooterContentCard>
      <FooterContentSubtitle>{footerData.title}</FooterContentSubtitle>
      <FooterContentUl>
        {footerData.contents.map((content, idx) => (
          <li key={idx}>{content}</li>
        ))}
      </FooterContentUl>
    </FooterContentCard>
  );
};

const FooterContentCard = styled.div`
  font-size: 1rem;
  color: ${({ theme }) => theme.colors.gray1};
  min-width: 21%;
`;

const FooterContentSubtitle = styled.div`
  font-weight: bold;
`;

const FooterContentUl = styled.ul``;

export default FooterContent;
