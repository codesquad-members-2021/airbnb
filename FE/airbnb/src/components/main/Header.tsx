import React from 'react';
import styled from 'styled-components';

const Header = () => {
  return <StyledHeder></StyledHeder>;
};

const StyledHeder = styled.div`
  width: 100%;
  height: 6rem;
  background-color: ${({ theme: { colors } }) => colors.red};
`;
export default Header;
