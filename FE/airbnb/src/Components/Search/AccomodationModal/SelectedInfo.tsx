import { useRecoilValue } from "recoil";
import { selectInputState } from "@/Components/GNB/GNBStore";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const SelectedInfo = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);
  const checkIn = useRecoilValue(selectInputState.checkIn);
  const checkOut = useRecoilValue(selectInputState.checkOut);
  const people = useRecoilValue(selectInputState.people);

  return accomodation.price ? (
    <>
      <S.SelectedInfoPrice>
        <span>₩{accomodation.price.toLocaleString()}</span> / 박
      </S.SelectedInfoPrice>
      <S.SelectedInfoBox>
        <S.DateWrapper>
          <S.CheckIn>
            <S.SelectedInfoTitle>체크인</S.SelectedInfoTitle>
            <S.SelectedInfoInput>{checkIn}</S.SelectedInfoInput>
          </S.CheckIn>
          <S.CheckOut>
            <S.SelectedInfoTitle>체크아웃</S.SelectedInfoTitle>
            <S.SelectedInfoInput>{checkOut}</S.SelectedInfoInput>
          </S.CheckOut>
        </S.DateWrapper>
        <S.People>
          <S.SelectedInfoTitle>인원</S.SelectedInfoTitle>
          <S.SelectedInfoInput>{people}</S.SelectedInfoInput>
        </S.People>
      </S.SelectedInfoBox>
    </>
  ) : null;
};

export default SelectedInfo;
