import styled from "styled-components";
import { RiArrowLeftSLine } from 'react-icons/ri';
import { RiArrowRightSLine } from 'react-icons/ri';

const CalendarModalLayout = styled.div`
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
  width: 90%;
  margin: 1rem;
  padding: 1.5rem;
  font-size: 1rem;
  font-weight: 600;
  display: flex;

  .calendar {}
`

const LeftArrowBtn = styled.button`
  position: absolute;
  left:0;
  top: 0;
  width: 2rem;
  height: 2rem;
  border: none;
  border-radius: 99px;
  background-color: #fff;

  &:hover{
    background-color: rgb(247, 247, 247);
  }

  & > svg {
    height: 1.2rem;
    width: 1.2rem;
  }
`

const RightArrowBtn = styled.button`
  position: absolute;
  right: 0;
  top: 0;
  width: 2rem;
  height: 2rem;
  border: none;
  border-radius: 99px;
  background-color: #fff;

  &:hover{
    background-color: rgb(247, 247, 247);
  }

  & > svg {
    height: 1.2rem;
    width: 1.2rem;
  }
`

const CurrentMonth = styled.div`
  display: flex;
  border: 1px solid green;
  width: 50%;
  text-align: center;
  flex-direction: column;

    &:first-child {
        position: relative;
        display: flex;
        border: 1px solid pink;
        align-items: center;
    }

  .year_and_month {
    padding-top: 0.5rem;
    margin: 0 auto;
    width: auto;
    height: 2rem;
  }
`

const NextMonth = styled.div`
  display: flex;
  border: 1px solid green;
  width: 50%;
  text-align: center;
  flex-direction: column;

  &:last-child {
        position: relative;
        display: flex;
        border: 1px solid pink;
        align-items: center;
    }

  .year_and_month {
    padding-top: 0.5rem;
    margin: 0 auto;
    width: auto;
    height: 2rem;
  }
`
const CalendarMatrix = styled.div`
  border: 1px solid blue;
  width: 100%;
`

export { CalendarModalLayout, CalendarSelector, CalendarLayout, LeftArrowBtn, RightArrowBtn, CurrentMonth, NextMonth, CalendarMatrix, RiArrowLeftSLine, RiArrowRightSLine };

