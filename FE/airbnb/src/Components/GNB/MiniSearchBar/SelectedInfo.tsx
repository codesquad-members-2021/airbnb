import { MiniSearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  selectedInfo: string;
}

const SelectedInfo = ({ selectedInfo }: Props) => {
  return <S.SelectedInfo>{selectedInfo}</S.SelectedInfo>;
};

export default SelectedInfo;
