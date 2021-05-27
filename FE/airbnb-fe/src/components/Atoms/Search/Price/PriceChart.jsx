import React, { useContext, useEffect, useRef, useState } from 'react';

import styled from 'styled-components';
import { SearchContext } from '..';
import Slider from './Slider';

const PriceChart = () => {
  const [chart, setChart] = useState({
    width: 0,
    height: 0,
  });

  const { priceData } = useContext(SearchContext);

  const chartRef = useRef();

  const points = [
    { x: 1, y: chart.height - 2 },
    { x: 60, y: chart.height - 3 },
    { x: 70, y: chart.height - 6 },
    { x: 80, y: chart.height - 10 },
    { x: 90, y: chart.height - 30 },

    { x: 110, y: chart.height - 100 },
    { x: 120, y: chart.height - 80 },
    { x: 140, y: 1 },
    { x: 150, y: chart.height - 110 },
    { x: 170, y: chart.height - 70 },

    { x: 210, y: chart.height - 20 },
    { x: 215, y: chart.height - 30 },
    { x: 225, y: chart.height - 15 },
    { x: chart.width - 1, y: chart.height - 2 },
  ];

  const drawOver = (ctx, minPrice, maxPrice) => {
    ctx.globalCompositeOperation = 'destination-atop';
    //
    ctx.fillStyle = 'black';
    let leftWidth = (minPrice * chart.width) / 1000000;
    const rightWidth = (maxPrice * chart.width) / 1000000;
    ctx.fillRect(1, 1, leftWidth, chart.height - 1);
    ctx.fill();
  };

  const drawMaxOver = (ctx, minPrice, maxPrice) => {
    ctx.globalCompositeOperation = 'destination-atop';
    //
    ctx.fillStyle = 'black';
    const rightWidth = (maxPrice * chart.width) / 1000000;
    ctx.fillRect(rightWidth, 1, chart.width - 1, chart.height - 1);
    ctx.fill();
  };

  const drawChart = (ctx, points) => {
    ctx.beginPath();
    ctx.moveTo(points[0].x, points[0].y);

    for (var i = 0; i < points.length - 1; i++) {
      var x_mid = (points[i].x + points[i + 1].x) / 2;
      var y_mid = (points[i].y + points[i + 1].y) / 2;
      var cp_x1 = (x_mid + points[i].x) / 2;
      var cp_x2 = (x_mid + points[i + 1].x) / 2;

      ctx.quadraticCurveTo(cp_x1, points[i].y, x_mid, y_mid);

      ctx.quadraticCurveTo(
        cp_x2,
        points[i + 1].y,
        points[i + 1].x,
        points[i + 1].y
      );
      ctx.stroke();
    }

    ctx.fillStyle = 'gray';
    ctx.fill();
  };

  useEffect(() => {
    setChart({
      width: chartRef.current.width,
      height: chartRef.current.height,
    });
    const ctx = chartRef.current.getContext('2d');
    chart.height && chart.width && drawChart(ctx, points);
    drawOver(ctx, priceData.minPrice, priceData.maxPrice);
  }, [chart.height, priceData.maxPrice, priceData.minPrice]);

  return (
    <PriceChartViewDiv>
      <ChartCanvas width="365px" ref={chartRef}></ChartCanvas>
      <Slider />
    </PriceChartViewDiv>
  );
};
const PriceChartViewDiv = styled.div`
  position: relative;
  border: 1px solid red;
  margin-top: 2.31rem;
  height: 6.25rem;
`;

const ChartCanvas = styled.canvas`
  display: flex;
  width: 100%;
  height: 100%;
  border: 1px solid yellow;
`;

export default PriceChart;
