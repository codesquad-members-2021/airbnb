import styled from "styled-components";

import { BsSearch } from "react-icons/bs";
import { Link } from "react-router-dom";


const SearchBarBtn = () => {
 

  const url = "/hotel-list" ;
  return (
    <StyledSearchBarBtn>
      <Link to={url}>
        <BsSearch />
      </Link>
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
`;
