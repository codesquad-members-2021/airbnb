import { useResetRecoilState } from "recoil";
import {
  selectInputState,
  selectCancleButtonState,
} from "@/Components/GNB/GNBStore";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  id: string;
  cancleButtonFlag: boolean;
}

const CancleButton = ({ id, cancleButtonFlag }: Props) => {
  const resetCheckIn = useResetRecoilState(selectInputState.checkIn);
  const resetCheckOut = useResetRecoilState(selectInputState.checkOut);
  const resetPrice = useResetRecoilState(selectInputState.price);
  const resetPeople = useResetRecoilState(selectInputState.people);
  const resetCheckInCancleButton = useResetRecoilState(
    selectCancleButtonState.checkIn
  );
  const resetCheckOutCancleButton = useResetRecoilState(
    selectCancleButtonState.checkOut
  );
  const resetPriceCancleButton = useResetRecoilState(
    selectCancleButtonState.price
  );
  const resetPeopleCancleButton = useResetRecoilState(
    selectCancleButtonState.people
  );

  const handleClick = (e: any) => {
    const title = e.target.closest(`#${id}`).id;

    if (title === "체크인") {
      resetCheckIn();
      resetCheckInCancleButton();
    } else if (title === "체크아웃") {
      resetCheckOut();
      resetCheckOutCancleButton();
    } else if (title === "요금") {
      resetPrice();
      resetPriceCancleButton();
    } else if (title === "인원") {
      resetPeople();
      resetPeopleCancleButton();
    } else return;
  };
  return (
    <S.CancleButton
      id={id}
      onClick={handleClick}
      $cancleButtonFlag={cancleButtonFlag}
    />
  );
};

export default CancleButton;
