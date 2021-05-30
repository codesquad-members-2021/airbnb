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
    let value = Number(e.target.value);
    if (value > upperLimit) {
      e.target.value = String(upperLimit);
      e.preventDefault();
    } else {
      setPriceCancleButton(true);
      setLowerLimit(value);
      setPriceInput(
        `₩${value.toLocaleString()} ~ ${upperLimit.toLocaleString()}`
      );
    }
  };

  const handleUpperOnInput = (e: any) => {
    let value = Number(e.target.value);
    if (value < lowerLimit) {
      e.target.value = String(lowerLimit);
      e.preventDefault();
    } else {
      setPriceCancleButton(true);
      setUpperLimit(value);
      setPriceInput(
        `₩${lowerLimit.toLocaleString()} ~ ${value.toLocaleString()}`
      );
    }
  };

  return (
    <S.RangeController>
      <S.RangeLowerController
        type="range"
        min="0"
        max="1000000"
        step="10000"
        defaultValue="0"
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
