import { Footer as S } from "@/Components/Main/MainStyles";

interface Props {
  list: string;
}

const List = ({ list }: Props) => {
  return <S.List>{list}</S.List>;
};

export default List;
