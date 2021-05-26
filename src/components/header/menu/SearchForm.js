import React, { useState } from "react";
import styled from "styled-components";
import { FORM_ITEM } from "../../../utils/constant";
import { ReactComponent as Submit } from "../../../assets/svg/img_search.svg";

const SearchForm = () => {
  const [isSearch, setIsSearch] = useState(true);
  return (
    <SearchFormWrapper>
      {renderFormItem("checkIn")}
      {renderFormItem("checkOut")}
      {renderFormItem("fee")}
      {renderFormItem("guest")}
      {renderButton(isSearch)}
    </SearchFormWrapper>
  );
};

const renderFormItem = (type) => {
  const { title, placeholder, size } = FORM_ITEM[type];
  return (
    <FormItem flex={size}>
      <label for={type}>
        <div>{title}</div>
        <input type="text" placeholder={placeholder} id={type} />
      </label>
    </FormItem>
  );
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
