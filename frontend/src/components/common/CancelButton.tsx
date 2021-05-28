import { ReactComponent as CancelBtn } from "image/cancelBtn.svg";
import styled from "styled-components";

const CancelButton = ({ ...props }) => {
  return (
    <CancelButtonWrap _right={props._right}>
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
