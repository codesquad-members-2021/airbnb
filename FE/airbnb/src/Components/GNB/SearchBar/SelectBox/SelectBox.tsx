import { useSetRecoilState } from "recoil";
import { modalShowState } from "@/Components/GNB/GNBStore";
import Title from "./Title";
import Input from "./Input";
import CancleButton from "./CancleButton";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  id: string;
  title: string;
  input: string;
  cancleButtonFlag: boolean;
}

const SelectBox = ({ id, title, input, cancleButtonFlag }: Props) => {
  const setCalendarModalDisplay = useSetRecoilState(
    modalShowState.calendarModalShowState
  );
  const setPriceModalDisplay = useSetRecoilState(
    modalShowState.priceModalShowState
  );
  const setPeopleModalDisplay = useSetRecoilState(
    modalShowState.peopleModalShowState
  );

  const onClick = (e: any, id: string) => {
    const selectedBoxId = e.target.closest(`#${id}`).id;

    switch (selectedBoxId) {
      case "체크인":
      case "체크아웃":
        setCalendarModalDisplay((prev) => !prev);
        break;
      case "요금":
        setPriceModalDisplay((prev) => !prev);
        break;
      case "인원":
        setPeopleModalDisplay((prev) => !prev);
        break;
      default:
        break;
    }
  };

  return (
    <S.SelectBox id={id} onClick={(e) => onClick(e, id)}>
      <Title title={title} />
      <Input input={input} />
      <CancleButton id={id} cancleButtonFlag={cancleButtonFlag} />
    </S.SelectBox>
  );
};

export default SelectBox;
