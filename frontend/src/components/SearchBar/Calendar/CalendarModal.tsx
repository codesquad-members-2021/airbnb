import { useState } from 'react';
import { useRecoilValue, useSetRecoilState,useRecoilState } from 'recoil';
import { calendarModalState,clickCountState } from 'recoil/Atoms';
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import MonthlyCalendar from 'components/SearchBar/Calendar/MonthlyCalendar';

const CalendarModal = () => {
  const monthTypes: string[] = ["PREVIOUS", "CURRENT", "NEXT", "MONTH_AFTER_NEXT"];
  const [currentMonth,setCurrentMonth] = useRecoilState
  (calendarModalState)
  const{year,month,today} = currentMonth
  const [locationX, setLocationX] = useState(-25);
  const [direction,setdirection] = useState("")
  const [transitionFlag, setTransitionFlag] = useState(false)
  const [clickCount, setClickCount] = useRecoilState(clickCountState)
  const moveCalendarContainer = (dir:string) => { //click event
    console.log("click evt")
    if (dir === "R") {
      setdirection("R")
      setLocationX(-50)  //
      setClickCount(clickCount +1)
     
    } else {
      
      setdirection("L")
      setLocationX(0);
      setClickCount(clickCount -1)   
    }
    setTransitionFlag(true);
    //1. 왼쪽이면 : +25% 오른쪽이면  -25%
  }


  const updateCalendar = () => { //trainsition end
    console.log("transition evt")
    if(direction === "R"){
      setLocationX(-25); //제 자리로 이동
      console.log(transitionFlag)

      if(transitionFlag) {setCurrentMonth({...currentMonth,year:new Date(year,currentMonth.month+1).getFullYear(), month:new Date(year,currentMonth.month+1).getMonth()})}
      setTransitionFlag(false)

      
    }else{
      setLocationX(-25); //제 자리로 이동
      console.log(transitionFlag)
      if(transitionFlag) {setCurrentMonth({...currentMonth,year:new Date(year,currentMonth.month-1).getFullYear(),month:new Date(year,currentMonth.month-1).getMonth()})}
      setTransitionFlag(false)
     
    }
   
  }

  return (
    <S.CalendarModalLayout>
      <S.CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </S.CalendarSelector>
      <S.LeftArrowBtn onClick={()=>moveCalendarContainer("L")}>
        <S.RiArrowLeftSLine/>
      </S.LeftArrowBtn>
      <S.RightArrowBtn onClick={() => moveCalendarContainer("R")}>
        <S.RiArrowRightSLine/>
      </S.RightArrowBtn>
      <S.MonthlyCalendarContainer _translate={locationX} flag = {transitionFlag}  onTransitionEnd={updateCalendar}>
      {monthTypes.map((_, idx) =>
        <MonthlyCalendar monthType={monthTypes[idx]}/>
      )}
      </S.MonthlyCalendarContainer>
    </S.CalendarModalLayout>
  );
};

export default CalendarModal;

