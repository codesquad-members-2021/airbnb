import { useState } from 'react'
import styled from 'styled-components';

function PriceChart() {
  const [canvas, setCanvas] = useState<HTMLCanvasElement | null>(null);
  const [ctx, setCtx] = useState<CanvasRenderingContext2D | null>(null);


  return <PriceChartCanvas></PriceChartCanvas>
}

const PriceChartCanvas = styled.canvas`
  width: 100%;
  height: 100px;
  background-color: #c91664;
`

export default PriceChart
