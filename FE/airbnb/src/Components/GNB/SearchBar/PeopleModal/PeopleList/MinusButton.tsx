import { useState, useEffect } from "react";
import { useRecoilState, useSetRecoilState } from "recoil";
import {
  peopleState,
  selectCancleButtonState,
} from "@/Components/GNB/GNBStore";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";
import { ReactComponent as MinusIcon } from "@/assets/minusIcon.svg";

interface Props {
  type: string;
}

const MinusButton = ({ type }: Props) => {
  const setPeopleCancleButton = useSetRecoilState(
    selectCancleButtonState.people
  );
  const [adultMinusButtonFlag, setAdultMinusButtonFlag] = useRecoilState(
    peopleState.adultMinusButtonFlag
  );
  const [childrenMinusButtonFlag, setChildrenMinusButtonFlag] = useRecoilState(
    peopleState.childrenMinusButtonFlag
  );
  const [babyMinusButtonFlag, setBabyMinusButtonFlag] = useRecoilState(
    peopleState.babyMinusButtonFlag
  );
  const [adultCount, setAdultCount] = useRecoilState(peopleState.adultCount);
  const [childrenCount, setChildrenCount] = useRecoilState(
    peopleState.childrenCount
  );
  const [babyCount, setBabyCount] = useRecoilState(peopleState.babyCount);
  const setAdultPlusButtonFlag = useSetRecoilState(
    peopleState.adultPlusButtonFlag
  );
  const setChildrenPlusButtonFlag = useSetRecoilState(
    peopleState.childrenPlusButtonFlag
  );
  const setBabyPlusButtonFlag = useSetRecoilState(
    peopleState.babyPlusButtonFlag
  );
  const [buttonFlag, setButtonFlag] = useState(false);

  useEffect(() => {
    if (type === "성인") {
      setButtonFlag(adultMinusButtonFlag);
    } else if (type === "어린이") {
      setButtonFlag(childrenMinusButtonFlag);
    } else {
      setButtonFlag(babyMinusButtonFlag);
    }
  }, [
    type,
    adultMinusButtonFlag,
    childrenMinusButtonFlag,
    babyMinusButtonFlag,
  ]);

  const handleClick = () => {
    setPeopleCancleButton(true);
    if (type === "성인") {
      if (adultCount <= 1) {
        setAdultMinusButtonFlag(true);
      }
      setAdultPlusButtonFlag(false);
      setAdultCount((prev) => prev - 1);
    } else if (type === "어린이") {
      if (childrenCount <= 1) {
        setChildrenMinusButtonFlag(true);
      }
      setChildrenPlusButtonFlag(false);
      setChildrenCount((prev) => prev - 1);
    } else {
      if (babyCount <= 1) {
        setBabyMinusButtonFlag(true);
      }
      setBabyPlusButtonFlag(false);
      setBabyCount((prev) => prev - 1);
    }
  };

  return (
    <S.MinusButton
      onClick={handleClick}
      $minusButtonFlag={buttonFlag}
      disabled={buttonFlag}
    >
      <MinusIcon />
    </S.MinusButton>
  );
};

export default MinusButton;
