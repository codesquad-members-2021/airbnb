import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '..';
import CloseButton from '../../buttons/CloseBtn';

const People = ({ dispatch }) => {
  const { peopleCount, peopleDispatch } = useContext(SearchContext);
  const { adult, child, baby } = peopleCount;

  const peopleInputData = `${
    adult + child + baby
      ? `게스트 ${adult + child} 명 ${baby ? `유아 ${baby}명` : ''}`
      : '게스트 추가'
  }`;

  return (
    <PeopleDiv>
      <PeopleWrap onClick={() => dispatch({ type: 'PEOPLE_MODAL_OFF' })}>
        <PeopleTitle>인원</PeopleTitle>
        <PeopleInp>{peopleInputData}</PeopleInp>
      </PeopleWrap>
      {adult || child || baby ? (
        <CloseButton fn={() => peopleDispatch({ type: 'RESET' })} />
      ) : null}
    </PeopleDiv>
  );
};

const PeopleDiv = styled.div`
  display: grid;
  grid-template-columns: 1fr 1fr;
  align-items: center;
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
  width: 90px;
  height: 20px;
  color: ${({ theme }) => theme.colors.gray2};
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
`;

export default People;
