import styled from 'styled-components';
import Calendar from './Calendar';

const Modal = () => {
  return (
    <ModalWrapper>
      <Calendar />
    </ModalWrapper>
  )
}

const ModalWrapper = styled.div`
   width: 70%;
   margin:auto;
`;

export default Modal;
