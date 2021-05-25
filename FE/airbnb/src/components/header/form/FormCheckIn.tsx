import { useRef, RefObject, useEffect } from 'react';
import { useRecoilState, useRecoilValue, useSetRecoilState } from 'recoil';
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
  const { open } = useToggle({ clickRef: [checkInRef, checkOutRef], toggleRef });
  const setIsCalendarOpen = useSetRecoilState(calendarOpenState);
  const selectDate = useRecoilValue(selectDateState);
  const [selectCheckBox, setSelectCheckBox] = useRecoilState(selectCheckBoxState);

  useEffect(() => {
    setIsCalendarOpen(open);
  }, [open]);

  const handleClick = (): void => {
    setSelectCheckBox('checkIn');
  };
  const date = getDateByTime(selectDate.checkIn);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';
  const isSelected: boolean = selectCheckBox === 'checkIn';
  return (
    <StyledCheckInWrapper>
      <StyledFormCheckIn
        isSelected={isSelected}
        open={open}
        onClick={handleClick}
        ref={checkInRef}
        data-type='checkIn'
      >
        <HoverBlock color='gray4' className='hover__checkIn'>
          <FormColumn title='체크인' description={description} />
        </HoverBlock>
      </StyledFormCheckIn>
      {open && <FormCalendar toggleRef={toggleRef} />}
    </StyledCheckInWrapper>
  );
};

export default FormCheckIn;

interface StyleProps {
  isSelected: boolean;
  open: boolean;
}

const StyledCheckInWrapper = styled.div`
  position: relative;
`;

const StyledFormCheckIn = styled.div<StyleProps>`
  height: 100%;
  .hover__checkIn {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
    box-shadow: ${({ isSelected, open }) =>
      isSelected &&
      open &&
      `0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);`};
  }
  .hover__checkIn:hover {
    background-color: ${({ isSelected, open, theme }) => isSelected && open && theme.colors.white};
  }
`;
