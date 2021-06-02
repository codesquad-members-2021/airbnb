import { useState, Dispatch, SetStateAction, MouseEvent } from "react";

import { FaRegPauseCircle } from "react-icons/fa";
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

  const mouseUpHandler = (e: MouseEvent<HTMLElement>) => {
    setStart(null);
  };
  const mouseMoveHandler = ({ pageX }: MouseEvent<HTMLElement>) => {
    if (start) {
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
    >
      <FaRegPauseCircle aria-busy={start !== null} />
    </StyledBtn>
  );
};

export default PriceBtn;

const StyledBtn = styled.div<{ offsetX: number }>`
  position: absolute;
  left: ${({ offsetX }) => `${offsetX}px`};
  width: 2rem;
  height: 2rem;
  top: -0.7rem;
  background-color: transparent;
  z-index: 2;
  cursor: pointer;
  svg {
    position: absolute;
    width: 2rem;
    height: 2rem;
    background-color: white;
    color: gray;
    border-radius: 50%;
    &:hover {
      color: black;
      &[aria-busy="true"] {
        transform: scale(1.2);
      }
    }
  }
`;
