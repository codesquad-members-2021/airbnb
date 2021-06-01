import styled from "styled-components";
import { useState } from 'react';
import { guestsClickState, guestState, searchBarClickState } from "recoil/Atoms";
import { GuestsState } from 'recoil/AtomTypes';
import { useRecoilValue, useRecoilState } from "recoil";
import { ModalLayout, MinusButton, PlusButton } from 'components/SearchBar/Guests/GuestStyles';
import { ReactComponent as Plus } from 'image/plus.svg';
import { ReactComponent as Minus } from 'image/minus.svg';

function GuestsModal() {
  const isClicked = useRecoilValue(guestsClickState); //모달창 추가여부를 결정하는 상태
  const [ guests, setGuests ] = useRecoilState(guestState);
  const guestTypes = ["adult", "child", "toddler"];
  const restriction = ["만 13세 이상", "만 2 ~ 12세", "만 2세 미만"];

  const convertToKR = (str: string) => {
    switch (str) {
      case "adult" : return "성인";
      case "child" : return "어린이";
      case "toddler" : return "유아";
    }
  }

  const checkGuestNum = (guestType: keyof GuestsState) => {
    return guests[guestType] ? guests[guestType] : 0;
  }

  const handleMinusBtnClick = (guestType: keyof GuestsState) => {
    if (guestType === 'adult' && guests[guestType] === 1 && (guests.child || guests.toddler)) return;
    if (guests[guestType] > 0) {
      setGuests({
        ...guests,
        [guestType]: guests[guestType] - 1
      })
    }
  }

  const handlePlusBtnClick = (guestType: keyof GuestsState) => {
    //최대값이 있을 경우 여기에 추가
    if(guests.adult === 0 && guestType !== 'adult') {
      setGuests({
        ...guests,
        adult: 1,
        [guestType]: guests[guestType] + 1
      })
    } else {
      setGuests({
        ...guests,
        [guestType]: guests[guestType] + 1
      })
    }
  }

  return isClicked
  ? <ModalLayout>
      <div className="guest-container">
    {guestTypes.map((type, idx) => {
      return (
      <div className="guest-type" key={type}>
        <div className="left-container">
          <div>{convertToKR(type)}</div>
          <div>{restriction[idx]}</div>
        </div>
        <div className="right-container">
          <MinusButton onClick={() => handleMinusBtnClick(type)} disabled={guests[type] === 0}><Minus /></MinusButton>
          <span className="guest-count">
            {checkGuestNum(type)}
          </span>
          <PlusButton onClick={() => handlePlusBtnClick(type)} disabled={guests[type] >= 5}><Plus/></PlusButton>
        </div>
      </div>
    )})}
      </div>
    </ModalLayout>
  : <></>;
}

export default GuestsModal;
