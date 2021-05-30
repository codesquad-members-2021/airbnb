import { useRecoilValue } from "recoil";
import { modalShowState } from "@/Components/GNB/GNBStore";
import PeopleList from "./PeopleList/PeopleList";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";

const PeopleModal = () => {
  const isShow = useRecoilValue(modalShowState.peopleModalShowState);
  const peopleList = [
    { type: "성인", description: "만 13세 이상" },
    { type: "어린이", description: "만 2~12세" },
    { type: "유아", description: "만 2세 미만" },
  ];
  return (
    <S.PeopleModalWrapper $isShow={isShow}>
      <S.PeopleModal>
        {peopleList.map((people) => (
          <PeopleList
            key={people.type}
            type={people.type}
            description={people.description}
          />
        ))}
      </S.PeopleModal>
    </S.PeopleModalWrapper>
  );
};

export default PeopleModal;
