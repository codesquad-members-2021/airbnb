import styled from "styled-components";
import moment from "moment";
import 'moment/locale/ko';
moment.locale('ko');

const Calendar = () => {
  const value = moment().clone(); //clone을 해주는 이유 = 오리지날 Date 객체를 보존하기 위해.
  const startDay = value.startOf("month").startOf("week");
  const endDay = value.endOf("month").endOf("week");
  const day = startDay.clone().subtract(1, "day");
  // const calendar = [];

  // const createCalendar = () => {
  //   while(day.isBefore(endDay, "day")) {
  //     calendar.push(Array(7).fill(0).map(() => day.add(1, "day").clone()));
  //   }

  //   return calendar.map(week => 
  //     <div className="calendar">
  //       {week.map((day) => {
  //         <div>{day.format("D").toString()}</div>
  //     })}
  //     </div>
  //   )
  // }


  console.log(startDay, endDay, day);

  return (
    <CalendarModal>
      <CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </CalendarSelector>
      <CalendarLayout>
        {startDay.format("MM/YY")} - {endDay.format("MM/YY")}
      </CalendarLayout>
    </CalendarModal>
  );
};


const CalendarModal = styled.div`
  width: 100%;
  right: 0;
  left: 0;
  top: 100%;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
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
  width: 90%;
  margin: 1rem;
  padding: 1.5rem;

  .calendar {}
`

export default Calendar;
