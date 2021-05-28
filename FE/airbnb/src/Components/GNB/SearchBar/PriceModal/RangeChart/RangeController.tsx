import { useRecoilState, useSetRecoilState } from "recoil";
import {
  selectCancleButtonState,
  selectInputState,
  priceState,
} from "@/Components/GNB/GNBStore";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

const RangeController = () => {
  const [lowerLimit, setLowerLimit] = useRecoilState(priceState.lowerLimit);
  const [upperLimit, setUpperLimit] = useRecoilState(priceState.upperLimit);
  const setPriceCancleButton = useSetRecoilState(selectCancleButtonState.price);
  const setPriceInput = useSetRecoilState(selectInputState.price);

  const handleLowerOnInput = (e: any) => {
    if (e.target.value > upperLimit) {
      return;
    } else {
      setPriceCancleButton(true);
      setLowerLimit(e.target.value);
      setPriceInput(`₩${lowerLimit} ~ ${upperLimit}`);
    }
  };

  const handleUpperOnInput = (e: any) => {
    if (e.target.value < lowerLimit) {
      return;
    } else {
      setPriceCancleButton(true);
      setUpperLimit(e.target.value);
      setPriceInput(`₩${lowerLimit} ~ ${upperLimit}`);
    }
  };

  return (
    <S.RangeController>
      <S.RangeLowerController
        type="range"
        min="0"
        max="1000000"
        step="10000"
        onInput={handleLowerOnInput}
      ></S.RangeLowerController>
      <S.RangeUpperController
        type="range"
        min="0"
        max="1000000"
        step="10000"
        defaultValue="1000000"
        onInput={handleUpperOnInput}
      ></S.RangeUpperController>
    </S.RangeController>
  );
};

export default RangeController;
