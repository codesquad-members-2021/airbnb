import { useState, Dispatch, SetStateAction, MouseEvent } from "react";
import styled from "styled-components";
type PriceBtnType = {
  offsetX: number;
  setOffsetX: Dispatch<SetStateAction<number>>;
};
const PriceBtn = ({ offsetX, setOffsetX }: PriceBtnType) => {
  const [start, setStart] = useState<number | null>(null);

  const mouseDownHandler = ({
    pageX,
    currentTarget,
  }: MouseEvent<HTMLElement>) => {
    setStart(pageX - currentTarget.offsetLeft);
  
  };

  const mouseUpHandler = ({
    pageX,
    currentTarget,
  }: MouseEvent<HTMLElement>) => {
    setStart(null);
  };
  const mouseMoveHandler = ({ pageX }: MouseEvent<HTMLElement>) => {
    if (start) {
        console.log(offsetX, pageX - start)
        setOffsetX(pageX - start);
    
    }
  };

  return (
    <StyledBtn
      offsetX={offsetX}
      onMouseDown={mouseDownHandler}
      onMouseMove={mouseMoveHandler}
      onMouseUp={mouseUpHandler}
      onMouseLeave={mouseUpHandler}
    />
  );
};

export default PriceBtn;

const StyledBtn = styled.div<{ offsetX: number }>`
  position: absolute;
  left: ${({ offsetX }) => `${offsetX}px`};
  width: 1.5rem;
  height: 1.5rem;

  background-color: black;
`;
