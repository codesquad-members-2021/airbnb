import { useRecoilValue } from "recoil";
import { modalShowState } from "@/Components/GNB/GNBStore";
import { PriceModal as S } from "@/Components/GNB/GNBStlyes";

const PriceModal = () => {
  const isShow = useRecoilValue(modalShowState.priceModalShowState);
  return (
    <S.PriceModalWrapper $isShow={isShow}>
      <S.PriceModal>가격 모달</S.PriceModal>
    </S.PriceModalWrapper>
  );
};

export default PriceModal;

/*
1. 가격 범위로 해주세요
2. input range onInput || onChange에 따른 state변화
3. 변화하면 앞의 큰 wrapper의 색상 변화
*/
