import { useRecoilValue, useRecoilState } from "recoil";
import { useEffect } from "react";
import { modalShowState, priceState } from "@/Components/GNB/GNBStore";
import Title from "./Title";
import RangeText from "./RangeText";
import Description from "./Description";
import RangeChart from "./RangeChart/RangeChart";
import { getApi } from "@/Utils/api";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

const PriceModal = () => {
  const isShow = useRecoilValue(modalShowState.priceModalShowState);
  const [prices, setPrices] = useRecoilState(priceState.prices);
  const [error, setError] = useRecoilState(priceState.error);

  useEffect(() => {
    getApi
      .price()
      .then((res) => res.json())
      .then((json) => {
        if (json && json.prices) setPrices(json.prices);
        else throw Error();
      })
      .catch((err) => setError(err));
  }, [setPrices, setError]);

  if (error || !prices) return null;

  return (
    <S.PriceModalWrapper $isShow={isShow}>
      <S.PriceModal>
        <Title />
        <RangeText />
        <Description prices={prices} />
        <RangeChart prices={prices} />
      </S.PriceModal>
    </S.PriceModalWrapper>
  );
};

export default PriceModal;
