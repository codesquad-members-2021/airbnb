import { RefObject } from 'react';
import styled from 'styled-components';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';

interface Props {
  checkOutRef: RefObject<HTMLDivElement>;
}

const FormCheckOut = ({ checkOutRef }: Props) => {
  return (
    <StyledFormCheckOut ref={checkOutRef}>
      <HoverBlock color='gray4' className='hover__checkOut'>
        <FormColumn title='체크아웃' description='날짜' isInput={true} />
      </HoverBlock>
    </StyledFormCheckOut>
  );
};

export default FormCheckOut;

const StyledFormCheckOut = styled.div`
  .hover__checkOut {
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
