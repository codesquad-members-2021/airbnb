import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  title: string;
}

const Title = ({ title }: Props) => {
  return <S.Title>{title}</S.Title>;
};

export default Title;
