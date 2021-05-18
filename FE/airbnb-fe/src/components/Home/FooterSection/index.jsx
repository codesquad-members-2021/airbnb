import React from 'react';
import styled from 'styled-components';

const FooterSection = () => {
  return <FooterSectionDiv></FooterSectionDiv>;
};

const FooterSectionDiv = styled.div`
  height: 629px;
  background-color: ${({ theme }) => theme.colors.gray6};
`;

export default FooterSection;
