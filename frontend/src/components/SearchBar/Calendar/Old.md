export {};
/*
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import moment, { Moment } from "moment";
import 'moment/locale/ko';
moment.locale('ko');

const CalendarModal = () => {
  const value = moment(); //현재 날짜값 가져오기
  const startDay = value.clone().startOf("month").startOf("week");//clone을 해주는 이유 = 원본 now Date를 보존하기 위해.
  const endDay = value.clone().endOf("month").endOf("week");
  const day = startDay.clone().subtract(1, "day"); //시작일에서 하루 빼기
  const calendar:Array<Moment[]> = [];

  //들어오는 day 값이 endDay 이전 값인지 체크.
  const createCalendar = () => {
    while(day.isBefore(endDay, "day")) {
      calendar.push(Array(7).fill(0).map(() => day.add(1, "day").clone()));
    }
    //format()을 하면 moment 객체에서 string으로 바꿔줌.
    //[[1, 2, 3, 4, 5, 6, 7], [8, 9, 10, 11, 12, 13, 14], [],,]
    return calendar.map(week =>
      <div className="calendar">
        {week.map((day) => {
          <div>{day.format("D").toString()}</div>
      })}
      </div>
    )
  }

  console.log(startDay.format("D").toString(), endDay.format("D").toString(), day.format("D").toString());

  return (
    <S.CalendarModalLayout>
      <S.CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </S.CalendarSelector>
      <S.CalendarLayout>
        <S.CurrentMonth>
          <div>
            <S.LeftArrowBtn>
              <S.RiArrowLeftSLine/>
            </S.LeftArrowBtn>
            <div className="year_and_month">{startDay.format("YYYY")}년 {startDay.format("MM")}월</div>
          </div>
        </S.CurrentMonth>
        <S.NextMonth>
          <div>
            <div className="year_and_month">{endDay.format("YYYY")}년 {endDay.format("MM")}월</div>
            <S.RightArrowBtn>
              <S.RiArrowRightSLine/>
            </S.RightArrowBtn>
          </div>
        </S.NextMonth>
      </S.CalendarLayout>
    </S.CalendarModalLayout>
  );
};

export default CalendarModal;

*/