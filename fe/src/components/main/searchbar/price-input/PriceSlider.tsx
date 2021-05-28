import styled from "styled-components";
import { useRef, useEffect, MouseEvent, useState } from "react";
const PriceSlider = () => {
  const ref = useRef<HTMLDivElement>(null);
  useEffect(() => {
    console.dir(ref.current?.clientWidth);
  }, [ref]);

  const [start, setStart] = useState<number | null>(null);
  const [offsetX, setOffsetX] = useState<number>(0);
  const ClickHandler = ({ pageX, currentTarget }: MouseEvent<HTMLElement>) => {
    setStart(pageX - currentTarget.offsetLeft);
    console.log(offsetX);
  };

  const Click = ({ pageX, currentTarget }: MouseEvent<HTMLElement>) => {
    setStart(null);
  };
  const MouseClickHandler = ({ pageX }: MouseEvent<HTMLElement>) => {
    if (start) setOffsetX((offsetX) => pageX - start);
  };

  return (
    <StyledSlider ref={ref}>
      <StyledBtn
        offsetX={offsetX}
        onMouseDown={ClickHandler}
        onMouseMove={MouseClickHandler}
        onMouseUp={Click}
        onMouseLeave={Click}
      />
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

const StyledBtn = styled.div<{ offsetX: number }>`
  position: absolute;
  left: ${({ offsetX }) => `${offsetX}px`};
  width: 1.5rem;
  height: 1.5rem;
  background-color: black;
`;
