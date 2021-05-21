import { useRef, RefObject } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import HoverBlock from '../HoverBlock';
import FormCalendar from './FormCalendar';
import FormColumn from './FormColumn';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckIn = ({ checkOutRef }: Props) => {
  const checkInRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const open = useToggle({ clickRef: [checkInRef, checkOutRef], toggleRef });
  return (
    <StyledCheckInWrapper>
      <StyledFormCheckIn ref={checkInRef}>
        <HoverBlock color='gray4' className='hover__checkIn'>
          <FormColumn title='체크인' description='날짜' isInput={true} />
        </HoverBlock>
      </StyledFormCheckIn>
      {/* <FormCalendar toggleRef={toggleRef} /> */}
      {open && <FormCalendar toggleRef={toggleRef} />}
    </StyledCheckInWrapper>
  );
};

export default FormCheckIn;

const StyledCheckInWrapper = styled.div`
  position: relative;
`;

const StyledFormCheckIn = styled.div`
  .hover__checkIn {
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
