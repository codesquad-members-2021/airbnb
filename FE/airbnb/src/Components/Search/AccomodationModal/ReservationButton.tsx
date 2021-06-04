import { useSetRecoilState, useRecoilValue } from "recoil";
import {
  showAccomodationModalState,
  accomodationModalDataState,
} from "@/Components/Search/SearchStore";
import { peopleState, selectInputState } from "@/Components/GNB/GNBStore";
import { postApi } from "@/Utils/api";
import { AccomodationModal as S } from "@/Components/Search/SearchStyles";

const ReservationButton = () => {
  const setShowAccomodationModalFlag = useSetRecoilState(
    showAccomodationModalState
  );
  const accomodation = useRecoilValue(accomodationModalDataState);
  const people =
    useRecoilValue(peopleState.adultCount) +
    useRecoilValue(peopleState.childrenCount);
  const checkIn = useRecoilValue(selectInputState.checkIn);
  const checkOut = useRecoilValue(selectInputState.checkOut);

  const handleClick = () => {
    const body = {
      roomId: String(accomodation.roomId),
      people,
      schedule: {
        checkIn,
        checkOut,
      },
    };
    postApi.reservation(body);
    setShowAccomodationModalFlag(false);
  };

  return (
    <S.ReservationButton onClick={handleClick}>예약하기</S.ReservationButton>
  );
};

export default ReservationButton;
