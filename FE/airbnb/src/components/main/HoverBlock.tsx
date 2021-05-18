import styled from 'styled-components';

interface Props {
  children: JSX.Element[] | JSX.Element | string;
}

const HoverBlock = ({ children }: Props) => {
  return <StyledContainer>{children}</StyledContainer>;
};

const StyledContainer = styled.div`
  padding: 4px 12px;
  border-radius: 1rem;
  &:hover {
    background-color: ${({ theme }) => theme.colors.white};
  }
`;

export default HoverBlock;
