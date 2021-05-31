import styled from 'styled-components';
import Modal from '../../../Common/Modal';

const PeopleModal = ({...props}) => {
  return (
    <PeopleModalLayout {...props}>
    </PeopleModalLayout>
  );
};

export default PeopleModal;

// --- Styled Components ---
const PeopleModalLayout = styled(Modal)`
`;
