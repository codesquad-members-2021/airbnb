import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import { selectCheckBoxState } from '../../recoil/calendarAtom';

interface Props {
  children: JSX.Element[] | JSX.Element | string;
  color: string;
  className?: string;
  dataKey: string;
  isModal?: boolean;
}

const HoverBlock = ({ children, color, className, dataKey, isModal }: Props) => {
  const [selectCheckBox, setSelectCheckBox] = useRecoilState(selectCheckBoxState);

  const handleClick = (): void => setSelectCheckBox(dataKey);

  const isSelected: boolean = selectCheckBox === dataKey;

  return (
    <StyledContainer
      className={className}
      {...{ color, isSelected, isModal }}
      onClick={handleClick}
    >
      {children}
    </StyledContainer>
  );
};

interface StyleProps {
  color: string;
  isSelected: boolean;
  isModal?: boolean;
}

const StyledContainer = styled.div<StyleProps>`
  background-color: ${({ isSelected, theme }) => isSelected && theme.colors.white};
  box-shadow: ${({ isSelected, isModal }) =>
    isModal &&
    isSelected &&
    `0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);`};
  &:hover {
    background-color: ${({ theme, color }) => theme.colors[color]};
    background-color: ${({ isSelected, theme }) => isSelected && theme.colors.white};
  }
`;

export default HoverBlock;
