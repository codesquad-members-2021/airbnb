import React, { useState } from "react";
import styled, { css } from "styled-components";
import { FORM_ITEM } from "../../../utils/constant";
import { ReactComponent as Submit } from "../../../assets/svg/img_search.svg";

const SearchForm = ({ Controller, formState, dispatch }) => {
  const [isSearch, setIsSearch] = useState(true);
  const { inputType, checkIn, checkOut, price, guest } = formState;
  return (
    <SearchFormWrapper>
      <Controller start>
        {renderFormItem("checkIn", inputType, dispatch, checkIn)}
      </Controller>
      <Controller end>
        {" "}
        {renderFormItem("checkOut", inputType, dispatch, checkOut)}
      </Controller>
      {renderFormItem("price", inputType, dispatch, price)}
      {renderFormItem("guest", inputType, dispatch, guest)}
      {renderButton(isSearch)}
    </SearchFormWrapper>
  );
};

const renderFormItem = (type, inputType, dispatch, value) => {
  const { title, placeholder, size } = FORM_ITEM[type];
  const isSelected = inputType === type;
  return (
    <FormItem
      flex={size}
      isSelected={isSelected}
      onClick={() => {
        dispatch({ type: "SET_TYPE", inputType: type });
      }}
    >
      <label for={type}>
        <div>{title}</div>
        <input
          type="text"
          placeholder={placeholder}
          id={type}
          value={getValue(type, value)}
        />
      </label>
    </FormItem>
  );
};
const getValue = (type, value) => {
  if (type === "checkIn" || type === "checkOut") {
    if (!value.year) return "";
    const { month, day } = value;
    return `${month}월 ${day}일`;
  } else if (type === "price") {
    return value === 0 ? "" : value;
  } else if (type === "guest") {
    const { adult, child, infant } = value;
    const total = adult + child + infant;
    return total === 0 ? "" : `게스트 ${total}명`;
  }
};
const renderButton = (isSearch) => {
  return (
    <SubmitButton>
      <Submit fill="#E84C60" width="25" height="25" />
      {isSearch && <div>검색</div>}
    </SubmitButton>
  );
};
const SubmitButton = styled.button`
  position: absolute;
  right: 1rem;
  background: #e84c60;
  border-radius: 3rem;
  display: flex;
  align-items: center;
  padding: 0.5rem 1rem;

  & > div {
    color: white;
    margin-left: 0.5rem;
    font-weight: bold;
  }
`;
const SearchFormWrapper = styled.div`
  position: relative;
  width: 55rem;
  display: flex;
  align-items: center;
  background: white;
  border-radius: 2rem;
  height: 4rem;
  margin-top: 3rem;
`;
const FormItem = styled.div`
  box-sizing: border-box;
  display: flex;
  align-items: center;
  height: 100%;
  border-radius: 2rem;
  ${({ isSelected }) =>
    isSelected &&
    css`
      background: silver;
    `}
  flex: ${({ flex }) => flex};
  &:hover {
    background: #e0e0e0;
  }
  & > label {
    padding: 0 2rem;
  }
  & > label > div {
    font-size: 0.8rem;
    font-weight: bold;
    margin-bottom: 0.5rem;
  }
  & > label > input[type="radio"] {
    position: absolute;
    width: 0;
    font-size: 0.8rem;
  }
  & + &::before {
    content: "";
    height: 60%;
    width: 1px;
    border-left: 1px solid #e0e0e0;
  }
`;
export default SearchForm;
