import ChartLine from "./ChartLine";
import RangeController from "./RangeController";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  prices: number[];
}

const RangeChart = ({ prices }: Props) => {
  const makeChartLines = (prices: number[]) => {
    const chartLines = [];
    let $height = 0;
    let $rangeStep = 10000;

    for (let i = 0; i < prices.length; i++) {
      if (prices[i] < $rangeStep) {
        $height++;
      } else {
        chartLines.push(
          <ChartLine key={i} $rangeStep={$rangeStep} $height={$height} />
        );
        $height = 1;
        $rangeStep += 10000;
      }
    }
    return chartLines;
  };

  return (
    <>
      <S.RangeChart>{makeChartLines(prices).map((v) => v)}</S.RangeChart>
      <RangeController />
    </>
  );
};

export default RangeChart;
