import styled from "styled-components";

type TSearchBarBox = {
  _width: string;
};

const SearchBarTitle = styled.div`
  font-size: 1.2rem;
  font-weight: bold;
  margin-bottom: 1.6rem;
  padding: 0 10%;
`;
const SearchBarText = styled.div`
  padding: 0 10%;
  font-size: 1.6rem;
`;

const SearchBarBox = styled.div`
  position: relative;
  width: ${(props: TSearchBarBox) => props._width};
  padding: 1.5rem 2rem;
  border-radius: 60px;
  :hover {
    background-color: #f5f5f7;
  }
`;

export { SearchBarTitle, SearchBarText, SearchBarBox };
