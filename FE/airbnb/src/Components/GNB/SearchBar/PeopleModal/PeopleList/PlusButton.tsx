import { useState, useEffect } from "react";
import { useRecoilState, useSetRecoilState } from "recoil";
import {
  peopleState,
  selectCancleButtonState,
  selectInputState,
} from "@/Components/GNB/GNBStore";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";
import { ReactComponent as PlusIcon } from "@/assets/plusIcon.svg";

interface Props {
  type: string;
}

const PlusButton = ({ type }: Props) => {
  const setPeopleCancleButton = useSetRecoilState(
    selectCancleButtonState.people
  );
  const setPeopleInput = useSetRecoilState(selectInputState.people);
  const [adultPlusButtonFlag, setAdultPlusButtonFlag] = useRecoilState(
    peopleState.adultPlusButtonFlag
  );
  const [childrenPlusButtonFlag, setChildrenPlusButtonFlag] = useRecoilState(
    peopleState.childrenPlusButtonFlag
  );
  const [babyPlusButtonFlag, setBabyPlusButtonFlag] = useRecoilState(
    peopleState.babyPlusButtonFlag
  );
  const [adultCount, setAdultCount] = useRecoilState(peopleState.adultCount);
  const [childrenCount, setChildrenCount] = useRecoilState(
    peopleState.childrenCount
  );
  const [babyCount, setBabyCount] = useRecoilState(peopleState.babyCount);
  const setAdultMinusButtonFlag = useSetRecoilState(
    peopleState.adultMinusButtonFlag
  );
  const setChildrenMinusButtonFlag = useSetRecoilState(
    peopleState.childrenMinusButtonFlag
  );
  const setBabyMinusButtonFlag = useSetRecoilState(
    peopleState.babyMinusButtonFlag
  );
  const [buttonFlag, setButtonFlag] = useState(false);

  useEffect(() => {
    if (type === "성인") {
      setButtonFlag(adultPlusButtonFlag);
    } else if (type === "어린이") {
      setButtonFlag(childrenPlusButtonFlag);
    } else {
      setButtonFlag(babyPlusButtonFlag);
    }
  }, [type, adultPlusButtonFlag, childrenPlusButtonFlag, babyPlusButtonFlag]);

  useEffect(() => {
    if (adultCount === 0 && childrenCount === 0 && babyCount === 0) {
      setPeopleInput(`게스트 추가`);
    } else {
      setPeopleInput(
        `게스트 ${adultCount + childrenCount}명, 유아 ${babyCount}명`
      );
    }
  }, [setPeopleInput, adultCount, childrenCount, babyCount]);

  const handleClick = (e: any) => {
    setPeopleCancleButton(true);

    if (type === "성인") {
      if (adultCount >= 7) {
        setAdultPlusButtonFlag(true);
      }
      setAdultMinusButtonFlag(false);
      setAdultCount((prev) => prev + 1);
    } else if (type === "어린이") {
      if (adultCount === 0) {
        setAdultCount((prev) => prev + 1);
      }
      if (childrenCount >= 7) {
        setChildrenPlusButtonFlag(true);
      }
      setChildrenMinusButtonFlag(false);
      setChildrenCount((prev) => prev + 1);
    } else {
      if (adultCount === 0) {
        setAdultCount((prev) => prev + 1);
      }
      if (babyCount >= 7) {
        setBabyPlusButtonFlag(true);
      }
      setBabyMinusButtonFlag(false);
      setBabyCount((prev) => prev + 1);
    }
  };

  return (
    <S.PlusButton
      onClick={handleClick}
      $plusButtonFlag={buttonFlag}
      disabled={buttonFlag}
    >
      <PlusIcon />
    </S.PlusButton>
  );
};

export default PlusButton;
