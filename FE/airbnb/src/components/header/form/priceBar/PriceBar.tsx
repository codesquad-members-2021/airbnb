import { RefObject } from 'react';
import styled from 'styled-components';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}
const PriceBar = ({ toggleRef }: Props) => {
  return <StyledPriceBar ref={toggleRef}></StyledPriceBar>;
};

export default PriceBar;

const StyledPriceBar = styled.div`
  position: absolute;
  top: 100px;
  width: 300px;
  min-height: 80px;
  padding: 1rem;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 1rem;
`;
