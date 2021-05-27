import { useRecoilValue } from "recoil";
import { modalShowState } from "@/Components/GNB/GNBStore";
import { PeopleModal as S } from "@/Components/GNB/GNBStlyes";

const PeopleModal = () => {
  const isShow = useRecoilValue(modalShowState.peopleModalShowState);
  return (
    <S.PeopleModalWrapper $isShow={isShow}>
      <S.PeopleModal>인원 모달</S.PeopleModal>
    </S.PeopleModalWrapper>
  );
};

export default PeopleModal;
