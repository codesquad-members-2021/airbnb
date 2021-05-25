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
  color: ${({ theme }) => theme.color.White};
  width: 3.5rem;
  height: 3.5rem;
  border-radius: 50%;
  background-color: ${({ theme }) => theme.color.Red};
  position: absolute;
  top: 0.6rem;
  right: 0.6rem;
  font-size: 1.4rem;
  border: none;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
`;
