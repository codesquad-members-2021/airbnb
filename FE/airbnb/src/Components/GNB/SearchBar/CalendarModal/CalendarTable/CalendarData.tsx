import { useRecoilState, useSetRecoilState } from "recoil";
import {
  selectInputState,
  selectCancleButtonState,
} from "@/Components/GNB/GNBStore";
import { CalendarModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  data: number | string;
  dataId: string;
  $isNotDate: boolean;
}

const CalendarData = ({ data, dataId, $isNotDate }: Props) => {
  const [checkInInput, setCheckInInput] = useRecoilState(
    selectInputState.checkIn
  );
  const [checkOutInput, setCheckOutInput] = useRecoilState(
    selectInputState.checkOut
  );
  const setCheckInCancleButton = useSetRecoilState(
    selectCancleButtonState.checkIn
  );
  const setCheckOutCancleButton = useSetRecoilState(
    selectCancleButtonState.checkOut
  );

  const handleClick = (e: any) => {
    const dataId = e.target.dataset.id;

    if (dataId === "0") {
      return;
    } else if (
      dataIdtoNum(checkInInput) > dataIdtoNum(dataId) ||
      checkInInput === "날짜 입력"
    ) {
      setCheckInInput(dataId);
      setCheckInCancleButton(true);
    } else {
      setCheckOutInput(dataId);
      setCheckOutCancleButton(true);
    }
  };

  const dataIdtoNum = (data: string) => parseInt(data.replace(/[^0-9]/g, ""));

  return (
    <S.CalendarData
      $isNotDate={$isNotDate}
      $isSelected={checkInInput === dataId || checkOutInput === dataId}
      $isBetween={
        dataIdtoNum(checkInInput) < dataIdtoNum(dataId) &&
        dataIdtoNum(dataId) < dataIdtoNum(checkOutInput)
      }
      data-id={dataId}
      onClick={handleClick}
    >
      {data === 0 ? "" : data}
    </S.CalendarData>
  );
};

export default CalendarData;
