import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  cancleButtonFlag: boolean;
}

const CancleButton = ({ cancleButtonFlag }: Props) => {
  return <S.CancleButton $cancleButtonFlag={cancleButtonFlag} />;
};

export default CancleButton;
