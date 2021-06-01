import React from 'react';
import styled from 'styled-components';

interface Props {
  src: string;
}

const Background = ({ src }: Props) => {
  return (
    <StyledBackground>
      <img src={src} alt='' />{' '}
    </StyledBackground>
  );
};

export default React.memo(Background);

const StyledBackground = styled.div`
  position: absolute;
  top: 0;
  z-index: -1;
  width: 100%;
  height: 70vh;
  img {
    width: 100%;
    height: 100%;
  }
  background-repeat: no-repeat;
  background-size: contain;
`;
