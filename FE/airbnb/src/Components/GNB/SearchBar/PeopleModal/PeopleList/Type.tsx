import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  type: string;
}

const Type = ({ type }: Props) => {
  return <S.Type>{type}</S.Type>;
};

export default Type;
