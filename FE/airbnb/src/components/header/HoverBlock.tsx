import styled from 'styled-components';

interface Props {
  children: JSX.Element[] | JSX.Element | string;
  color: string;
  className?: string;
}

const HoverBlock = ({ children, color, className }: Props) => {
  return (
    <StyledContainer className={className} {...{ color }}>
      {children}
    </StyledContainer>
  );
};

interface StyleProps {
  color: string;
}

const StyledContainer = styled.div<StyleProps>`
  &:hover {
    background-color: ${({ theme, color }) => theme.colors[color]};
  }
`;

export default HoverBlock;
