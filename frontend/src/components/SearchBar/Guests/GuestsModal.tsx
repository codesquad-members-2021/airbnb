import { CalendarModalLayout } from "components/SearchBar/Calendar/CalendarStyles";
import React from "react";
import styled from "styled-components";
import { guestsClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { ReactComponent as Plus } from 'image/plus.svg';
import { ReactComponent as Minus } from 'image/minus.svg';

function GuestsModal() {
  const isClicked = useRecoilValue(guestsClickState);
  return isClicked
  ? <ModalLayout>
      <div className="guest-container">
        <div className="guest-type">
          <div className="left-container">
            <div>성인</div>
            <div>만 13세 이상</div>
          </div>
          <div className="right-container">
            <button><Minus/></button>
            <span className="guest-count">0</span>
            <button><Plus/></button>
          </div>
        </div>
        <div className="guest-type">
          <div className="left-container">
            <div>어린이</div>
            <div>만 2 ~ 12세</div>
          </div>
          <div className="right-container">
            <button><Minus/></button>
            <span className="guest-count">0</span>
            <button><Plus/></button>
          </div>
        </div>
        <div className="guest-type">
          <div className="left-container">
            <div>유아</div>
            <div>만 2세 미만</div>
          </div>
          <div className="right-container">
            <button><Minus/></button>
            <span className="guest-count">0</span>
            <button><Plus/></button>
          </div>
        </div>
      </div>
    </ModalLayout>
  : <></>;
}

const ModalLayout = styled.div`
  position: absolute; //relative는 SearchBarLayout 입니다
  top: 100%;
  width: 30rem;
  /* height: ; */
  right: 0;
  z-index: 1;
  overflow: hidden;
  margin-top: 1.2rem;
  background: #ffffff;
  box-shadow: rgb(0 0 0 / 20%) 0px 6px 20px;
  border-radius: 40px;
  display: flex;
  align-items: center;
  flex-direction: column;

  .guest-container {
    width: 80%;
    margin: 2rem;

    .guest-type {
      display: flex;
      margin: 1.5rem 0;
      padding-bottom: 1.5rem;
      &:not(:last-child){
        border-bottom: 1px solid #aeabab62;
      }
      &:last-child {
        padding-bottom: 0;
      }

      & > div {
        width: 50%;
        & > button {
          background: transparent;
          border: none;
          cursor: pointer;
        }
      }
    }

    .left-container {
      display: flex;
      flex-direction: column;
      font-size: 1.3rem;
      & > div {
        padding: 0.3rem;
      }
      div:first-child {
        font-size: 1.3rem;
        font-weight: 600;
      }
      div:last-child {
        color: #61606081;
      }
    }

    .right-container {
      display: flex;
      align-items: center;
      text-align: right;
      justify-content: flex-end;

      .guest-count {
        font-size: 1.5rem;
        font-weight: 600;
      }
    }
  }
`;
export default GuestsModal;
