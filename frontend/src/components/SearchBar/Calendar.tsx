import styled from "styled-components";
const Calendar = () => {
  return <CalendarLayout></CalendarLayout>;
};

const CalendarLayout = styled.div`
  position: absolute;
  width: 916px;
  height: 512px;

  /* White */

  background: #ffffff;
  /* up2 */

  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;

export default Calendar;
