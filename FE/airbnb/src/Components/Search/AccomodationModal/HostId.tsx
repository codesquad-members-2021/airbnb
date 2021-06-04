import { useRecoilValue } from "recoil";
import { accomodationModalDataState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const HostId = () => {
  const accomodation = useRecoilValue(accomodationModalDataState);

  return accomodation.host ? (
    <S.HostId>호스트 : {accomodation.host.id}님</S.HostId>
  ) : null;
};

export default HostId;
