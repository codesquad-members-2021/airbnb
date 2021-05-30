import Type from "./Type";
import Description from "./Description";
import CountNumber from "./CountNumber";
import MinusButton from "./MinusButton";
import PlusButton from "./PlusButton";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  type: string;
  description: string;
}

const PeopleList = ({ type, description }: Props) => {
  return (
    <S.PeopleList>
      <S.People>
        <Type type={type} />
        <Description description={description} />
      </S.People>
      <S.Counter>
        <MinusButton type={type} />
        <CountNumber type={type} />
        <PlusButton type={type} />
      </S.Counter>
    </S.PeopleList>
  );
};

export default PeopleList;
