import { Link } from "react-router-dom";
import styled from "styled-components";
import { ReactComponent as SearchIcon } from "assets/search.svg";

interface Props {
  size: string;
}

function SearchBtn({ size }: Props) {
  return (
    <Link to="/search">
      <SearchBtnContainer size={size}>
        <SearchIcon className="search_icon" />
        {size === "big" && <SearchText>검색</SearchText>}
      </SearchBtnContainer>
    </Link>
  );
}

export default SearchBtn;

interface searchBtnType {
  size: string;
}

const SearchBtnContainer = styled.div<searchBtnType>`
  box-sizing: border-box;
  height: 42px;
  padding: 8px;
  background-color: #e84c60;
  border-radius: ${({ theme }) => theme.borderRadius.m};

  position: absolute;
  right: 16px;
  ${({ size, theme }) => (size === "big" ? theme.bigSearchBtn : theme.miniSearchBtn)}

  display: flex;
  justify-content: space-between;
  align-items: center;
  cursor: pointer;

  .search_icon {
    path {
      stroke: #fff;
    }
  }
`;
const SearchText = styled.div`
  color: #fff;
  font-size: ${({ theme }) => theme.fontSize.l};
  font-weight: 600;
  margin: 0 8px 0 5px;
`;
