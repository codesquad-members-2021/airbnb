import styled from "styled-components";

const Calendar = () => {
  return (
    <>
      <CalendarLayout>
        <DateBox className="check-in">
          <SearchBarTitle>체크인</SearchBarTitle>
          <SearchBarText>날짜입력</SearchBarText>
        </DateBox>
        <DateBox className="check-out">
          <SearchBarTitle>체크아웃</SearchBarTitle>
          <SearchBarText>날짜입력</SearchBarText>
        </DateBox>
      </CalendarLayout>
      <CalendarModal />
    </>
  );
};

const SearchBarTitle = styled.div`
  /* font-size: 1.2rem; */
  font-size: 12px;
  font-weight: bold;
  margin-bottom: 10%;
`;
const SearchBarText = styled.div`
  /* font-size: 1.6rem; */
  font-size: 16px;
`;
const CalendarModal = styled.div`
  position: absolute;
  top: 120%;
  width: 916px;
  height: 512px;
  background: #ffffff;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

const DateBox = styled.div`
  outline: blue 1px solid;
  padding: 5%;
  width: 40%;
  text-align: center;
  border: 1px gray solid;
`;

const CalendarLayout = styled.div`
  display: flex;
  justify-content: space-between;
  outline: red 1px solid;
  width: 40%;

  position: relative;
`;

export default Calendar;
