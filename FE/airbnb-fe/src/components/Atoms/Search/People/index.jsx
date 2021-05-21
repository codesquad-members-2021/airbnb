import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '..';

const People = ({ dispatch }) => {
  const { peopleCount } = useContext(SearchContext);
  const { adult, child, baby } = peopleCount;

  return (
    <PeopleDiv>
      <PeopleWrap onClick={() => dispatch({ type: 'PEOPLE' })}>
        <PeopleTitle>인원</PeopleTitle>
        <PeopleInp>
          {adult + child + baby
            ? `게스트 ${adult + child + baby} 명`
            : '게스트 추가'}
        </PeopleInp>
      </PeopleWrap>
    </PeopleDiv>
  );
};

const PeopleDiv = styled.div`
  display: grid;
  grid-template-columns: 4fr 1fr;
  padding: 0.9rem 1.5rem;
  border-radius: 3rem;
  &:hover {
    background: ${({ theme }) => theme.colors.gray6};
  }
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
