import styled from 'styled-components';
import Modal from '../../../../Common/Modal';

const FeeModal = ({...props}) => {
  return (
    <FeeModalLayout {...props}>
    </FeeModalLayout>
  );
};

export default FeeModal;

// --- Styled Components ---
const FeeModalLayout = styled(Modal)`
`;
