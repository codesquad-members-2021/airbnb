import ChartLine from "./ChartLine";
import RangeController from "./RangeController";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  prices: number[];
}

const RangeChart = ({ prices }: Props) => {
  //
  const makeChartLines = (prices: number[]) => {
    const chartLines = [];
    let $height = 0;
    let $rangeStep = 10000;
    let index = 0;

    for (let i = 0; i < 100; i++) {
      // console.log(
      //   "i : ",
      //   i,
      //   "rangeStep : ",
      //   $rangeStep,
      //   "index : ",
      //   index,
      //   "height : ",
      //   $height
      // );
      if (prices[index] < $rangeStep) {
        $height++;
        index++;
      } else {
        chartLines.push(
          <ChartLine
            key={`${$rangeStep - 10000} ~ ${$rangeStep}`}
            $rangeStep={$rangeStep}
            $height={$height}
          />
        );
        $height = 0;
        $rangeStep += 10000;
      }
    }
    // console.log(chartLines);
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
