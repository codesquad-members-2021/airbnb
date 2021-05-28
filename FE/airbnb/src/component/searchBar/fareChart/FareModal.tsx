import styled from "styled-components";

function FareModal() {
  return <Modal></Modal>;
}

export default FareModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  left: 50%;
  width: 50%;
  padding: 60px 80px;
`;
