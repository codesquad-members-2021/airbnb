import styled from "styled-components";
import { useRef, useEffect, MouseEvent, useState } from "react";
import PriceBtn from "./PriceBtn";
const PriceSlider = () => {
  const ref = useRef<HTMLDivElement>(null);
  const [min, setMin] = useState(-10);
  const [max, setMax] = useState(100);

  useEffect(() => {
    if (min < -10) setMin(-10);
    if (max < 32) setMax(32);
    if (max - min < 30) setMin(() => max - 31);
    if (ref.current) {
      if (ref.current.clientWidth - 10 <= max)
        setMax(ref.current.clientWidth - 10);
    }
  }, [ref, min, max]);

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
`;
