import { MouseEvent, RefObject } from 'react';
import { useRecoilValue, useResetRecoilState } from 'recoil';
import styled from 'styled-components';
import { calendarOpenState, selectDateState } from '../../../recoilStore/calendarAtom';
import HoverBlock from '../HoverBlock';
import { getDateByTime } from '../../../util/calendarUtils';
import FormColumn from './FormColumn';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';
import { selectCheckBoxState } from '../../../recoilStore/headerAtom';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckOut = ({ checkOutRef }: Props) => {
  const open = useRecoilValue(calendarOpenState);
  const selectDate = useRecoilValue(selectDateState);
  const resetSelectDate = useResetRecoilState(selectDateState);
  const selectBox = useRecoilValue(selectCheckBoxState);

  const date = getDateByTime(selectDate.checkOut);
  const description = date ? `${date.month}월 ${date.day}일` : '날짜';
  const isShowDeleteBtn = !!selectDate.checkOut && open && selectBox === 'checkOut';

  const resetClickHandler = (e: MouseEvent): void => {
    e.stopPropagation();
    resetSelectDate();
  };

  return (
    <StyledFormCheckOut ref={checkOutRef} data-type='checkOut'>
      <HoverBlock color='gray5' className='hover__checkOut' dataKey='checkOut' isModal={open}>
        <FormColumn title='체크아웃' description={description} />
        {isShowDeleteBtn && <DeleteBtn onClick={resetClickHandler} />}
      </HoverBlock>
    </StyledFormCheckOut>
  );
};

export default FormCheckOut;

const StyledFormCheckOut = styled.div`
  .hover__checkOut {
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
