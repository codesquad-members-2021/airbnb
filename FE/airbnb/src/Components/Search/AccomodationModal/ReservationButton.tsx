import { useSetRecoilState } from "recoil";
import { showAccomodationModalState } from "@/Components/Search/SearchStore";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const ReservationButton = () => {
  const setShowAccomodationModalFlag = useSetRecoilState(
    showAccomodationModalState
  );

  const handleClick = () => {
    setShowAccomodationModalFlag(false);
  };

  return (
    <S.ReservationButton onClick={handleClick}>예약하기</S.ReservationButton>
  );
};

export default ReservationButton;
