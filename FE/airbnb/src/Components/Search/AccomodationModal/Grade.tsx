import { ReactComponent as Star } from "@/assets/starIcon.svg";
import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const Grade = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.grade >= 0 ? (
    <S.Grade>
      <Star /> {accomodation.grade}
    </S.Grade>
  ) : null;
};

export default Grade;
