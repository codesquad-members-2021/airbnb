import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const Review = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.reviewCount >= 0 ? (
    <S.Review>(후기 {accomodation.reviewCount}개)</S.Review>
  ) : null;
};

export default Review;
