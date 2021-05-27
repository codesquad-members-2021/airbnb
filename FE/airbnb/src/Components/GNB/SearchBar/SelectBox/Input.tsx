import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  input: string;
}

const Input = ({ input }: Props) => {
  return <S.Input $input={input}>{input}</S.Input>;
};

export default Input;
