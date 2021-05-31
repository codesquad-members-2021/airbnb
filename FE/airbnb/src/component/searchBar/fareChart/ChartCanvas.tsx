import { useState, useRef, useEffect } from "react";
import styled from "styled-components";
import { chartControlType } from "component/searchBar/fareChart/chartType";

interface Props {
  chartControl: chartControlType;
  chartData: number[];
}

function ChartCanvas({ chartControl, chartData }: Props) {
  const [ctx, setCtx] = useState<CanvasRenderingContext2D | null>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  useEffect(() => {
    if (!canvasRef.current) return;
    const canvas = canvasRef.current;
    setCtx(canvas.getContext("2d"));
  }, []);

  const { SECTIONS, WIDTH, HEIGHT } = chartControl;
  const max = Math.max(...chartData);
  const perY = HEIGHT / max;
  const perX = WIDTH / SECTIONS;

  const clearCanvas = (): void => {
    if (!ctx) return;
    ctx.clearRect(0, 0, WIDTH, HEIGHT);
    ctx.beginPath();
  };

  const drawLine = (): void => {
    if (!ctx) return;
    ctx.moveTo(0, HEIGHT);
    chartData.forEach((v, i) => ctx.lineTo(i * perX, HEIGHT - v * perY));
    ctx.lineTo(WIDTH, HEIGHT);
    ctx.closePath();
    ctx.fillStyle = "rgba(0, 0, 0, 0.4)";
    ctx.fill();
  };

  clearCanvas();
  drawLine();

  return (
    <>
      <Canvas ref={canvasRef} width={WIDTH} height={HEIGHT}></Canvas>
    </>
  );
}

export default ChartCanvas;

const Canvas = styled.canvas`
  width: 300px;
  height: 120px;
  /* outline: 1px solid gold; */
`;
