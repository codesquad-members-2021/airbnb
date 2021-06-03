import styled from "styled-components";

import { BsSearch } from "react-icons/bs";
import { Link } from "react-router-dom";
import { isHotelPage } from "atoms/searchbarAtom";
import { useRecoilValue } from "recoil";

const SearchBarBtn = () => {
  const isHotelList = useRecoilValue(isHotelPage);
  const url = "/hotel-list";
  return (
    <StyledSearchBarBtn aria-checked={isHotelList}>
      <Link to={url}>
        <BsSearch />
      </Link>
    </StyledSearchBarBtn>
  );
};

export default SearchBarBtn;

const StyledSearchBarBtn = styled.button`
  color: ${({ theme }) => theme.color.White};
  &[aria-checked="true"] {
    width: 2.5rem;
    height: 2.5rem;
    font-size: 1.2rem;
  }
  width: 3.5rem;
  height: 3.5rem;
  border-radius: 50%;
  background-color: ${({ theme }) => theme.color.Red};
  position: absolute;
  top: 0.6rem;
  right: 0.6rem;
  font-size: 1.4rem;
`;
