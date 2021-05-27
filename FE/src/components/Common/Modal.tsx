import styled from 'styled-components';
import { ICustomProps } from '../../util/types';

const Modal = ({ children, ...props }: ICustomProps) => (
  <ModalLayout {...props}>
    {children || (
      <SampleContentBlock>
        <p className="large">Modal</p>
        <p>Please write the content!</p>
        <p className="close">Close plz..</p>
      </SampleContentBlock>
    )}
  </ModalLayout>
);

export default Modal;

// --- Styled Components ---
const ModalLayout = styled.div`
  display: flex;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;

// (children 없을 경우 사용)
const SampleContentBlock = styled.div`
  padding: 48px;
  background-color: #fff;
  border-radius: 5px;
  font-size: 18px;

  p.large {
    font-size: 2rem;
  }

  p.close {
    color: #5c5b5b;
    font-size: 14px;
  }

  p + p {
    margin-top: 8px;
  }
`;
