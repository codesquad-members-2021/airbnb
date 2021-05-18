import React from 'react';
import styled from 'styled-components';
import SearchBtn from '../SearchBtn';

const People = () => {
  return (
    <PeopleDiv>
      <PeopleWrap>
        <PeopleTitle>인원</PeopleTitle>
        <PeopleInp>게스트 추가</PeopleInp>
      </PeopleWrap>
      <SearchBtn />
    </PeopleDiv>
  );
};

const PeopleDiv = styled.div`
  display: grid;
  grid-template-columns: 4fr 1fr;
  /* justify-content: space-between; */
  padding: 0;
  border-radius: 3rem;
`;
const PeopleWrap = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
`;
const PeopleTitle = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-weight: bold;
`;
const PeopleInp = styled.div`
  color: ${({ theme }) => theme.colors.gray2};
`;

export default People;
