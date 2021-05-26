import React, { useEffect, useRef, useState } from 'react';

import styled from 'styled-components';

interface Props {}

const PriceChart = (props: Props) => {
  const [context, setContext] = useState<CanvasRenderingContext2D | null>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  useEffect(() => {
    if (!canvasRef.current) return;
    const canvas: HTMLCanvasElement = canvasRef.current;
    setContext(canvas.getContext('2d'));
  }, []);
  console.log('context', context);
  return <div></div>;
};

export default PriceChart;

const StyledPriceChart = styled.canvas``;
