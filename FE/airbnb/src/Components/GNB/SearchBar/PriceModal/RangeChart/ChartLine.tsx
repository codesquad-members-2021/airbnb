import { useRecoilValue } from "recoil";
import { priceState } from "@/Components/GNB/GNBStore";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  $rangeStep: number;
  $height: number;
}

const ChartLine = ({ $rangeStep, $height }: Props) => {
  const lowerLimit = useRecoilValue(priceState.lowerLimit);
  const upperLimit = useRecoilValue(priceState.upperLimit);

  return (
    <S.ChartLine
      $isRangeOut={$rangeStep < lowerLimit || $rangeStep > upperLimit}
      $height={$height}
    />
  );
};

export default ChartLine;
