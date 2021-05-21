import styled from 'styled-components';

const SearchButton = () => {
  return (
    <div>
      <SearchClickBtn>
        <span></span>
        <span></span>
      </SearchClickBtn>
    </div>
  );
};

export default SearchButton;

const SearchBtnWrap = styled.div``;

const SearchClickBtn = styled.button`
  width: 90px;
  height: 42px;
  background-color: ${({ theme }) => theme.color.coral};
`;
