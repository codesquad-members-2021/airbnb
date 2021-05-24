import styled from "styled-components";

const Calendar = () => {
  return (
    <>
      <CalendarLayout></CalendarLayout>
      <CalendarModal />
    </>
  );
};

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

const CalendarLayout = styled.div`
  display: flex;
  justify-content: space-between;
  outline: red 1px solid;
  width: 40%;

  position: relative;
`;

export default Calendar;
