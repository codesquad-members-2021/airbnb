import styled from "styled-components";
import { useRef, useEffect, MouseEvent, useState } from "react";
import PriceBtn from "./PriceBtn";
import {useRecoilState} from "recoil"
import { priceSliderData } from "atoms/searchbarAtom";

const PriceSlider = () => {
  const offset = -10;
  const gap = 20;
  const ref = useRef<HTMLDivElement>(null);
  const [pricePersent, setPricePersent] = useRecoilState(priceSliderData)
  const [min, setMin] = useState(pricePersent.min + offset);
  const [max, setMax] = useState(pricePersent.max);
  useEffect(() => {
    if (min < offset) setMin(0 + offset);
    if (max < gap +1) setMax(gap +1);
    if (max - min < gap) {
      setMin(() => max - gap);
    }

    if (ref.current) {
      const width = ref.current.clientWidth;
      setPricePersent({max: max - offset, min : min - offset, width: ref.current.clientWidth });
      if (width + offset <= max) setMax(width + offset);
    }
  }, [ref, min, max, offset,setPricePersent]);

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
