import styled from "styled-components";
import moment from "moment";

const Calendar = () => {
  const startDay = moment().startOf("month").startOf("week");
  console.log(startDay);

  return (
    <CalendarModal>
      <CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </CalendarSelector>
      <CalendarLayout>
      </CalendarLayout>
    </CalendarModal>
  );
};


const CalendarModal = styled.div`
  position: absolute;
  right: 0;
  left: 0;
  top: 100%;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  /* height: 512px; */
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  padding: 16px 32px;
`;

const CalendarSelector = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;

  & > div {
    background-color: #e6e6e6;
    border-radius: 100px;
    margin-top: 1rem;
    & > button {
      border-radius: 100px;
      border: none;
      font-size: 0.9rem;
      line-height: 1.8rem;
      font-weight: 400;
      background: #fff;
      color: rgb(34, 34, 34);
      padding: 3px 14px;
      margin: 4px 6px;
      outline: none;
      cursor: pointer;
      &:last-child {
        background-color: #e6e6e6;
        &:hover {
          background-color: #fff;
          transition: background-color 0.4s;
        }
      }
    }
  }
`

const CalendarLayout = styled.div`
  border: 1px solid red;
`

export default Calendar;
