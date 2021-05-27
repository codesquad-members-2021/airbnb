import CalendarModal from "components/SearchBar/Calendar/CalendarModal";
import styled from "styled-components";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
const Calendar = () => {
  return (
    <>
      <S.SearchBarBox _width="20%" className="check-in">
        <S.SearchBarTitle>체크인</S.SearchBarTitle>
        <S.SearchBarText>날짜 입력</S.SearchBarText>
        <CancelButton />
      </S.SearchBarBox>
      <S.SearchBarBox _width="20%" className="check-out">
        <S.SearchBarTitle>체크아웃</S.SearchBarTitle>
        <S.SearchBarText>날짜 입력</S.SearchBarText>
        <CancelButton />
      </S.SearchBarBox>
      <CalendarModal />
    </>
  );
};

export default Calendar;
