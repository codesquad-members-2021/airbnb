import styled from "styled-components";

type TSearchBar = {
  _width?: string;
  _overFlow?: boolean;
  _clicked?: boolean;
};

const SearchBarTitle = styled.div`
  font-size: 1.2rem;
  font-weight: bold;
  margin-bottom: 1.2rem;
`;
const SearchBarText = styled.div`
  font-size: 1.6rem;
  text-overflow: ${(props: TSearchBar) => props._overFlow && "ellipsis"};
  overflow: ${(props: TSearchBar) => props._overFlow && "hidden"};
  padding-top: 0.2rem;
  white-space: ${(props: TSearchBar) => props._overFlow && "noWrap"};
`;

const SearchBarBox = styled.div`
  position: relative;
  width: ${(props: TSearchBar) => props._width};
  padding: 1.5rem;
  padding-left: 2rem;
  &:first-child {
    padding-left: 3rem;
  }
  border-radius: 60px;
  box-shadow: ${(props: TSearchBar) =>
    props._clicked
      ? `0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05)`
      : ""};
  cursor: pointer;

  :hover {
    background-color: #f5f5f7;
  }
`;

export { SearchBarTitle, SearchBarText, SearchBarBox };
