import styled from 'styled-components';

import Title from '@components/common/Title';
import SearchButton from './SearchButton';

const SearchBar = () => {
  return (
    <SearchBarWrap>
      <div>
        <Title>체크인</Title>
        <input type="text" placeholder="날짜" />
      </div>
      <div>
        <Title>체크아웃</Title>
        <input type="text" placeholder="날짜" />
      </div>
      <div>
        <Title>요금</Title>
        <input type="text" placeholder="날짜" />
      </div>
      <div>
        <Title>인원</Title>
        <input type="text" placeholder="날짜" />
      </div>
      <SearchButton />
    </SearchBarWrap>
  );
};

export default SearchBar;

const SearchBarWrap = styled.div`
  ${({ theme }) => theme.flexCenter};
  width: 916px;
  height: 76px;
  border-radius: 60px;
  border: 1px solid ${({ theme }) => theme.color.gray4};
  background-color: ${({ theme }) => theme.color.white};
  position: relative;

  input {
    padding: 0;
    color: ${({ theme }) => theme.color.black};
    outline: 0;
    border: 0;

    &::placeholder {
      font-size: ${({ theme }) => theme.fontSize.base};
    }
  }
`;
