import { Footer as S } from "@/Components/Main/MainStyles";

interface Props {
  title: string;
}

const Title = ({ title }: Props) => {
  return <S.Title>{title}</S.Title>;
};

export default Title;
