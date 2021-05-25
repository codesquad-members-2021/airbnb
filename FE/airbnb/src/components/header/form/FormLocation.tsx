import { useRef } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { selectCheckBoxState } from '../../../recoil/calendarAtom';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import FormLocationToggle from './FormLocationToggle';

const FormLocation = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  const [selectCheckBox, setSelectCheckBox] = useRecoilState(selectCheckBoxState);

  const handleClick = (): void => {
    setSelectCheckBox('location');
  };

  const isSelected: boolean = selectCheckBox === 'location';

  return (
    <StyledLocationWrapper>
      <StyledFormLocation
        isSelected={isSelected}
        open={open}
        onClick={handleClick}
        ref={clickRef}
        data-type='location'
      >
        <HoverBlock color='gray4' className='hover__location'>
          <FormColumn title='위치' description='어디로 여행가세요' isInput={true} />
        </HoverBlock>
      </StyledFormLocation>
      {open && <FormLocationToggle toggleRef={toggleRef} />}
    </StyledLocationWrapper>
  );
};

export default FormLocation;

const StyledLocationWrapper = styled.div`
  position: relative;
`;

interface styleProps {
  isSelected: boolean;
  open: boolean;
}
const StyledFormLocation = styled.div<styleProps>`
  .hover__location {
    height: 100%;
    background-color: ${({ open, theme }) => open && theme.colors.white};
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    padding-left: 2rem;
    box-shadow: ${({ isSelected, open }) =>
      isSelected &&
      open &&
      `0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);`};
  }
  .hover__location:hover {
    background-color: ${({ isSelected, open, theme }) => isSelected && open && theme.colors.white};
  }
`;
