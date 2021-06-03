import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const Image = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.images ? (
    <S.Image src={accomodation.images.mainImage} />
  ) : null;
};

export default Image;
