import { useRef, RefObject, useEffect, MouseEvent } from 'react';
import { useRecoilValue, useResetRecoilState, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { calendarOpenState, selectDateState } from '../../../recoilStore/calendarAtom';
import { isFormOpenedState, selectCheckBoxState } from '../../../recoilStore/headerAtom';
import HoverBlock from '../HoverBlock';
import { getDateByTime } from '../../../util/calendarUtils';
import FormCalendar from './calendar/FormCalendar';
import FormColumn from './FormColumn';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckIn = ({ checkOutRef }: Props) => {
  const checkInRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const selectBox = useRecoilValue(selectCheckBoxState);
  const selectDate = useRecoilValue(selectDateState);
  const resetSelectDate = useResetRecoilState(selectDateState);
  const setIsCalendarOpen = useSetRecoilState(calendarOpenState);
  const setIsFormOpened = useSetRecoilState(isFormOpenedState);
  const isChekcInSelected = selectBox === 'checkIn';
  const { open } = useToggle({ clickRef: [checkInRef, checkOutRef], toggleRef, isChekcInSelected });

  useEffect(() => {
    setIsCalendarOpen(open);
    if (open) setIsFormOpened(true);
    else setIsFormOpened(false);
  }, [open]);

  const date = getDateByTime(selectDate.checkIn);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';
  const isShowDeleteBtn = !!selectDate.checkIn && open && selectBox === 'checkIn';

  const resetClickHandler = (e: MouseEvent): void => {
    e.stopPropagation();
    resetSelectDate();
  };

  return (
    <StyledCheckInWrapper>
      <StyledFormCheckIn ref={checkInRef} data-type='checkIn'>
        <HoverBlock color='gray5' className='hover__checkIn' dataKey='checkIn' isModal={open}>
          <FormColumn title='체크인' description={description} />
          {isShowDeleteBtn && <DeleteBtn onClick={resetClickHandler} />}
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
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
