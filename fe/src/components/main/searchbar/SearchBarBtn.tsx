import styled from "styled-components";

import { BsSearch } from "react-icons/bs";

const SearchBarBtn = () => {
  return (
    <StyledSearchBarBtn>
      <BsSearch />
    </StyledSearchBarBtn>
  );
};

export default SearchBarBtn;

const StyledSearchBarBtn = styled.button`
  color: white;
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  background-color: #e84c60;
  position: absolute;
  top: 0.875rem;
  right: 1rem;
  font-size: 1.4rem;
  border: none;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
`;
