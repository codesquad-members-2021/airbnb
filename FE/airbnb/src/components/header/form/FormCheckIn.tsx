import { useRef, RefObject, useEffect, MouseEvent } from 'react';
import { useRecoilValue, useResetRecoilState, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { calendarOpenState, selectDateState } from '../../../recoil/calendarAtom';
import { isFormOpenedState, selectCheckBoxState } from '../../../recoil/headerAtom';
import HoverBlock from '../HoverBlock';
import { getDateByTime } from './calendar/calendarDateFn';
import FormCalendar from './calendar/FormCalendar';
import FormColumn from './FormColumn';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckIn = ({ checkOutRef }: Props) => {
  const checkInRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const selectDate = useRecoilValue(selectDateState);
  const resetSelectDate = useResetRecoilState(selectDateState);
  const selectBox = useRecoilValue(selectCheckBoxState);
  const setIsCalendarOpen = useSetRecoilState(calendarOpenState);
  const isChekcInSelected = selectBox === 'checkIn';
  const { open } = useToggle({ clickRef: [checkInRef, checkOutRef], toggleRef, isChekcInSelected });
  const setIsFormOpened = useSetRecoilState(isFormOpenedState);

  useEffect(() => {
    setIsCalendarOpen(open);
    if (open) setIsFormOpened(true);
    else setIsFormOpened(false);
  }, [open]);

  const date = getDateByTime(selectDate.checkIn);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';
  const isShowDeleteBtn = !!selectDate.checkIn && open && selectBox === 'checkIn';

  const handleDeleteClick = (e: MouseEvent): void => {
    e.stopPropagation();
    resetSelectDate();
  };

  return (
    <StyledCheckInWrapper>
      <StyledFormCheckIn ref={checkInRef} data-type='checkIn'>
        <HoverBlock color='gray5' className='hover__checkIn' dataKey='checkIn' isModal={open}>
          <FormColumn title='체크인' description={description} />
          {isShowDeleteBtn && <DeleteBtn onClick={handleDeleteClick} />}
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
