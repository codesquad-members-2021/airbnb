import styled from "styled-components";
import { numOfAdultsState, numOfChildrenState, numOfBabiesState } from "state/atoms/calendarAtoms";
import GuestListItem from "component/searchBar/guestList/GuestListItem";
import { stopPropagation } from "hooks/modalHooks";

const ageCategories = [
  { title: "성인", desc: "만 13세 이상", state: numOfAdultsState },
  { title: "어린이", desc: "만 2~12세", state: numOfChildrenState },
  { title: "유아", desc: "만 2세 미만", state: numOfBabiesState },
];

function GuestModal() {
  return (
    <Modal onClick={stopPropagation}>
      <GuestList>
        {ageCategories.map((ageInfo) => (
          <GuestListItem ageInfo={ageInfo} />
        ))}
      </GuestList>
    </Modal>
  );
}

export default GuestModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  right: 0;
  width: 40%;
  padding: 30px 60px;
`;
const GuestList = styled.ul``;
