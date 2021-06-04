import { ReactComponent as Star } from "@/assets/starIcon.svg";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

interface Props {
  grade: number;
}

const Grade = ({ grade }: Props) => {
  return (
    <S.Grade>
      <Star /> {grade}
    </S.Grade>
  );
};

export default Grade;
