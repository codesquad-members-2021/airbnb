import { ReactComponent as CancelBtn } from "image/cancelBtn.svg";
import styled from "styled-components";
const CancelButton = () => {
  return (
    <CancelButtonWrap>
      <CancelBtn />
    </CancelButtonWrap>
  );
};

const CancelButtonWrap = styled.div`
  position: absolute;
  top: 2.5rem;
  right: 0;
`;

export default CancelButton;
