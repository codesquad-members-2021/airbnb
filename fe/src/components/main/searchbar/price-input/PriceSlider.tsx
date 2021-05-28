import styled from "styled-components";
import { useRef, useEffect,MouseEvent } from "react";
const PriceSlider = () => {
  const ref = useRef<HTMLDivElement>(null);
  useEffect(() => {
    console.dir(ref.current?.clientWidth);
  }, [ref]);
const ClickHandler = ({ target } : MouseEvent<HTMLElement>) => {

}
  return (
    <StyledSlider ref={ref}>
      <StyledBtn onClick={ClickHandler}/>
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

const StyledBtn = styled.div`
  position: absolute;
`;
