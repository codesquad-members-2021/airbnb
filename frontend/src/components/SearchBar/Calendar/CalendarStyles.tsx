import styled from "styled-components";
import { RiArrowLeftSLine } from "react-icons/ri";
import { RiArrowRightSLine } from "react-icons/ri";

const CalendarModalLayout = styled.div`
  position: absolute; //relative는 SearchBarLayout 입니다
  top: 100%;
  width: 100%;
  right: 0;
  left: 0;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
`;

const CalendarSelector = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;

  & > div {
    background-color: #e6e6e6;
    border-radius: 100px;
    margin-top: 1.6rem;
    & > button {
      border-radius: 100px;
      border: none;
      font-size: 1.3rem;
      font-weight: 600;
      line-height: 1.8rem;
      font-weight: 600;
      background: #fff;
      color: rgb(34, 34, 34);
      padding: 3px 14px;
      margin: 4px 6px;
      outline: none;
      cursor: pointer;
      &:last-child {
        background-color: #e6e6e6;
        font-weight: 600;
        &:hover {
          background-color: #fff;
          transition: background-color 0.4s;
        }
        &:not(hover) {
          transition: background-color 0.2s;
        }
      }
    }
  }
`;

const CalendarLayout = styled.div`
  padding: 2.5rem;
  font-size: 1.6rem;
  font-weight: 600;

  .title-container {
    width: 100%;
  }
`;

const LeftArrowBtn = styled.button`
  position: absolute;
  left: 3rem;
  top: 2rem;
  width: 3rem;
  height: 3rem;
  border: none;
  border-radius: 99px;
  background-color: #fff;
  cursor: pointer;

  &:hover {
    background-color: rgb(247, 247, 247);
  }
  & > svg {
    height: 2.5rem;
    width: 2.5rem;
  }
`;

const RightArrowBtn = styled.button`
  position: absolute;
  right: 3rem;
  top: 2rem;
  width: 3rem;
  height: 3rem;
  border: none;
  border-radius: 99px;
  background-color: #fff;
  cursor: pointer;

  &:hover {
    background-color: rgb(247, 247, 247);
  }

  & > svg {
    height: 2.5rem;
    width: 2.5rem;
  }
`;

const CurrentMonth = styled.div`
  .calendar-container {
    width: 100%;
  }

  &:first-child {
    position: relative;
    display: flex;
    align-items: center;
  }

  .year_and_month {
    padding-top: 0.5rem;
    margin: 0 auto;
    width: auto;
    text-align: center;
    height: 2rem;
  }

  .days {
    width: 100%;
    font-weight: 300;
    font-size: 1.2rem;
    display: grid;
    grid-template-columns: repeat(7, 1fr);

    & > span {
      justify-content: center;
      display: flex;
      align-items: center;
      height: 2em;
      padding: 0.5rem 1rem;
    }
  }

  .dates {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    justify-items: center;
    cursor: pointer;

    .invalid-date {
      color: #bdbdbd;
      pointer-events: none;
    }
    .clickedDate {
      background-color: black;
      color: white;
      border-radius: 50px;
    }

    & > div {
      // 달력 개별 일자
      height: 4.8rem;
      width: 4.8rem;
      text-align: center;
      line-height: 4.8rem; // hight와 같게하여 수직 정렬하였음
      font-size: 1.3rem;
      font-weight: bold;
      border: 1px solid white;
      &:hover {
        height: 4.8rem;
        width: 4.8rem;
        border: 1px black solid;
        border-radius: 50px;
      }
    }
  }
`;

type TCalendarContainer = {
  _translate: number;
  flag: boolean;
};

const MonthlyCalendarContainer = styled.div`
  //각 달의 달력들을 가로로 쭈욱 가지고 있는 애
  display: grid;
  width: 200%;
  grid-template-columns: repeat(4, 1fr);
  transform: translateX(${(props: TCalendarContainer) => props._translate}%);
  transition: ${(props: TCalendarContainer) => props.flag && "transform 0.5s"};
`;

export {
  CalendarModalLayout,
  CalendarSelector,
  CalendarLayout,
  LeftArrowBtn,
  RightArrowBtn,
  CurrentMonth,
  RiArrowLeftSLine,
  RiArrowRightSLine,
  MonthlyCalendarContainer,
};
