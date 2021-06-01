import React, { useEffect, useRef, useState } from 'react';

import styled from 'styled-components';
import { dotType, priceSectionType } from './priceType';

interface Props {
  priceSection: priceSectionType;
}

const PriceChart = ({ priceSection }: Props) => {
  const [canvas, setCanvas] = useState<HTMLCanvasElement | null>(null);
  const [ctx, setCtx] = useState<CanvasRenderingContext2D | null>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  useEffect(() => {
    if (!canvasRef.current) return;
    const canvas: HTMLCanvasElement = canvasRef.current;
    setCanvas(canvas);
    setCtx(canvas.getContext('2d'));
  }, []);

  const getDots = (priceSection: priceSectionType): void | Array<dotType> => {
    if (!canvas) return;
    const canvasWidth = canvas.width;
    const canvasHeight = canvas.height;
    const sectionWidth = canvasWidth / 21;
    const maxPriceCount = Math.max(...Object.values(priceSection));
    const priceEntries = Object.entries(priceSection);
    const dots = priceEntries.map(([section, count]) => ({
      x: +section * sectionWidth,
      y: (1 - count / maxPriceCount) * canvasHeight,
    }));
    return dots;
  };

  const drawDotsLine = (dots: dotType[]): void => {
    if (!canvas || !ctx) return;
    const canvasWidth = canvas.width;
    const canvasHeight = canvas.height;
    ctx.beginPath();
    ctx.fillStyle = 'rgba(0,0,0,0.7)';

    let prevX = dots[0].x;
    let prevY = dots[0].y;

    ctx.moveTo(prevX, prevY);

    for (let i = 1; i < dots.length; i++) {
      const cx = (prevX + dots[i].x) / 2;
      const cy = (prevY + dots[i].y) / 2;
      ctx.quadraticCurveTo(prevX, prevY, cx, cy);
      prevX = dots[i].x;
      prevY = dots[i].y;
    }

    ctx.lineTo(prevX, prevY);
    ctx.lineTo(canvasWidth, canvasHeight);
    ctx.lineTo(0, canvasHeight);
    ctx.fill();
    ctx.closePath();
  };

  const clearCanvas = (): void => {
    if (!canvas || !ctx) return;
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.beginPath();
  };

  const drawChart = (): void => {
    clearCanvas();
    const dots = getDots(priceSection);
    if (dots) drawDotsLine(dots);
  };

  drawChart();
  return <StyledPriceChart ref={canvasRef}></StyledPriceChart>;
};

export default React.memo(PriceChart);

const StyledPriceChart = styled.canvas`
  z-index: 11;
  width: 100%;
  height: 100%;
`;
