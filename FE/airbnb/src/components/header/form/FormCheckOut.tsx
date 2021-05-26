import { RefObject } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { calendarOpenState, selectDateState } from '../../../recoil/calendarAtom';
import HoverBlock from '../HoverBlock';
import { getDateByTime } from './calendar/calendarDateFn';
import FormColumn from './FormColumn';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckOut = ({ checkOutRef }: Props) => {
  const open = useRecoilValue(calendarOpenState);
  const selectDate = useRecoilValue(selectDateState);

  const date = getDateByTime(selectDate.checkOut);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';

  return (
    <StyledFormCheckOut ref={checkOutRef} data-type='checkOut'>
      <HoverBlock color='gray4' className='hover__checkOut' dataKey='checkOut' isModal={open}>
        <FormColumn title='체크아웃' description={description} />
      </HoverBlock>
    </StyledFormCheckOut>
  );
};

export default FormCheckOut;

const StyledFormCheckOut = styled.div`
  .hover__checkOut {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
