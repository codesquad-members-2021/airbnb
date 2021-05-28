import { useRecoilValue } from "recoil";
import { priceState } from "@/Components/GNB/GNBStore";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

const RangeText = () => {
  const lowerLimit = useRecoilValue(priceState.lowerLimit);
  const upperLimit = useRecoilValue(priceState.upperLimit);

  return (
    <S.RangeText>
      ₩{lowerLimit.toLocaleString()} ~ {upperLimit.toLocaleString()}+
    </S.RangeText>
  );
};

export default RangeText;
