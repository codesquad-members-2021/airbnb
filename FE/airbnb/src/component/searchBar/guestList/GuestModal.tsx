import styled from "styled-components";
import { numOfAdultsState, numOfChildrenState, numOfBabiesState } from "state/atoms/guestAtoms";
import GuestListItem from "component/searchBar/guestList/GuestListItem";
import { stopPropagation } from "component/searchBar/modalFunctions";

const ageCategories = [
  { title: "성인", desc: "만 13세 이상", state: numOfAdultsState },
  { title: "어린이", desc: "만 2~12세", state: numOfChildrenState },
  { title: "유아", desc: "만 2세 미만", state: numOfBabiesState },
];

function GuestModal() {
  return (
    <Modal onClick={stopPropagation}>
      <ul>
        {ageCategories.map((ageInfo) => (
          <GuestListItem key={ageInfo.title} ageInfo={ageInfo} />
        ))}
      </ul>
    </Modal>
  );
}

export default GuestModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  border: 1px solid #eee;
  right: 0;
  width: 365px;
  padding: 30px 60px;
`;
