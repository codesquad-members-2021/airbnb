import styled from "styled-components";
import { useRef, useEffect, useState } from "react";
import PriceBtn from "./PriceBtn";
import { useRecoilState, useSetRecoilState } from "recoil";
import { priceSliderData, priceData } from "atoms/searchbarAtom";

const PriceSlider = ({
  maxPrice,
  minPrice,
}: {
  maxPrice: number;
  minPrice: number;
}) => {
  const offset = -10;
  const gap = 20;
  const ref = useRef<HTMLDivElement>(null);
  const setPriceValue = useSetRecoilState(priceData);
  const [pricePersent, setPricePersent] = useRecoilState(priceSliderData);
  const [min, setMin] = useState(pricePersent.min + offset);
  const [max, setMax] = useState(pricePersent.max);
  useEffect(() => {
    
    if (min < offset) setMin(0 + offset);
    if (max < gap + 1) setMax(gap + 1);
    if (max - min < gap) {
      setMin(() => max - gap);
    }

    if (ref.current) {
      const _max = max - offset;
      const _min = min - offset;
      const width = ref.current.clientWidth;
      const _gap = maxPrice - minPrice;
      const curMin = minPrice + Math.floor((_gap * _min) / width / 1000) * 1000;
      const curMax = minPrice + Math.floor((_gap * _max) / width / 1000) * 1000;
      if (maxPrice < Infinity)
        setPriceValue({ maxPrice: curMax, minPrice: curMin });
      setPricePersent({
        max: max - offset,
        min: min - offset,
        width: ref.current.clientWidth,
      });
      if (width + offset <= max) setMax(width + offset);
    }
  }, [setPriceValue ,ref, min, max, offset, setPricePersent, maxPrice, minPrice]);

  return (
    <StyledSlider ref={ref}>
      <PriceBtn offsetX={max} setOffsetX={setMax} />
      <PriceBtn offsetX={min} setOffsetX={setMin} />
    </StyledSlider>
  );
};

export default PriceSlider;

const StyledSlider = styled.div`
  width: 100%;
  height: 0.5rem;
  background-color: gray;
  position: relative;
  margin-top: 2rem;
`;
