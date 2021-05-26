import { useRef, RefObject, useEffect } from 'react';
import { useRecoilValue, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import {
  calendarOpenState,
  selectCheckBoxState,
  selectDateState,
} from '../../../recoil/calendarAtom';
import HoverBlock from '../HoverBlock';
import { getDateByTime } from './calendar/calendarDateFn';
import FormCalendar from './calendar/FormCalendar';
import FormColumn from './FormColumn';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckIn = ({ checkOutRef }: Props) => {
  const checkInRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const selectDate = useRecoilValue(selectDateState);
  const selectBox = useRecoilValue(selectCheckBoxState);
  const setIsCalendarOpen = useSetRecoilState(calendarOpenState);
  const isChekcInSelected = selectBox === 'checkIn';
  const { open } = useToggle({ clickRef: [checkInRef, checkOutRef], toggleRef, isChekcInSelected });

  useEffect(() => {
    setIsCalendarOpen(open);
  }, [open]);

  const date = getDateByTime(selectDate.checkIn);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';

  return (
    <StyledCheckInWrapper>
      <StyledFormCheckIn ref={checkInRef} data-type='checkIn'>
        <HoverBlock color='gray4' className='hover__checkIn' dataKey='checkIn' isModal={open}>
          <FormColumn title='체크인' description={description} />
        </HoverBlock>
      </StyledFormCheckIn>
      {open && <FormCalendar toggleRef={toggleRef} />}
    </StyledCheckInWrapper>
  );
};

export default FormCheckIn;

const StyledCheckInWrapper = styled.div`
  position: relative;
`;

const StyledFormCheckIn = styled.div`
  height: 100%;
  .hover__checkIn {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
