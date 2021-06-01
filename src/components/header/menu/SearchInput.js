import React from "react";
import styled from "styled-components";

const SearchInput = ({ children }) => {
  return <SearchInputWrapper>{children}</SearchInputWrapper>;
};

const SearchInputWrapper = styled.div`
  margin-top: 1.5rem;
  width: 55rem;
  background: white;
  border-radius: 2rem;
`;

export default SearchInput;
