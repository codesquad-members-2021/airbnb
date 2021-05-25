import React from "react";
import styled from "styled-components";
import CalendarBox from "./input/CalendarBox";
import SearchForm from "./SearchForm";
import SearchInput from "./SearchInput";

const onClickDay = (result) => {
  console.log(result.clickedDay);
};

const Menu = () => {
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
        <SearchForm />
        <SearchInput type="calendar">
          <CalendarBox />
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
