import { ReactComponent as CancelBtn } from "image/cancelBtn.svg";
import styled from "styled-components";
import {
  checkInState,
  checkOutState,
  roomPriceState,
  guestState,
  defaultState,
} from "recoil/Atoms";
import { useResetRecoilState } from "recoil";
const CancelButton = ({ ...props }) => {
  const getAtomByButtonType = (buttonType: string) => {
    switch (buttonType) {
      case "CHECK_IN":
        return checkInState;
      case "CHECK_OUT":
        return checkOutState;
      case "ROOM_PRICE":
        return roomPriceState;
      case "GUESTS":
        return guestState;
      default:
        console.error("Unhandled Button Type!!");
        return defaultState;
    }
  };
  const state = getAtomByButtonType(props.type);
  const resetState = useResetRecoilState(state);

  return (
    <CancelButtonWrap _right={props._right} onClick={resetState}>
      <CancelBtn />
    </CancelButtonWrap>
  );
};

type TButton = {
  _right?: number;
};
const CancelButtonWrap = styled.div`
  position: absolute;
  top: 2rem;
  right: ${(props: TButton) => (props._right ? props._right : "10%")};
`;

export default CancelButton;
