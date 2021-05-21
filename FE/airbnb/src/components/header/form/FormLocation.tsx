import { useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import FormLocationToggle from './FormLocationToggle';

const FormLocation = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const open = useToggle({ clickRef, toggleRef });
  return (
    <StyledLocationWrapper>
      <StyledFormLocation ref={clickRef} open={open}>
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
  open: boolean;
}
const StyledFormLocation = styled.div<styleProps>`
  .hover__location {
    background-color: ${({ open, theme }) => open && theme.colors.white};
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    padding-left: 2rem;
  }
`;
