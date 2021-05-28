import { useRecoilValue } from 'recoil';
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import MonthlyCalendar from 'components/SearchBar/Calendar/MonthlyCalendar';

const CalendarModal = () => {
  const monthTypes: string[] = ["PREVIOUS", "CURRENT", "NEXT", "MONTH_AFTER_NEXT"];

  return (
    <S.CalendarModalLayout>
      <S.CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </S.CalendarSelector>
      <S.LeftArrowBtn>
        <S.RiArrowLeftSLine/>
      </S.LeftArrowBtn>
      <S.RightArrowBtn>
              <S.RiArrowRightSLine/>
            </S.RightArrowBtn>
      <S.MonthlyCalendarContainer>
      {monthTypes.map((_, idx) =>
        <MonthlyCalendar monthType={monthTypes[idx]}/>
      )}
      </S.MonthlyCalendarContainer>
    </S.CalendarModalLayout>
  );
};

export default CalendarModal;

