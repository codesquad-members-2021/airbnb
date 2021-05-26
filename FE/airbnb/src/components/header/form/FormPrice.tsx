import { useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import PriceBar from './priceBar/PriceBar';

const FormPrice = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  return (
    <StyledFormPriceWrapper>
      <StyledFormPrice ref={clickRef} data-type='price'>
        <HoverBlock color='gray4' className='hover__price' dataKey='price' isModal={open}>
          <FormColumn title='요금' description='금액대 설정' />
        </HoverBlock>
      </StyledFormPrice>
      {/* {open && <PriceBar toggleRef={toggleRef} />} */}
      <PriceBar toggleRef={toggleRef} />
    </StyledFormPriceWrapper>
  );
};

export default FormPrice;

const StyledFormPriceWrapper = styled.div``;

const StyledFormPrice = styled.div`
  height: 100%;
  .hover__price {
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
