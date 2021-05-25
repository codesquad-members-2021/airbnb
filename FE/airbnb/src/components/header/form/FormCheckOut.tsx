import { RefObject } from 'react';
import { useRecoilState, useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { calendarOpenState, selectCheckBoxState } from '../../../recoil/calendarAtom';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckOut = ({ checkOutRef }: Props) => {
  const [selectCheckBox, setSelectCheckBox] = useRecoilState(selectCheckBoxState);
  const open = useRecoilValue(calendarOpenState);
  const handleClick = (): void => {
    setSelectCheckBox('checkOut');
  };
  const isSelected: boolean = selectCheckBox === 'checkOut';
  return (
    <StyledFormCheckOut
      isSelected={isSelected}
      open={open}
      onClick={handleClick}
      ref={checkOutRef}
      data-type='checkOut'
    >
      <HoverBlock color='gray4' className='hover__checkOut'>
        <FormColumn title='체크아웃' description='날짜' />
      </HoverBlock>
    </StyledFormCheckOut>
  );
};

export default FormCheckOut;

interface StyleProps {
  isSelected: boolean;
  open: boolean;
}

const StyledFormCheckOut = styled.div<StyleProps>`
  .hover__checkOut {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    box-shadow: ${({ isSelected, open }) =>
      isSelected &&
      open &&
      `0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);`};
  }
  .hover__checkOut:hover {
    background-color: ${({ isSelected, open, theme }) => isSelected && open && theme.colors.white};
  }
`;
