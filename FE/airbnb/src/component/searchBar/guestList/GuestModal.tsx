import styled from "styled-components";

function GuestModal() {
  return <Modal></Modal>;
}

export default GuestModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  left: 50%;
  width: 50%;
  padding: 60px 80px;
`;
