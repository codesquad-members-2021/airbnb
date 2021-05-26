import styled from 'styled-components';

const CloseButton = ({ fn }) => {
  return <StyledCloseButton onClick={fn}>x</StyledCloseButton>;
};

const StyledCloseButton = styled.button`
  //
  background: ${({ theme }) => theme.colors.gray6};
  width: 1.4rem;
  height: 1.4rem;
  border-radius: 70%;
  font-size: 0.8rem;
  font-weight: bold;
  cursor: pointer;
  &:hover {
    background: ${({ theme }) => theme.colors.gray5};
  }
`;

export default CloseButton;
