import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  description: string;
}

const Description = ({ description }: Props) => {
  return <S.Description>{description}</S.Description>;
};

export default Description;
