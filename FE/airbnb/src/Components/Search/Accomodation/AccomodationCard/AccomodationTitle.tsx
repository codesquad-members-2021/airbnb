import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  title: string;
}

const AccomodationTitle = ({ title }: Props) => {
  return <S.AccomodationTitle>{title}</S.AccomodationTitle>;
};

export default AccomodationTitle;
