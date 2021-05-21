import styled from 'styled-components';

interface Props {
  children: JSX.Element[] | JSX.Element | string;
  color: string;
  className?: string;
  onClickCapture?: any;
  dataKey?: string;
}

const HoverBlock = ({ children, color, className, onClickCapture, dataKey }: Props) => {
  return (
    <StyledContainer
      onClickCapture={onClickCapture}
      className={className}
      {...{ color }}
      data-key={dataKey}
    >
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
