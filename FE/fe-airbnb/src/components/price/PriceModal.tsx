import { PriceContext } from '@components/searchBar/SearchBar';
import { PriceContextType } from '@components/searchBar/searchBarTypes';
import { useContext, useState } from 'react';
import styled from 'styled-components';
import PriceChart from './PriceChart';
import RangeSlider from './RangeSlider';

const PRICE_DATA = {
  WIDTH: 365,
  INITIAL_MIN_PRICE: 10000,
  INITIAL_MAX_PRICE: 1000000,
  INITIAL_LEFT: 1000,
  INITIAL_RIGHT: 1350,
}

function usePriceState(): PriceContextType {
  const state = useContext(PriceContext);
  if(!state) throw new Error('에러발생~! state가 없습니다.🙅🏻');
  return state;
}

function PriceModal() {
  const { 
    min,
    max,
    minPrice,
    setMinPrice,
    maxPrice,
    setMaxPrice } = usePriceState();

  return (
    <PriceModalContainer>
      <PriceRangeTitle>가격 범위</PriceRangeTitle>
      <PriceRange>₩{minPrice} - ₩{maxPrice}</PriceRange>
      <PriceAverage>평균 1박 요금은 ₩165,556 입니다.</PriceAverage>
      <PriceChart />
      <RangeSlider 
        min={min} 
        max={max} 
        minPrice={minPrice} 
        setMinPrice={setMinPrice} 
        maxPrice={maxPrice} 
        setMaxPrice={setMaxPrice} 
      />
    </PriceModalContainer>
  );
}

const PriceModalContainer = styled.div`
  width: 493px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 52px 64px;
  margin-top: 16px;
  position: absolute;
  left: 305px;
`

const PriceRangeTitle = styled.div`
  color: ${({theme}) => theme.colors.black};
  font-size: ${({theme}) => theme.fontSizes.SM};
  font-weight: bold;
  margin-bottom: 16px;
`

const PriceRange = styled.div`
  color: ${({theme}) => theme.colors.gray1};
  font-size: ${({theme}) => theme.fontSizes.M};
  margin-bottom: 4px;
`

const PriceAverage = styled.div`
  color: ${({theme}) => theme.colors.gray3};
  font-size: ${({theme}) => theme.fontSizes.S};
  margin-bottom: 40px;
`

export default PriceModal;
