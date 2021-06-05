import styled from "styled-components";
import data from "./Prices.json";

const PriceGraph = () => {
  const { prices } = data;
  const priceCounts = Object.values(prices);
  return (
    <GraphItemContainer>
      {priceCounts.map((x, idx) => {
        return <GraphItem key={idx} _height={String(x)} />;
      })}
    </GraphItemContainer>
  );
};

type TGraph = {
  _height: string;
};

const GraphItemContainer = styled.div`
  /* position: relative; */
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  height: 100px;
`;
const GraphItem = styled.div`
  width: 1.5rem;
  height: ${(props: TGraph) => props._height}%;
  background-color: #9a9898;
  bottom: 0;
`;
export default PriceGraph;
