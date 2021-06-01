import { MouseEvent, Suspense, useEffect, useRef } from 'react';
import { useRecoilValue, useResetRecoilState, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import {
  isFormOpenedState,
  pauseBtnLastPositionState,
  pauseBtnPositionState,
  priceState,
} from '../../../recoil/headerAtom';
import { getNumberWithComma } from '../../util/util';
import HoverBlock from '../HoverBlock';
import FormColumn from './FormColumn';
import PriceBar, { PRICE_DATA } from './priceBar/PriceBar';
import { ReactComponent as DeleteBtn } from '../../../assets/svg/Property 1=x-circle.svg';

const FormPrice = () => {
  const clickRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef, toggleRef });
  const priceRange = useRecoilValue(priceState);
  const resetPriceRange = useResetRecoilState(priceState);
  const resetBtnPosition = useResetRecoilState(pauseBtnPositionState);
  const resetBtnLastPosition = useResetRecoilState(pauseBtnLastPositionState);

  const isShowDeleteBtn =
    priceRange.min !== PRICE_DATA.DEFAULT_MIN_PRICE ||
    priceRange.max !== PRICE_DATA.DEFAULT_MAX_PRICE;

  const setIsFormOpened = useSetRecoilState(isFormOpenedState);

  useEffect(() => {
    if (open) setIsFormOpened(true);
    else setIsFormOpened(false);
  }, [open]);

  const minPrice = getNumberWithComma(priceRange.min);
  const maxPrice = getNumberWithComma(priceRange.max);

  const priceDescripition = `￦${minPrice} ~ ￦${maxPrice}`;

  const handleDeleteClick = (e: MouseEvent): void => {
    e.stopPropagation();
    resetPriceRange();
    resetBtnPosition();
    resetBtnLastPosition();
  };

  return (
    <StyledFormPriceWrapper>
      <StyledFormPrice ref={clickRef} data-type='price'>
        <HoverBlock color='gray5' className='hover__price' dataKey='price' isModal={open}>
          <FormColumn title='요금' description={priceDescripition} />
          {isShowDeleteBtn && open && <DeleteBtn onClick={handleDeleteClick} />}
        </HoverBlock>
      </StyledFormPrice>
      {open && (
        <Suspense fallback='loading...'>
          <PriceBar toggleRef={toggleRef} />
        </Suspense>
      )}
    </StyledFormPriceWrapper>
  );
};

export default FormPrice;

const StyledFormPriceWrapper = styled.div`
  position: relative;
`;

const StyledFormPrice = styled.div`
  height: 100%;
  .hover__price {
    display: flex;
    align-items: center;
    justify-content: space-between;
    height: 100%;
    padding: 1rem;
    border-radius: 3rem;
    cursor: pointer;
  }
`;
