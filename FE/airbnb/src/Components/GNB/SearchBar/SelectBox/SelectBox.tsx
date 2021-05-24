import Title from "./Title";
import Description from "./Description";
import CancleButton from "./CancleButton";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  title: string;
  description: string;
  cancleButtonFlag: boolean;
}

const SelectBox = ({ title, description, cancleButtonFlag }: Props) => {
  return (
    <S.SelectBox>
      <Title title={title} />
      <Description description={description} />
      <CancleButton cancleButtonFlag={cancleButtonFlag} />
    </S.SelectBox>
  );
};

export default SelectBox;
