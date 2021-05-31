import React, { useReducer, useState } from "react";
import styled from "styled-components";
import SearchForm from "./SearchForm";
import SearchInput from "./SearchInput";
import Calendar, { Controller } from "../../../lib/calendar/Calendar";
const formReducer = (state, action) => {
  switch (action.type) {
    case "SET_TYPE":
      return { ...state, inputType: action.inputType };
    case "SET_CHECK_IN":
      return { ...state, checkIn: action.checkIn };
    case "SET_CHECK_OUT":
      return { ...state, checkOut: action.checkOut };
    case "SET_PRICE":
      return { ...state, price: action.price };
    case "SET_GUEST":
      return { ...state, guest: action.guest };
  }
};
const Menu = () => {
  const [formState, dispatch] = useReducer(formReducer, {
    inputType: "none",
    checkIn: {
      year: null,
      month: null,
      day: null,
    },
    checkOut: {
      year: null,
      month: null,
      day: null,
    },
    price: 0,
    guest: {
      adult: 0,
      child: 0,
      infant: 0,
    },
  });
  const { inputType, checkIn, checkOut } = formState;
  const onClickDay = (result) => {
    const { nextClickTarget, startDate, endDate } = result;
    dispatch({
      type: "SET_CHECK_IN",
      checkIn: startDate
        ? startDate
        : {
            year: null,
            month: null,
            day: null,
          },
    });
    dispatch({
      type: "SET_CHECK_OUT",
      checkOut: endDate
        ? endDate
        : {
            year: null,
            month: null,
            day: null,
          },
    });
    if (nextClickTarget === "start") {
      dispatch({ type: "SET_TYPE", inputType: "checkIn" });
    } else if (nextClickTarget === "end") {
      dispatch({ type: "SET_TYPE", inputType: "checkOut" });
    }
  };

  return (
    <MenuWrapper>
      <form>
        <fieldset>
          <MenuSelector>
            <Selector>
              <label for="STAYS">
                <input type="radio" id="STAYS" name="searchType" />
                <span>숙소</span>
              </label>
            </Selector>
            <Selector>
              <label for="EXPERIENCES">
                <input type="radio" id="EXPERIENCES" name="searchType" />
                <span>체험</span>
              </label>
            </Selector>
            <Selector>
              <a href="">
                <span>온라인 체험</span>
              </a>
            </Selector>
          </MenuSelector>
        </fieldset>
        <SearchForm {...{ Controller, formState, dispatch }} />
        <SearchInput type="calendar">
          {(inputType === "checkIn" || inputType === "checkOut") && (
            <Calendar onClickDay={onClickDay} start={checkIn} end={checkOut} />
          )}
        </SearchInput>
      </form>
    </MenuWrapper>
  );
};

const MenuWrapper = styled.div`
  & > form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
`;
const MenuSelector = styled.ul`
  display: flex;
`;
const Selector = styled.li`
  & + & {
    margin-left: 1rem;
  }
  & > label {
    cursor: pointer;
  }
  & > label > input[type="radio"] {
    position: absolute;
    width: 0;
  }
`;
export default Menu;
