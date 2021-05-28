import { useRef } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { priceState } from '../../../recoil/headerAtom';
import { getNumberWithComma } from '../../util/util';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import PriceBar from './priceBar/PriceBar';

const FormPrice = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  const priceRange = useRecoilValue(priceState);

  const minPrice = getNumberWithComma(priceRange.min);
  const maxPrice = getNumberWithComma(priceRange.max);

  const priceDescripition = `￦${minPrice} ~ ￦${maxPrice}`;

  return (
    <StyledFormPriceWrapper>
      <StyledFormPrice ref={clickRef} data-type='price'>
        <HoverBlock color='gray4' className='hover__price' dataKey='price' isModal={open}>
          <FormColumn title='요금' description={priceDescripition} />
        </HoverBlock>
      </StyledFormPrice>
      {open && <PriceBar toggleRef={toggleRef} />}
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
