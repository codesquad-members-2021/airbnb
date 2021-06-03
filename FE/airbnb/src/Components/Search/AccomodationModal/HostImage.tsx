import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const HostImage = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.host ? (
    <S.HostImage src={accomodation.host.profileImageUrl} />
  ) : null;
};

export default HostImage;
