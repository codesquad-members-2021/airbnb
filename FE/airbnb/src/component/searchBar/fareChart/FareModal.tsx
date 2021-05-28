import styled from "styled-components";
import { stopPropagation } from "hooks/modalHooks";

function FareModal() {
  return <Modal onClick={stopPropagation}></Modal>;
}

export default FareModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  right: 0;
  width: 50%;
  padding: 50px 60px;
`;
