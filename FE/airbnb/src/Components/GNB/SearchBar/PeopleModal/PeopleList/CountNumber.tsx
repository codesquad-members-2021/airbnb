import { useRecoilValue } from "recoil";
import { peopleState } from "@/Components/GNB/GNBStore";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";

interface Props {
  type: string;
}

const CountNumber = ({ type }: Props) => {
  const adultCount = useRecoilValue(peopleState.adultCount);
  const childrenCount = useRecoilValue(peopleState.childrenCount);
  const babyCount = useRecoilValue(peopleState.babyCount);

  let count;
  if (type === "성인") {
    count = adultCount;
  } else if (type === "어린이") {
    count = childrenCount;
  } else {
    count = babyCount;
  }

  return <S.CountNumber>{count}</S.CountNumber>;
};

export default CountNumber;
