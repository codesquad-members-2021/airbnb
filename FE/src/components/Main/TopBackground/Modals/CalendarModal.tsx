import styled from 'styled-components';
import Modal from '../../../Common/Modal';

const CalendarModal = () => {
  const dayList: string[] = ['일', '월', '화', '수', '목', '금', '토'];
  const calendarDayItems = dayList.map((day) => (
    <CalendarDayItem>{day}</CalendarDayItem>
  ));

  return (
    <CalendarModalLayout>
      {/* 캐로셀로 감싸서 CalendarModalList 두개만들기. */}
      <CalendarList>
        {calendarDayItems}

        {Array.from({ length: 30 }, (_, i) => (
          <CalendarDateItem>{i}</CalendarDateItem>
        ))}
      </CalendarList>
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

const CalendarList = styled.ul`
  display: grid;
  grid-template-columns: repeat(7, 1fr);
  outline: 1px solid black;
`;

const CalendarItem = styled.li`
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: ${({ theme }) => theme.fontSize.S};
`;

const CalendarDayItem = styled(CalendarItem)`
  padding: 0 12px;
  color: ${({ theme }) => theme.colors.gray3};
`;

const CalendarDateItem = styled(CalendarItem)`
  padding: 12px;
  font-weight: ${({ theme }) => theme.fontWeight.bold};
`;