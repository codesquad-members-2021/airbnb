import styled from 'styled-components';
import Modal from '../../../../Common/Modal';
import Calendar from './Calendar';

const CalendarModal = () => {
  return (
    <CalendarModalLayout>
      {/* Calendar */}
        {[...Array(2)].map((_) => <Calendar/>)}
        {/* 여기서 버튼 이전 & 다음 눌러서 컨트롤 */}
    </CalendarModalLayout>
  );
};

export default CalendarModal;

// --- Styled Components ---
const CalendarModalLayout = styled(Modal)`
  width: 100%;
  padding: 70px 43px;
  border-radius: 40px;
  background-color: ${({ theme }) => theme.colors.white};
`;